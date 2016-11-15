//
//  ViewController.swift
//  Prueba1
//
//  Created by capitan on 12/11/16.
//  Copyright © 2016 capitan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var num1:UITextField!
    @IBOutlet var num2:UITextField!
    @IBOutlet var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sumar(_ sender:UIButton){
        let nums = getNumbers()
        let resultado = nums.n1 + nums.n2
        self.resultado.text = String(resultado)
    }
    
    @IBAction func restar(_ sender: UIButton) {
        let nums = getNumbers()
        let resultado = nums.n1 - nums.n2
        self.resultado.text = String(resultado)
    }
    
    @IBAction func producto(_ sender: UIButton) {
        let nums = getNumbers()
        let resultado = nums.n1 * nums.n2
        self.resultado.text = String(resultado)
    }
    
    @IBAction func cociente(_ sender: UIButton) {
        let nums = getNumbers()
        let resultado = nums.n1 / nums.n2
        self.resultado.text = String(resultado)
        
    }
    
    func getNumbers() -> (n1:Int, n2:Int){
        let nS1:String = num1.text!
        let nS2:String = num2.text!
        
        let nI1:Int = Int(nS1)!
        let nI2:Int = Int(nS2)!
        
        return (nI1, nI2)
    }
}

