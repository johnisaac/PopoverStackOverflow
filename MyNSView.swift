//
//  MyNSView.swift
//  PopoverStackOverflow
//
//  Created by John Isaac on 8/4/16.
//  Copyright © 2016 JohnIsaac. All rights reserved.
//

import Cocoa

class MyNSView: NSView {

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        self.wantsLayer = true
        self.layer?.cornerRadius = 15
        self.layer?.backgroundColor = NSColor.whiteColor().CGColor
        // Drawing code here.
    }
    
}
