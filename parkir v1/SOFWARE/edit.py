# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'gate.ui'
#
# Created by: PyQt5 UI code generator 5.4.1
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(400, 507)
        self.groupBox = QtWidgets.QGroupBox(Form)
        self.groupBox.setGeometry(QtCore.QRect(30, 60, 120, 80))
        self.groupBox.setObjectName("groupBox")
        self.pushButton = QtWidgets.QPushButton(self.groupBox)
        self.pushButton.setGeometry(QtCore.QRect(20, 50, 81, 23))
        self.pushButton.setObjectName("pushButton")
        self.comboBox = QtWidgets.QComboBox(self.groupBox)
        self.comboBox.setGeometry(QtCore.QRect(20, 20, 81, 22))
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
        self.label = QtWidgets.QLabel(Form)
        self.label.setGeometry(QtCore.QRect(30, 20, 341, 31))
        font = QtGui.QFont()
        font.setPointSize(16)
        font.setBold(True)
        font.setWeight(75)
        self.label.setFont(font)
        self.label.setAlignment(QtCore.Qt.AlignCenter)
        self.label.setObjectName("label")
        self.pushButton_3 = QtWidgets.QPushButton(Form)
        self.pushButton_3.setGeometry(QtCore.QRect(170, 110, 201, 31))
        self.pushButton_3.setObjectName("pushButton_3")
        self.pushButton_4 = QtWidgets.QPushButton(Form)
        self.pushButton_4.setGeometry(QtCore.QRect(300, 470, 75, 23))
        self.pushButton_4.setObjectName("pushButton_4")

        self.retranslateUi(Form)
        self.pushButton_4.clicked.connect(self.textEdit.clear)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "TES GATE"))
        self.groupBox.setTitle(_translate("Form", "COM"))
        self.pushButton.setText(_translate("Form", "OPEN"))
        self.comboBox.setItemText(0, _translate("Form", "COM 1"))
        self.comboBox.setItemText(1, _translate("Form", "COM 2"))
        self.comboBox.setItemText(2, _translate("Form", "COM 3"))
        self.comboBox.setItemText(3, _translate("Form", "COM 4"))
        self.comboBox.setItemText(4, _translate("Form", "COM 5"))
        self.comboBox.setItemText(5, _translate("Form", "COM 6"))
        self.comboBox.setItemText(6, _translate("Form", "COM 7"))
        self.comboBox.setItemText(7, _translate("Form", "COM 8"))
        self.comboBox.setItemText(8, _translate("Form", "COM 9"))
        self.comboBox.setItemText(9, _translate("Form", "COM 10"))
        self.comboBox.setItemText(10, _translate("Form", "COM 11"))
        self.comboBox.setItemText(11, _translate("Form", "COM 12"))
        self.comboBox.setItemText(12, _translate("Form", "COM 13"))
        self.comboBox.setItemText(13, _translate("Form", "COM 14"))
        self.comboBox.setItemText(14, _translate("Form", "COM 15"))
        self.comboBox.setItemText(15, _translate("Form", "COM 16"))
        self.comboBox.setItemText(16, _translate("Form", "COM 17"))
        self.comboBox.setItemText(17, _translate("Form", "COM 18"))
        self.comboBox.setItemText(18, _translate("Form", "COM 19"))
        self.comboBox.setItemText(19, _translate("Form", "COM 20"))
        self.pushButton_2.setText(_translate("Form", "GATE OPEN"))
        self.label.setText(_translate("Form", "TES INTERFACE GATE BARRIER"))
        self.pushButton_3.setText(_translate("Form", "AUTO GATE ON"))
        self.pushButton_4.setText(_translate("Form", "clear"))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    Form = QtWidgets.QWidget()
    ui = Ui_Form()
    ui.setupUi(Form)
    Form.show()
    sys.exit(app.exec_())

