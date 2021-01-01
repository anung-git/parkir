#include <Wire.h>
const int out=5;
const int lout=12;
//const int lct=11;
const int lin=10;
const int in_a=6;
//const int in_b=6;
char bufer[20];
byte counter[9];
byte count;
byte toggle;
byte complit=false;
//byte falling_counter=true;
byte falling_sensor=true;
long lastmilis;
//-------------------------------------------------------------------------
const char open1[] = {'*','O','P','E','N','1','#'};
const char out1on[] = {'*','O','U','T','1','O','N','#'};
const char out1off[] = {'*','O','U','T','1','O','F','F','#'};
const char ping[] = {'*','P','I','N','G','#'};
const char stat[] = {'*','S','T','A','T','#'};
const char resetctr[] = {'*','R','E','S','E','T','C','T','R','#'};
const char readctr[] = {'*','R','E','A','D','C','T','R','#'};
const char editctr[] = {'*','E','D','I','T','C','T','R'};

void setup(){
    Serial.begin(9600);
    Wire.begin();
    pinMode(in_a, INPUT_PULLUP);
//    pinMode(in_b, INPUT_PULLUP);
    pinMode(out, OUTPUT);
    pinMode(lout, OUTPUT);
    pinMode(lin, OUTPUT);
//    pinMode(lct, OUTPUT);
    digitalWrite(out,LOW);
    digitalWrite(lout,LOW);
    readcounter();
    if(counter[0]>9)counter[0]=0;
    if(counter[1]>9)counter[1]=0;
    if(counter[2]>9)counter[2]=0;
    if(counter[3]>9)counter[3]=0;
    if(counter[4]>9)counter[4]=0;
    if(counter[5]>9)counter[5]=0;
    if(counter[6]>9)counter[6]=0;
    if(counter[7]>9)counter[7]=0;
    if(counter[8]>9)counter[8]=0;
    Serial.println("*POWERON:BTOK#");
}
void loop() {
//-------------------------------------------------------------------------
// output 1 detik
//-------------------------------------------------------------------------
  if(toggle){
    if(millis()>lastmilis){
      digitalWrite(out,LOW);
      digitalWrite(lout,LOW);
      toggle=false;
    }
  }

//-------------------------------------------------------------------------
// INPUT
//-------------------------------------------------------------------------
  if(baca_input(in_a)==LOW){
    digitalWrite(lin,HIGH);
    if(falling_sensor){
      Serial.println("*IN1ON#");
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
    digitalWrite(lin,LOW);
    if(!falling_sensor)Serial.println("*IN1OFF#");
    falling_sensor=true;
  }
//-------------------------------------------------------------------------
// serial di terima
//-------------------------------------------------------------------------
  while (Serial.available() > 0) {
        char ser=Serial.read();
        if(ser=='*')count=0;
        if(ser=='#')complit=true;
        bufer[count]=ser;
        count++;
  }
//-------------------------------------------------------------------------
//serial siap 
//-------------------------------------------------------------------------
  if(complit){
    if(compare(1)==true){        
        Serial.print("*OPEN1OK#");
        digitalWrite(out, HIGH);
        digitalWrite(lout, HIGH);
        lastmilis=millis()+1000;
        toggle=true;
    }
    if(compare(2)==true){
        digitalWrite(out, HIGH);
        digitalWrite(lout, HIGH);
        Serial.print("*OUT1ONOK#");
      }
    if(compare(3)==true){
        digitalWrite(out, LOW);
        digitalWrite(lout, LOW);
        Serial.print("*OUT1OFFOK#");
      }
    if(compare(4)==true)Serial.print("*PINGOK#");
    if(compare(5)==true){
        if(baca_input(in_a)){
          if(baca_input(out)) Serial.print("*STAT01#");
          else Serial.print("*STAT00#");
        }
        else{
          if(baca_input(out)) Serial.print("*STAT11#");
          else Serial.print("*STAT10#");
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
      Serial.print("*RESETCTROK#");
    }
    if(compare(7)==true){
        Serial.print("*READCTRBTOK");
        Serial.print(counter[8]);
        Serial.print(counter[7]);
        Serial.print(counter[6]);
        Serial.print(counter[5]);
        Serial.print(counter[4]);
        Serial.print(counter[3]);
        Serial.print(counter[2]);
        Serial.print(counter[1]);
        Serial.print(counter[0]);
        Serial.print('#');
      }
    if(compare(8)==true){
      byte logik=true;
      for(byte i=8;i<17;i++){
        if(bufer[i]<'0'||bufer[i]>'9'){
          logik=false;
          break;
        }
      }
      if (logik==true){      
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
        Serial.print("*EDITCTROK#");
      }
      else Serial.print("*EDITCTRERR#");
    }
    complit=false;
    Serial.println("");
  }
}
//-------------------------------------------------------------------------
// read counter
//-------------------------------------------------------------------------
void readcounter(void){
  Wire.beginTransmission(104);
  Wire.write(10);
  Wire.endTransmission();
  if (Wire.requestFrom(104, 9) == 9) {
    counter[0]=Wire.read();
    counter[1]=Wire.read();
    counter[2]=Wire.read();
    counter[3]=Wire.read();
    counter[4]=Wire.read();
    counter[5]=Wire.read();
    counter[6]=Wire.read();
    counter[7]=Wire.read();
    counter[8]=Wire.read();
  }
}
//-------------------------------------------------------------------------
// read counter
//-------------------------------------------------------------------------
void writecounter(void){
  Wire.beginTransmission(104);
  Wire.write(10);
  Wire.write(counter[0]);
  Wire.write(counter[1]);
  Wire.write(counter[2]);
  Wire.write(counter[3]);
  Wire.write(counter[4]);
  Wire.write(counter[5]);
  Wire.write(counter[6]);
  Wire.write(counter[7]);
  Wire.write(counter[8]);
  Wire.endTransmission();
}
//-------------------------------------------------------------------------
// baca input 50x
//-------------------------------------------------------------------------
byte baca_input(int pin){
  byte val=HIGH;
  if(digitalRead(pin)==LOW){
    val=LOW;
    for(byte i=0;i<50;i++){
      if(digitalRead(pin)==HIGH){
        val=HIGH;
        break;
      }
      delay(3);
    }
  }
  return val;
}
//-------------------------------------------------------------------------
//bandingkan string
//-------------------------------------------------------------------------
byte compare( byte cmd){
  byte logic=false;
  if(cmd==1){
    for(byte i=0;i<20;i++){
      if (bufer[i]==open1[i]){
        if(bufer[i]=='#'){
          logic=true;
          break;
        }
      }
      else break;
    }
  }
  if(cmd==2){
    for(byte i=0;i<20;i++){
      if (bufer[i]==out1on[i]){
        if(bufer[i]=='#'){
          logic=true;
          break;
        }
      }
      else break;
    }
  }
   if(cmd==3){
    for(byte i=0;i<20;i++){
      if (bufer[i]==out1off[i]){
        if(bufer[i]=='#'){
          logic=true;
          break;
        }
      }
      else break;
    }
  }  
  if(cmd==4){
    for(byte i=0;i<20;i++){
      if (bufer[i]==ping[i]){
        if(bufer[i]=='#'){
          logic=true;
          break;
        }
      }
      else break;
    }
  }
  if(cmd==5){
    for(byte i=0;i<20;i++){
      if (bufer[i]==stat[i]){
        if(bufer[i]=='#'){
          logic=true;
          break;
        }
      }
      else break;
    }
  }
  if(cmd==6){
    for(byte i=0;i<20;i++){
      if (bufer[i]==resetctr[i]){
        if(bufer[i]=='#'){
          logic=true;
          break;
        }
      }
      else break;
    }
  }
  if(cmd==7){
    for(byte i=0;i<20;i++){
      if (bufer[i]==readctr[i]){
        if(bufer[i]=='#'){
          logic=true;
          break;
        }
      }
      else break;
    }
  }
  if(cmd==8){
    for(byte i=0;i<8;i++){
      if (bufer[i]==editctr[i] && bufer[17]=='#'){
        if(i==7){
          logic=true;
        }
      }
      else break;
    }
  }
  return logic;
}

