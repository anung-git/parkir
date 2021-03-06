#include "8052.h"
#define true 1
#define false 0
#define DS1307_ID 0xD0
#define SDA P3_2			/* Set P2.7 = SDA */
#define SCL P3_3			/* Set P2.6 = SCL */
#define I2C_DELAY 0x0F			/* For delay i2c bus */
#define input_a	P0_6
#define out P2_0
__bit work_flag_buffer_transfered;
__bit tx_serial_buffer_empty;

volatile unsigned char  stx_index_in, stx_index_out;
volatile unsigned char  stx_buffer[30];
volatile unsigned char  bufer[20];
volatile unsigned char  count=0;
volatile unsigned char  complit=0;
unsigned char counter[9];
const unsigned  char open1[] = {'*','O','P','E','N','1','#'};
const unsigned char out1on[] = {'*','O','U','T','1','O','N','#'};
const unsigned char out1off[] = {'*','O','U','T','1','O','F','F','#'};
const unsigned char ping[] = {'*','P','I','N','G','#'};
const unsigned char stat[] = {'*','S','T','A','T','#'};
const unsigned char resetctr[] = {'*','R','E','S','E','T','C','T','R','#'};
const unsigned char readctr[] = {'*','R','E','A','D','C','T','R','#'};
const unsigned char editctr[] = {'*','E','D','I','T','C','T','R'};

void I2C_delay(void){
	unsigned char  t;
	for(t=0;t<I2C_DELAY;t++);
}
void I2C_clock(void){
	I2C_delay();
	SCL = 1;			/* Start clock */
	I2C_delay();
	SCL = 0;			/* Clear SCL */
}
void I2C_start(void){
	if(SCL) SCL = 0;			/* Clear SCL */
	SDA = 1;        		/* Set SDA */
	SCL = 1;			/* Set SCL */
	I2C_delay();
	SDA = 0;        		/* Clear SDA */
	I2C_delay();
	SCL = 0;        		/* Clear SCL */
}
void I2C_stop(void){
	if(SCL)	
	SCL = 0;			/* Clear SCL */
	SDA = 0;			/* Clear SDA */
	I2C_delay();
	SCL = 1;			/* Set SCL */
	I2C_delay();
	SDA = 1;			/* Set SDA */
}
void I2C_write(unsigned char dat){
	__bit data_bit;
	unsigned char i;
	for(i=0;i<8;i++)				/* For loop 8 time(send data 1 byte)*/
	{
		data_bit = dat & 0x80;			/* Filter MSB bit keep to data_bit */
		SDA = data_bit;				/* Send data_bit to SDA */
		I2C_clock();      			/* Call for send data to i2c bus */
		dat = dat<<1;
	}
	SDA = 1;			/* Set SDA */
	I2C_delay();
	SCL = 1;			/* Set SCL */
	I2C_delay();
	data_bit = SDA;   		/* Check acknowledge */
	SCL = 0;			/* Clear SCL */
	I2C_delay();
}
unsigned char I2C_read(void){
	__bit rd_bit;
	unsigned char i, dat;
	dat = 0x00;
	for(i=0;i<8;i++)			/* For loop read data 1 byte */
	{
		I2C_delay();
		SCL = 1;			/* Set SCL */
		I2C_delay();
		rd_bit = SDA;			/* Keep for check acknowledge	*/
		dat = dat<<1;
		dat = dat | rd_bit;		/* Keep bit data in dat */
		SCL = 0;			/* Clear SCL */
	}
	return dat;
}
void I2C_ack()
{
	SDA = 0;		/* Clear SDA */
	I2C_delay();
	I2C_clock();		/* Call for send data to i2c bus */
	SDA = 1;		/* Set SDA */
}
void I2C_nack()
{
	SDA = 1;		/* Set SDA */
	I2C_delay();
	I2C_clock();		/* Call for send data to i2c bus */
	SCL = 1;		/* Set SCL */
}

