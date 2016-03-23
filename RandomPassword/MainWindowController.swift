//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by Sebastian on 3/22/16.
//  Copyright © 2016 Sebastian. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var textField: NSTextField!

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func generatePassword(sender: AnyObject) {
        
        let lenght = 8
        let password = generateRandomString(lenght)
        
        textField.stringValue = password
    }
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
}
