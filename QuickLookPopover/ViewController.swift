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
    @IBAction func showPopover(_ sender: AnyObject) {
        if (popover != nil) {
            popover.performClose(sender)
            popover = nil
            return;
        }
        popover = NSPopover()
        popover.contentViewController = ViewController()
        popover.show(relativeTo: NSZeroRect, of: window.contentView!, preferredEdge: .maxX)
    }


    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

}
