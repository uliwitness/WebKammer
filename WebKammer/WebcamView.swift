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
    
    override func viewDidMoveToWindow() {
        let captureDevice = AVCaptureDevice.devices(withMediaType: AVMediaTypeVideo)[0] as! AVCaptureDevice
        Swift.print("Device: \(captureDevice)")
        let captureSession = AVCaptureSession()
        Swift.print("Session: \(captureSession)")
        do{
            let captureInput = try AVCaptureDeviceInput(device: captureDevice)
            Swift.print("Session: \(captureInput)")
            captureSession.addInput(captureInput)
            webcamLayer = AVCaptureVideoPreviewLayer(session: captureSession)
            wantsLayer = true
            layer = webcamLayer
            webcamLayer!.bounds = bounds;
            captureSession.startRunning()
        } catch {
            Swift.print("An Error Occurred: \(error)")
        }
    }
    
    override var mouseDownCanMoveWindow : Bool {
        return true
    }
    
}
