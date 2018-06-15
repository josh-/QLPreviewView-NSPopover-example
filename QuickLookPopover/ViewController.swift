//
//  ViewController.swift
//  QuickLookPopover
//
//  Created by Josh Parnham on 15/6/18.
//  Copyright © 2018 Josh Parnham. All rights reserved.
//

import AppKit
import Quartz

class ViewController: NSViewController {

    override func loadView() {
        let view = QLPreviewView(frame: NSRect(x: 0, y: 0, width: 400, height: 200), style: .normal)

        let item = JPQuickLookItem()
        item.previewItemURL = Bundle.main.url(forResource: "Yosemite", withExtension: "jpg")
        previewView?.previewItem = item

        self.view = view!
    }
}
