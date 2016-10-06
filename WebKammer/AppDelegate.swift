//
//  AppDelegate.swift
//  WebKammer
//
//  Created by Uli Kusterer on 12/07/15.
//  Copyright (c) 2015 Uli Kusterer. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.level = Int(CGWindowLevelForKey(.draggingWindow))
        window.collectionBehavior = [.stationary,.fullScreenAuxiliary, .canJoinAllSpaces, .ignoresCycle]
    }

}

