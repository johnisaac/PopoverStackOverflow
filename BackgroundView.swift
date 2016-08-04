//
//  BackgroundView.swift
//  PopoverStackOverflow
//
//  Created by John Isaac on 8/4/16.
//  Copyright © 2016 JohnIsaac. All rights reserved.
//

import Cocoa

class BackgroundView: NSView {

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        NSColor.redColor().setFill()
        NSRectFill(dirtyRect)
        // Drawing code here.
    }
    
}
