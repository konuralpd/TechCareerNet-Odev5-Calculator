//
//  ViewController.swift
//  Odev5-Calculator
//
//  Created by Mac on 9.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculatorResultLabel: UILabel!
    @IBOutlet weak var calculatorIslemLabel: UILabel!
    

    var result = 0

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func AddNumberToIslemLabel(number:String){
        var textNumber = String( calculatorIslemLabel.text!)
          textNumber = textNumber + number
          calculatorIslemLabel.text = textNumber
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
         .lightContent
     }
    

    @IBAction func ACButtonClicked(_ sender: UIButton) {
        calculatorIslemLabel.text = ""
        calculatorResultLabel.text = "0"
       
    }
    @IBAction func zeroButtonClicked(_ sender: Any) {
        calculatorIslemLabel.text = calculatorIslemLabel.text! + "0"
    }
 
    
    @IBAction func dotButtonClicked(_ sender: Any) {
        calculatorIslemLabel.text = calculatorIslemLabel.text! + "."
    }
    
    @IBAction func oneButtonClicked(_ sender: Any) {
        calculatorIslemLabel.text = calculatorIslemLabel.text! + "1"
    }
    
    @IBAction func twoButtonClicked(_ sender: Any) {
        calculatorIslemLabel.text = calculatorIslemLabel.text! + "2"
    }
    
    @IBAction func threeButtonClicked(_ sender: Any) {
        calculatorIslemLabel.text = calculatorIslemLabel.text! + "3"
    }
    
    @IBAction func fourButtonClicked(_ sender: Any) {
        calculatorIslemLabel.text = calculatorIslemLabel.text! + "4"
    }
    
    @IBAction func fiveButtonClicked(_ sender: Any) {
        calculatorIslemLabel.text = calculatorIslemLabel.text! + "5"
    }
    
    @IBAction func sixButtonClicked(_ sender: Any) {
        calculatorIslemLabel.text = calculatorIslemLabel.text! + "6"
    }
    
    @IBAction func sevenButtonClicked(_ sender: Any) {
        calculatorIslemLabel.text = calculatorIslemLabel.text! + "7"
    }
    
    @IBAction func eightButtonClicked(_ sender: Any) {
        calculatorIslemLabel.text = calculatorIslemLabel.text! + "8"
    }
    
    @IBAction func nineButtonClicked(_ sender: Any) {
        calculatorIslemLabel.text = calculatorIslemLabel.text! + "9"
    }
    
    @IBAction func backDeleteButtonClicked(_ sender: Any) {
        
    }
    @IBAction func plusButtonClicked(_ sender: Any) {
        calculatorIslemLabel.text = calculatorIslemLabel.text! + "+"
      
      
        
    }
    
    @IBAction func equalButtonClicked(_ sender: Any) {
        let splitNumbers = calculatorIslemLabel.text!.components(separatedBy: "+")

        
        for i in 0...splitNumbers.count {
            let result = splitNumbers.reduce(0) { $0 + (Int($1) ?? .zero) }

            calculatorResultLabel.text = String(result)
        }
    
        
    }
    
    
    
    
}

