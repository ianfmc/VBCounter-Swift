//
//  ColorInterfaceController.swift
//  VBCounter
//
//  Created by Ian McCallum on 3/25/17.
//  Copyright © 2017 com.jandm-design. All rights reserved.
//

import WatchKit
import Foundation


class ColorInterfaceController: WKInterfaceController {
    
    var redCount : Int
    var greenCount : Int

    @IBOutlet var redButton: WKInterfaceButton!
    @IBOutlet var greenButton: WKInterfaceButton!
    
    override init() {
        self.redCount = 0
        self.greenCount = 0
        
        super.init()
    }

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func changeColorToRed() {
        redCount = redCount + 1
        redButton.setTitle(String(redCount))
    }
    
    @IBAction func changeColorToGreen() {
        greenCount = greenCount + 1
        greenButton.setTitle(String(greenCount))
    }
}
