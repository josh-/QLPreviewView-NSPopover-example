//
//  AppDelegate.swift
//  QuickLookPopover
//
//  Created by Josh Parnham on 15/6/18.
//  Copyright © 2018 Josh Parnham. All rights reserved.
//

import Cocoa
import Quartz

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    @IBOutlet weak var window: NSWindow!
    @IBOutlet var  popover: NSPopover!

    @IBAction func popoverButtonClicked(_ sender: NSButton) {
        // Close popover if already open
        if (popover != nil) {
            sender.title = "Open Popover"
            popover.performClose(sender)
            popover = nil
            return;
        }
        
        // Otherwise, create a popover
        sender.title = "Close Popover"
        popover = NSPopover()
        popover.contentViewController = ViewController()
        popover.show(relativeTo: NSZeroRect, of: window.contentView!, preferredEdge: .maxX)
    }
}
