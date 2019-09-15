# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'gate.ui'
#
# Created by: PyQt5 UI code generator 5.4.1
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets
import serial
class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(400, 510)
        self.groupBox = QtWidgets.QGroupBox(Form)
        self.groupBox.setGeometry(QtCore.QRect(30, 60, 120, 80))
        self.groupBox.setObjectName("groupBox")
        self.pushButton = QtWidgets.QPushButton(self.groupBox)
        self.pushButton.setGeometry(QtCore.QRect(20, 50, 75, 23))
        self.pushButton.setObjectName("pushButton")
        self.comboBox = QtWidgets.QComboBox(self.groupBox)
        self.comboBox.setGeometry(QtCore.QRect(20, 20, 71, 22))
        self.comboBox.setObjectName("comboBox")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.textEdit = QtWidgets.QTextEdit(Form)
        self.textEdit.setGeometry(QtCore.QRect(30, 160, 341, 305))
        self.textEdit.setObjectName("textEdit")
        self.pushButton_2 = QtWidgets.QPushButton(Form)
        self.pushButton_2.setGeometry(QtCore.QRect(170, 70, 201, 31))
        self.pushButton_2.setObjectName("pushButton_2")
        self.pushButton_3 = QtWidgets.QPushButton(Form)
        self.pushButton_3.setGeometry(QtCore.QRect(170, 110, 201, 31))
        self.pushButton_3.setObjectName("pushButton_3")
        self.label = QtWidgets.QLabel(Form)
        self.label.setGeometry(QtCore.QRect(30, 20, 341, 31))
        font = QtGui.QFont()
        font.setPointSize(16)
        font.setBold(True)
        font.setWeight(75)
        self.label.setFont(font)
        self.label.setAlignment(QtCore.Qt.AlignCenter)
        self.label.setObjectName("label")
        QtCore.QMetaObject.connectSlotsByName(Form)
        self.pushButton.setStyleSheet("background-color: rgb(255, 0, 0);")
        self.pushButton_4 = QtWidgets.QPushButton(Form)
        self.pushButton_4.setGeometry(QtCore.QRect(300, 470, 75, 23))
        self.pushButton_4.setObjectName("pushButton_4")
        self.retranslateUi(Form)
        self.pushButton_4.clicked.connect(self.textEdit.clear)

        
        self.timer_serial = QtCore.QTimer()
        self.timer_serial.setInterval(100)	# 100 mili detik
        self.timer_serial.timeout.connect(self.timerserial)
        self.autoopen = QtCore.QTimer()
        self.autoopen.setInterval(2000)	# 100 mili detik
        self.autoopen.timeout.connect(self.auto_gate)        
        self.pushButton.clicked.connect(self.comport)#signal untuk button 1       
        self.pushButton_2.clicked.connect(self.gate)#signal untuk button 2   
        self.pushButton_3.clicked.connect(self.gateauto)#signal untuk button 2
        
        self.pushButton_2.setEnabled(False)
        self.pushButton_3.setEnabled(False)
    def comport(self):
        if self.pushButton.text()=="OPEN":
            self.pushButton.setText("CLOSE")
            self.pushButton.setStyleSheet("background-color: rgb(0, 255, 0);")
            self.comboBox.setEnabled(False)
            self.pushButton_2.setEnabled(True)
            self.pushButton_3.setEnabled(True)
            self.ser = serial.Serial(self.comboBox.currentText(),baudrate=9600,timeout=1)
            self.timer_serial.start()
        else:
            self.pushButton.setText("OPEN")
            self.pushButton.setStyleSheet("background-color: rgb(255, 0, 0);")
            self.comboBox.setEnabled(True)
            self.pushButton_2.setEnabled(False)
            self.pushButton_3.setEnabled(False)
            self.timer_serial.stop()
            self.autoopen.stop()
            self.pushButton_3.setText("AUTO GATE ON")
            self.pushButton_3.setStyleSheet("")
            self.ser.close()
    def gate(self):
        data=('Q').encode()
        self.ser.write(data)
    def gateauto(self):
        if self.pushButton_3.text()=="AUTO GATE ON":
            self.autoopen.start()
            self.pushButton_3.setText("AUTO GATE OFF")
            self.pushButton_3.setStyleSheet("background-color: rgb(0, 255, 0);")
        else:
            self.autoopen.stop()
            self.pushButton_3.setText("AUTO GATE ON")
            self.pushButton_3.setStyleSheet("")
    def auto_gate(self):
        data=('Q').encode()
        self.ser.write(data)    
    def timerserial(self):
        if self.ser.in_waiting:
            data=self.ser.readline().decode('ascii')
            self.textEdit.append(data.replace('\r\n',''))
    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "TES GATE"))
        self.groupBox.setTitle(_translate("Form", "COM"))
        self.pushButton.setText(_translate("Form", "OPEN"))
        self.comboBox.setItemText(0, _translate("Form", "COM1"))
        self.comboBox.setItemText(1, _translate("Form", "COM2"))
        self.comboBox.setItemText(2, _translate("Form", "COM3"))
        self.comboBox.setItemText(3, _translate("Form", "COM4"))
        self.comboBox.setItemText(4, _translate("Form", "COM5"))
        self.comboBox.setItemText(5, _translate("Form", "COM6"))
        self.comboBox.setItemText(6, _translate("Form", "COM7"))
        self.comboBox.setItemText(7, _translate("Form", "COM8"))
        self.comboBox.setItemText(8, _translate("Form", "COM9"))
        self.comboBox.setItemText(9, _translate("Form", "COM10"))
        self.comboBox.setItemText(10, _translate("Form", "COM11"))
        self.comboBox.setItemText(11, _translate("Form", "COM12"))
        self.comboBox.setItemText(12, _translate("Form", "COM13"))
        self.comboBox.setItemText(13, _translate("Form", "COM14"))
        self.comboBox.setItemText(14, _translate("Form", "COM15"))
        self.comboBox.setItemText(15, _translate("Form", "COM16"))
        self.comboBox.setItemText(16, _translate("Form", "COM17"))
        self.comboBox.setItemText(17, _translate("Form", "COM18"))
        self.comboBox.setItemText(18, _translate("Form", "COM19"))
        self.comboBox.setItemText(19, _translate("Form", "COM20"))
        self.pushButton_2.setText(_translate("Form", "GATE OPEN"))
        self.label.setText(_translate("Form", "TES INTERFACE GATE BARRIER"))
        self.pushButton_3.setText(_translate("Form", "AUTO GATE ON"))
        self.pushButton_4.setText(_translate("Form", "clear"))
if __name__ == "__main__":
    import sys
    import os
    app = QtWidgets.QApplication(sys.argv)
    path = os.path.join(os.path.dirname(sys.modules[__name__].__file__), 'icon.png')
    app.setWindowIcon(QtGui.QIcon(path))
    Form = QtWidgets.QWidget()
    ui = Ui_Form()
    ui.setupUi(Form)
    Form.show()
    sys.exit(app.exec_())

