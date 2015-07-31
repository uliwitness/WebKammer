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


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        self.window!.level = Int(CGWindowLevelForKey(Int32(kCGDraggingWindowLevelKey)))
        self.window!.collectionBehavior = NSWindowCollectionBehavior.Stationary | NSWindowCollectionBehavior.FullScreenAuxiliary | NSWindowCollectionBehavior.CanJoinAllSpaces | NSWindowCollectionBehavior.IgnoresCycle
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