void serial_init(void){
	TMOD=0X20;
	PCON=0;
	SM0=0;
	SM1=1;
	TR1=1;
	TH1=0XFD;
	TL1=0XFD;
	REN=1;
	RI = 0;
	TI = 0;
	stx_index_in = stx_index_out = 0;
	tx_serial_buffer_empty = 1;
	work_flag_buffer_transfered = 0;
	ES=1;
	EA=1;
}
void serial_interrupt_handler(void) __interrupt 4 __using 2{
	unsigned char ser;
	ES=0;
	if(RI){
		RI=0;
		ser=SBUF;
		if(ser=='*')count=0;
		if(ser=='#')complit=1;
		bufer[count]=ser;
		count++;
		if(count>18)count=0;
	}
	if(TI){
		TI=0;
		if(stx_index_out==stx_index_in){
			tx_serial_buffer_empty=1;
			work_flag_buffer_transfered=1;
			stx_index_out=stx_index_in=0;
		}
		else{
			SBUF=stx_buffer[stx_index_out++];
			if(stx_index_out>28)stx_index_out=0;
		}
	}
	ES=1;
}
void Print(unsigned char c){
	stx_buffer[stx_index_in++]=c;
	if(stx_index_in>28)stx_index_in=0;
	ES=0;
	if(tx_serial_buffer_empty){
		tx_serial_buffer_empty=0;
		TI=1;
	}
	ES=1;
}
void sPrint(unsigned char*s){
	while (*s)Print(*s++);
}
//-------------------------------------------------------------------------
// read counter
//-------------------------------------------------------------------------
void readcounter(void){
  	I2C_start();
	I2C_write(DS1307_ID);
	I2C_write(10);
	I2C_start();
	I2C_write(DS1307_ID+1);
	counter[0] = I2C_read();
	I2C_ack();
	counter[1] = I2C_read();
	I2C_ack();
	counter[2] = I2C_read();
	I2C_ack();
	counter[3] = I2C_read();
	I2C_ack();
	counter[4] = I2C_read();
	I2C_ack();
	counter[5] = I2C_read();
	I2C_ack();
	counter[6] = I2C_read();
	I2C_ack();
	counter[7] = I2C_read();
	I2C_ack();
	counter[8] = I2C_read();
	I2C_nack();
	I2C_stop();
}
//-------------------------------------------------------------------------
// WRITE counter
//-------------------------------------------------------------------------
void writecounter(void){
	I2C_start();
	I2C_write(DS1307_ID);
	I2C_write(10);
	I2C_write(counter[0]);
	I2C_write(counter[1]);
	I2C_write(counter[2]);
	I2C_write(counter[3]);
	I2C_write(counter[4]);
	I2C_write(counter[5]);
	I2C_write(counter[6]);
	I2C_write(counter[7]);
	I2C_write(counter[8]);
	I2C_stop();
}
//-------------------------------------------------------------------------
//bandingkanstring
//-------------------------------------------------------------------------
unsigned char compare(unsigned char cmd){
	unsigned char logic=false;
	unsigned char i;
	if(cmd==1){
		for(i=0;i<20;i++){
			if(bufer[i]==open1[i]){
				if(bufer[i]=='#'){
					logic=true;
					break;
				}
			}
			else break;
		}
	}
	if(cmd==2){
		for(i=0;i<20;i++){
			if(bufer[i]==out1on[i]){
				if(bufer[i]=='#'){
					logic=true;
					break;
				}
			}
			else break;
		}
	}
	if(cmd==3){
		for(i=0;i<20;i++){
			if(bufer[i]==out1off[i]){
				if(bufer[i]=='#'){
					logic=true;
					break;
				}
			}
			else break;
		}
	}
	if(cmd==4){
		for(i=0;i<20;i++){
			if(bufer[i]==ping[i]){
				if(bufer[i]=='#'){
					logic=true;
					break;
				}
			}
			else break;
		}
	}
	if(cmd==5){
		for(i=0;i<20;i++){
			if(bufer[i]==stat[i]){
				if(bufer[i]=='#'){
					logic=true;
					break;
				}
			}
			else break;
		}
	}
	if(cmd==6){
		for(i=0;i<20;i++){
			if(bufer[i]==resetctr[i]){
				if(bufer[i]=='#'){
					logic=true;
					break;
				}
			}
			else break;
		}
	}
	if(cmd==7){
		for(i=0;i<20;i++){
			if(bufer[i]==readctr[i]){
				if(bufer[i]=='#'){
					logic=true;
					break;
				}
			}
			else break;
		}
	}
	if(cmd==8){
		for(i=0;i<8;i++){
			if(bufer[i]==editctr[i]&&bufer[17]=='#'){
				if(i==7)logic=true;
			}
			else break;
		}
	}
	return logic;
}
void main (void){
	__bit stat_out=0;
	__bit logik;
	__bit toggle=0;
	__bit falling_sensor=1;
	unsigned char i;
	unsigned int bouncing_high=5000;
	unsigned int bouncing_low=5000;
	unsigned int millis=0;
	out=0;
	for(i=0;i<250;i++);
	for(i=0;i<250;i++);
	P0=0xff;
	readcounter();
	serial_init();
	if(counter[0]>9)counter[0]=0;
	if(counter[1]>9)counter[1]=0;
	if(counter[2]>9)counter[2]=0;
	if(counter[3]>9)counter[3]=0;
	if(counter[4]>9)counter[4]=0;
	if(counter[5]>9)counter[5]=0;
	if(counter[6]>9)counter[6]=0;
	if(counter[7]>9)counter[7]=0;
	if(counter[8]>9)counter[8]=0;
	sPrint("*POWERON:BTOK#");
	Print(13);
	Print(10);
	while(1){
		if(toggle){
			P0_3=0;
			if(!millis){
				toggle=false;
				out=0;
				stat_out=0;
				P0_3=1;
			}
			else millis--;
		}
		//-------------------------------------------------------------------------
		//INPUT
		//-------------------------------------------------------------------------
		if(input_a==0){
			bouncing_high=5000;
			if(bouncing_low>0){
				bouncing_low--;
				goto lanjut;
			}
			P0_2=0;
			if(falling_sensor){
					sPrint("*IN1ON#");
					Print(13);
					Print(10);
					falling_sensor=false;
					counter[0]++;
					if(counter[0]>9){
						counter[0]=0;
						counter[1]++;
					}
					if(counter[1]>9){
						counter[1]=0;
						counter[2]++;
					}
					if(counter[2]>9){
						counter[2]=0;
						counter[3]++;
					}
					if(counter[3]>9){
						counter[3]=0;
						counter[4]++;
					}
					if(counter[4]>9){
						counter[4]=0;
						counter[5]++;
					}
					if(counter[5]>9){
						counter[5]=0;
						counter[6]++;
					}
					if(counter[6]>9){
						counter[7]=0;
						counter[7]++;
					}
					if(counter[7]>9){
						counter[7]=0;
						counter[8]++;
					}
					if(counter[8]>9){
						counter[8]=0;
						counter[0]++;
					}
					writecounter();
				}
		}
		else{
			bouncing_low=5000;
			if(bouncing_high>0){
				bouncing_high--;
				goto lanjut;
			}
			P0_2=1;
			if(!falling_sensor){
				sPrint("*IN1OFF#");
				Print(13);
				Print(10);
			}
			falling_sensor=true;
		}
	lanjut:	
//-------------------------------------------------------------------------
//serial siap
//-------------------------------------------------------------------------
		if(complit){
			if(compare(1)==true){
				sPrint("*OPEN1OK#");
				out=1;
				stat_out=1;
				millis=40000;
				toggle=true;
			}
			if(compare(2)==true){
				out=1;
				stat_out=1;
				P0_3=0;
				sPrint("*OUT1ONOK#");
			}
			if(compare(3)==true){
				out=0;
				stat_out=0;
				P0_3=1;
				sPrint("*OUT1OFFOK#");
			}
			if(compare(4)==true)sPrint("*PINGOK#");
			if(compare(5)==true){
				if(input_a==1){
					if(stat_out==1)sPrint("*STAT01#");
					else sPrint("*STAT00#");
				}
				if(input_a==0){
					if(stat_out==1)sPrint("*STAT11#");
					else sPrint("*STAT10#");
				}
			}
			if(compare(6)==true){
				counter[0]=0;
				counter[1]=0;
				counter[2]=0;
				counter[3]=0;
				counter[4]=0;
				counter[5]=0;
				counter[6]=0;
				counter[7]=0;
				counter[8]=0;
				writecounter();
				sPrint("*RESETCTROK#");
			}
			if(compare(7)==true){
				readcounter();
				sPrint("*READCTRBTOK");
				Print(counter[8]+48);
				Print(counter[7]+48);
				Print(counter[6]+48);
				Print(counter[5]+48);
				Print(counter[4]+48);
				Print(counter[3]+48);
				Print(counter[2]+48);
				Print(counter[1]+48);
				Print(counter[0]+48);
				Print('#');
			}
			if(compare(8)==true){
				logik=true;
				for(i=8;i<17;i++){
					if(bufer[i]<'0'||bufer[i]>'9'){
						logik=false;
						break;
					}
				}
				if(logik==true){
					counter[0]=bufer[16]-48;
					counter[1]=bufer[15]-48;
					counter[2]=bufer[14]-48;
					counter[3]=bufer[13]-48;
					counter[4]=bufer[12]-48;
					counter[5]=bufer[11]-48;
					counter[6]=bufer[10]-48;
					counter[7]=bufer[9]-48;
					counter[8]=bufer[8]-48;
					writecounter();
					sPrint("*EDITCTROK#");
				}
				else sPrint("*EDITCTRERR#");
			}
			complit=false;
			Print(13);
			Print(10);
		}
	}
}