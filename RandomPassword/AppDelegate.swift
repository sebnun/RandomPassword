//
//  AppDelegate.swift
//  RandomPassword
//
//  Created by Sebastian on 3/22/16.
//  Copyright © 2016 Sebastian. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: MainWindowController?


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        // create a window controller with a XIB of the same name
        let mainWindowController = MainWindowController()
        
        //put the window of the controller on the screen
        mainWindowController.showWindow(self)
        
        //set the property to point to the window controler
        self.mainWindowController = mainWindowController
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

