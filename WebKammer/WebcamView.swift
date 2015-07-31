//
//  WebcamView.swift
//  WebKammer
//
//  Created by Uli Kusterer on 12/07/15.
//  Copyright (c) 2015 Uli Kusterer. All rights reserved.
//

import Cocoa
import AVFoundation

class WebcamView: NSView {
    
    var webcamLayer : AVCaptureVideoPreviewLayer? = nil;
    
    override init( frame theFrame: NSRect ) {
        super.init( frame: theFrame )
    }
    
    required init?(coder theCoder: NSCoder) {
        super.init( coder: theCoder )
    }
    
    
    override func viewDidMoveToWindow() {
        var errorReturn : NSError? = nil
        var captureDevice : AVCaptureDevice = AVCaptureDevice.devicesWithMediaType(AVMediaTypeVideo)[0] as! AVCaptureDevicey
        println("Device: \(captureDevice)")
        var captureSession : AVCaptureSession? = AVCaptureSession()
        println("Session: \(captureSession)")
        var captureInput : AVCaptureDeviceInput? = AVCaptureDeviceInput(device: captureDevice, error: &errorReturn )
        if let actualError = errorReturn {
            println("An Error Occurred: \(actualError)")
        }
        println("Session: \(captureInput)")
        captureSession!.addInput( captureInput )
        webcamLayer = AVCaptureVideoPreviewLayer( session: captureSession )
        self.wantsLayer = true
        self.layer = webcamLayer
        webcamLayer!.bounds = self.bounds;
        captureSession?.startRunning()
    }
    
    override var mouseDownCanMoveWindow : Bool {
        return true
    }
    
}
