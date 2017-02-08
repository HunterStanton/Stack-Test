//
//  ViewController.swift
//  Stack Test
//
//  Created by Hunter Stanton on 2/7/17.
//  Copyright © 2017 Hunter Stanton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var StackTextField: UITextView!
    
    // Our stack object that we will push and pop onto
    var stack: Stack = Stack<Int>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func PrintStackPressed(_ sender: Any)
    {
        TextFieldHelper.AddLine(view: StackTextField, text: "\(stack)")
    }

    @IBAction func PushPressed(_ sender: Any)
    {
        let value: Int = Int(arc4random_uniform(2000))
        stack.push(value)
        TextFieldHelper.AddLine(view: StackTextField, text: "Pushed \(value) onto the stack.")
    }
    
    @IBAction func PopPressed(_ sender: Any)
    {
        if(stack.count == 0)
        {
            TextFieldHelper.AddLine(view: StackTextField, text: "There is nothing on the stack.")
            return
        }
        else
        {
        let value: Int = stack.pop()!
        TextFieldHelper.AddLine(view: StackTextField, text: "Popped \(value) off the stack.")
        }
    }
}

