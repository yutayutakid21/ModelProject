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
        // Do any additional setup after loading the view.
    }

   
    
    @IBAction func result(_ sender: Any) {
       
        let plusNumber = calcModel.plus(number1: Int(numberTextField.text) , number2: Int(numberTextField.text))
       
           
        let miusNumber = calcModel.mius(number1:numberTextField.text as! Int, number2: numberTextField.text as! Int)
           
        let kakeruNumber = calcModel.kakeru(number1: numberTextField.text as! Int, number2: numberTextField.text as! Int)
           
        let waruNumber = calcModel.waku(number1: numberTextField.text as! Int, number2: numberTextField.text as! Int)
        
        plusLabel.text = String(plusNumber)
        
        
        
    }
    
}

