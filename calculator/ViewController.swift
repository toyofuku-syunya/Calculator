//
//  ViewController.swift
//  calculator
//
//  Created by Syunya Toyofuku on 2017/02/26.
//  Copyright © 2017年 Syunya Toyofuku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //label list
    
    @IBOutlet var result:UILabel!
    @IBOutlet var commandLabel:UILabel!
    @IBOutlet var numberLabel:UILabel!
    @IBOutlet var secondNumberLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var isCalculate:Bool=false
    var isDoubleMode:Bool=false
    var isNumberPlus:Bool=true
    //true ... Plus false ... Minus
    
    var number:Double=0
    
    var secondNumber:Double=0
    
    var DoubleTimes:Int=0
    
    var command:Int=4
    //this means ...   0...+ 1...-® 2...* 3.../
    
    var numberStr:String!
    var secondNumberStr:String!
    var commandA:String!
    var pushedNumberInt:Int!
    var DoubleNumber:Int=1
    var DoubleNumberDouble:Double!
    
    func calculating(){
        DoubleTimes=0
        isDoubleMode=false
        numberStr=String(number)
        secondNumberStr=String(secondNumber)
        numberLabel.text=numberStr
        numberLabel.textAlignment = .center
        secondNumberLabel.text=secondNumberStr
        secondNumberLabel.textAlignment = .center
        switch command{
        case 0:commandA="+"
        case 1:commandA="-"
        case 2:commandA="×"
        case 3:commandA="÷"
        default:commandA=""
        }
        commandLabel.text=commandA
        isDoubleMode=false
    }
    func buttonPushed(pushedNumber:Double){
    
        
        
        if isDoubleMode==true{
            DoubleTimes=DoubleTimes+1
            if isCalculate==true{
                for i in 1...DoubleTimes{
                    DoubleNumber=DoubleNumber*10
                    print("for")
                    print("DoubleNumberは…")
                    print(DoubleNumber)
                }
                DoubleNumberDouble=Double(DoubleNumber)
                secondNumber=secondNumber+(pushedNumber/DoubleNumberDouble)
                secondNumberStr=String(secondNumber)
                DoubleIntJudge(secondNumber)
                result.text = secondNumberStr
                secondNumberLabel.text = secondNumberStr
            }else{
                for i in 1...DoubleTimes{
                    DoubleNumber=DoubleNumber*10
                    print("for")
                    print("DoubleNumberは…")
                    print(DoubleNumber)
                }
                DoubleNumberDouble=Double(DoubleNumber)
                number=number+(pushedNumber/DoubleNumberDouble)
                numberStr=String(number)
                result.text = numberStr
                numberLabel.text = numberStr
            }
            DoubleNumber=1
        }else{
            if isCalculate==true{
            secondNumber=secondNumber*10+pushedNumber
            secondNumberStr=String(secondNumber)
            result.text=secondNumberStr
        }else{
        number=number*10+pushedNumber
        print(number)
                numberStr=String(number)
                result.text = numberStr
                result.backgroundColor = UIColor.white
        }
        calculating()
        }
    }
    
    func calculate(commandNumber:Int){
        command=commandNumber
        isCalculate=true
        calculating()
    }
    @IBAction func calculateStart(){
        if isCalculate==true{
            switch command{
            case 0:number=number+secondNumber
            case 1:number=number-secondNumber
            case 2:number=number*secondNumber
            case 3:number=number/secondNumber
            default:number=0
            }
            numberStr=String(number)
            result.text=numberStr
            isCalculate=false
            secondNumber=0
            calculating()
        }
    }
    
    @IBAction func clear(){
        number=0
        secondNumber=0
        DoubleTimes=0
        DoubleNumber=1
        numberLabel.text="0"
        secondNumberLabel.text="0"
        numberStr = String(number)
        result.text=numberStr
        isDoubleMode=false
        
    }
    
    @IBAction func changepm(){
        if isCalculate {
            secondNumber = -1 * secondNumber
            secondNumberStr=String(secondNumber)
            secondNumberLabel.text=secondNumberStr
            secondNumberLabel.textAlignment = .center
            result.text = secondNumberStr
        } else {
            number = -1 * number
            numberStr=String(number)
            numberLabel.text=numberStr
            numberLabel.textAlignment = .center
            result.text = numberStr
        }
    }
    
    @IBAction func one(){
        buttonPushed(pushedNumber:1)
        
    }
    
    @IBAction func two(){
        buttonPushed(pushedNumber: 2)
        
    }
    
    @IBAction func three(){
        buttonPushed(pushedNumber: 3)
        
    }
    
    @IBAction func four(){
        buttonPushed(pushedNumber: 4)
        
    }
    
    @IBAction func five(){
        buttonPushed(pushedNumber: 5)
        
    }
    
    @IBAction func six(){
        buttonPushed(pushedNumber: 6)
        
    }
    
    @IBAction func seven(){
        buttonPushed(pushedNumber: 7)
        
    }
    
    @IBAction func eight(){
        buttonPushed(pushedNumber: 8)
        
    }
    
    @IBAction func nine(){
        buttonPushed(pushedNumber: 9)
        
    }
    
    @IBAction func zero(){
        buttonPushed(pushedNumber: 0)
    }
    
    @IBAction func plus(){
        calculate(commandNumber:0)
    }
    
    @IBAction func minus(){
        calculate(commandNumber: 1)
    }
    
    @IBAction func multi(){
        calculate(commandNumber: 2)
    }
    
    @IBAction func divide(){
        calculate(commandNumber: 3)
    }
    
    @IBAction func DoubleMode(){
        isDoubleMode=true
    }
    
    
    func DoubleIntJudge(numberType:Int){
        switch numberType {
        case : number
    numberStr = String(number)
        if numberStr.contains(".") {
        print("foo")
            }
        case : secondNumber {
                
            }
    }
    }
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


