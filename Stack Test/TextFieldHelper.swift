//
//  TextFieldHelper.swift
//  Stack Test
//
//  Created by Hunter Stanton on 2/8/17.
//  Copyright © 2017 Hunter Stanton. All rights reserved.
//
//  A class intended to provide extra functionality to UITextView objects
//  I probably could've made this into an extension instead, which may have been better, but w/e

import UIKit

class TextFieldHelper
{
    
    /// Adds a new line to the UITextView.
    ///
    /// - Parameters:
    ///   - view: The view that will receive the new line.
    ///   - text: The text of the new line.
    static func AddLine(view: UITextView, text: String)
    {
        // Add a new line and also print it to console
        view.text = view.text + "\n\(text)"
        print(text)
    }
}
