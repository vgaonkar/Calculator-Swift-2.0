//
//  ViewController.swift
//  Calculator
//
//  Created by Vijay R. Gaonkar on 10/11/15.
//  Copyright © 2015 Vijay R. Gaonkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var display: UILabel!
  var userIsEnteringANumber = false

  @IBAction func appendDigit(sender: UIButton) {
    if let digit = sender.currentTitle {
      if userIsEnteringANumber {
        display.text = display.text! + digit
      }
      else { 
        userIsEnteringANumber = true
        display.text          = digit
      }
    }
    
  }
  
  @IBAction func getResult(sender: UIButton) {
    userIsEnteringANumber = false
    // perform the operation and display the result
    // clear all operands and set result to first operand
  }
  
//  override func viewDidLoad() {
//    super.viewDidLoad()
//    // Do any additional setup after loading the view, typically from a nib.
//  }
//
//  override func didReceiveMemoryWarning() {
//    super.didReceiveMemoryWarning()
//    // Dispose of any resources that can be recreated.
//  }


}

