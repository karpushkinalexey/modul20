//
//  ViewController.swift
//  modul_20
//
//  Created by ALEKSEY KARPUSHKIN on 06.01.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ActionButton_1(_ sender: UIButton) {
        ActionButton ()
        Vivod.text = Vivod.text! + String("1")
    }
    @IBAction func ActionButton_2(_ sender: UIButton) {
        ActionButton ()
        Vivod.text = Vivod.text! + String("2")
    }
    @IBAction func ActionButton_3(_ sender: UIButton) {
        ActionButton ()
        Vivod.text = Vivod.text! + String("3")
    }
    @IBAction func ActionButton_4(_ sender: UIButton) {
        ActionButton ()
        Vivod.text = Vivod.text! + String("4")
    }
    @IBAction func ActionButton_5(_ sender: UIButton) {
        ActionButton ()
        Vivod.text = Vivod.text! + String("5")
    }
    @IBAction func ActionButton_6(_ sender: UIButton) {
        ActionButton ()
        Vivod.text = Vivod.text! + String("6")
    }
    @IBAction func ActionButton_7(_ sender: UIButton) {
        ActionButton ()
        Vivod.text = Vivod.text! + String("7")
    }
    @IBAction func ActionButton_8(_ sender: UIButton) {
        ActionButton ()
        Vivod.text = Vivod.text! + String("8")
    }
    @IBAction func ActionButton_9(_ sender: UIButton) {
        ActionButton ()
        Vivod.text = Vivod.text! + String("9")
    }
    @IBAction func ActionButton_0(_ sender: UIButton) {
        ActionButton ()
        Vivod.text = Vivod.text! + String("0")
    }
    
    @IBAction func ActionClean(_ sender: UIButton) {
        Vivod.text = ""
        chislo1 = 0
        otvet = 0
    }
    
    
    @IBAction func ActionZnak(_ sender: UIButton) {
        chislo3 = Double(Vivod.text!)!*(-1)
        Vivod.text = String(chislo3)
    }
    
    
    
    @IBOutlet weak var Vivod: UILabel!
    
    
   var chislo1:Double = 0
    var chislo2:Double = 0
    var chislo3:Double = 0
    var otvet:Double = 0
    var fl:String = ""
    var flotvet:String = ""
    var flotvet2:String = ""
    
    
    //очищаем label после просмотра ответа
    func ActionButton (){
        if flotvet == "Otvet" {
            Vivod.text = ""
            flotvet = ""
        }
    }
    
    
    //если текст есть, сохраняем его как первое число
    func SaveChislo() {
        if let text = Vivod.text {
            if text != "" {
                
            chislo1 = Double(Vivod.text!)!
            Vivod.text = ""
        }
            }
            }
    //если текст есть, сохраняем его как второе число
    func SaveChislo2() {
        if let text = Vivod.text {
            if text != "" {
                
            chislo2 = Double(Vivod.text!)!
            Vivod.text = ""
                             
        }
            }
            }
    
    //выводим подсказки после всех действий
    func pomogiPrint () {
        print(chislo1," первое число")
        print(chislo2," второе число")
        print(chislo3," третье число")
        print(otvet," ответ ")
    }

    //Присваиваем флаги всем кнопкам действия и при их нажатии сохраняем 1 число
    @IBAction func ActionPlus(_ sender: UIButton) {
      fl = String("Plus")
        SaveChislo()
        pomogiPrint()
    }
    
    @IBAction func ActionMinus(_ sender: UIButton) {
        
      fl = String("Minus")
        SaveChislo()
        pomogiPrint()
    }
    
    
    @IBAction func ActionUmn(_ sender: UIButton) {
       fl = String("Umn")
        SaveChislo()
        pomogiPrint()
    }
    
    
    @IBAction func ActionDel(_ sender: UIButton) {
       fl = String("Del")
        SaveChislo()
        pomogiPrint()
    }
    
    
    @IBAction func ActionProc(_ sender: UIButton) {
        SaveChislo2()
        chislo2 = (chislo1/100) * chislo2
        Vivod.text = ""
        
        
        switch fl {

        case "Plus":
        otvet = chislo1 + chislo2
        Vivod.text = String(otvet)
        print(otvet," это ответ")
        chislo1 = otvet
        flotvet2 = ""
    
            
        case "Minus":
            otvet = chislo1 - chislo2
            Vivod.text = String(otvet)
            print(otvet," это ответ")
            chislo1 = otvet
            flotvet2 = ""
            
        case "Umn":
            otvet = chislo1 * chislo2
            Vivod.text = String(otvet)
            print(otvet," это ответ")
            chislo1 = otvet
            flotvet2 = ""
            
        case "Del":
            otvet = chislo1 / chislo2
            Vivod.text = String(otvet)
            print(otvet," это ответ")
            chislo1 = otvet
            flotvet2 = ""
            
        default: break
        }
        pomogiPrint()
    }
        

    
    
    
    
    //при нажатии кнопки ответ - сораняем второе число и проводим операцию выбранную ранее
    
    @IBAction func ActionOtvet(_ sender: UIButton) {
        flotvet = String("Otvet")
        SaveChislo2()
        Vivod.text = ""
        
        switch fl {

        case "Plus":
        otvet = chislo1 + chislo2
        Vivod.text = String(otvet)
        print(otvet," это ответ")
        chislo1 = otvet
        flotvet2 = ""
    
            
        case "Minus":
            otvet = chislo1 - chislo2
            Vivod.text = String(otvet)
            print(otvet," это ответ")
            chislo1 = otvet
            flotvet2 = ""
            
        case "Umn":
            otvet = chislo1 * chislo2
            Vivod.text = String(otvet)
            print(otvet," это ответ")
            chislo1 = otvet
            flotvet2 = ""
            
        case "Del":
            otvet = chislo1 / chislo2
            Vivod.text = String(otvet)
            print(otvet," это ответ")
            chislo1 = otvet
            flotvet2 = ""
            
        default: break
        }
        pomogiPrint()
    }
}



/*
 
 Присутствуют десять числовых кнопок, точка и кнопки с действиями над числами:
 да — 1 балл,
 
 AutoLayout настроен так, чтобы приложение работало как в портретном, так и в ландшафтном режиме без интерфейсных ошибок:
 да — 2 балла,
 
 Реализовано решение с двумя типами данных:
 да — 1 балл,

 Интерфейс по собственной задумке:
 
 нет — 1 балл
 Каждый ряд кнопок — StackView из кнопок:
 да — 1 балл,
 
 Все элементы интерфейса помещены в StackView:
 да — 2 балла,
 
 В калькуляторе реализовано сложение:
 да — 1 балл,
 
 В калькуляторе реализовано вычитание:
 да — 1 балл,
 
 В калькуляторе реализовано деление:
 да — 1 балл,
 
 В калькуляторе реализовано умножение:
 да — 1 балл,
 
 Помимо основных требований в калькуляторе есть и другие действия с числами (проценты, корень квадратный и тд):
 нет — 0 баллов
 
 */



