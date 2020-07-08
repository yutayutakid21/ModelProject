//
//  ViewController.swift
//  ModelProject
//
//  Created by Yuta Fujii on 2020/07/06.
//  Copyright © 2020 Yuta Fujii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
   
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var numberTextField2: UITextField!
  
    
    @IBOutlet weak var plusLabel: UILabel!
    @IBOutlet weak var miusLabel: UILabel!
    @IBOutlet weak var kakeruLabel: UILabel!
    @IBOutlet weak var waruLabel: UILabel!
    
    
   
    
    /*
     
     課題:このリポジトリからフォークさせ、自分のリモートリポジトリからローカルへ落とし、作成されたModelクラス(CakcModel)から、
     足し算、引き算、掛け算、割り算を行う関数を作成し、
     自分のリモートリポジトリのmasterへpushしてください。
     その後私のリモートリポジトリへPull Requestを送ってください。
     */
    
    
    var calcModel = CalcModel()
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = "数字を入力"
        
    }

   
    
    @IBAction func result(_ sender: Any) {
        
        let num1 = Int(numberTextField.text!)
        let num2 = Int(numberTextField2.text!)
       
        let plusNumber = calcModel.plus(number1:num1!, number2:num2!)
        let miusNumber = calcModel.mius(number1: num1!, number2: num2!)
        let kakeruNumber = calcModel.kakeru(number1: num1!, number2: num2!)
        let waruNumber = calcModel.waku(number1: num1!, number2: num2!)
           
        plusLabel.text = String(plusNumber)
        miusLabel.text = String(miusNumber)
        kakeruLabel.text = String(kakeruNumber)
        waruLabel.text = String(waruNumber)
        resultLabel.text = "結果"
    }
    
}

