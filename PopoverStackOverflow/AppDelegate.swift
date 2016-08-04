//
//  AppDelegate.swift
//  PopoverStackOverflow
//
//  Created by John Isaac on 8/4/16.
//  Copyright © 2016 JohnIsaac. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    var statusItem: NSStatusItem?
    var popOver = NSPopover()
    var statusButton: NSButton?

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(NSVariableStatusItemLength)
        statusButton = statusItem.button
        
        if statusButton != nil {
            statusButton!.title = "Hi"
            statusButton!.action = #selector(togglePopOver(_:))
        }
        
        self.statusItem = statusItem
        
        let taskListController = Sample(nibName: "Sample", bundle: nil)
        
        popOver.contentViewController = taskListController
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func togglePopOver(sender: NSStatusBarButton) {
        if popOver.shown {
            popOver.performClose(sender)
        } else {
            popOver.showRelativeToRect(sender.bounds, ofView: sender, preferredEdge: NSRectEdge.MinY)
            NSApp.activateIgnoringOtherApps(true)
        }
    }


}

