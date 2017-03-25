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
    
    @IBOutlet var colorLabel : WKInterfaceLabel!
    

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
        colorLabel.setText("Red")
        colorLabel.setTextColor(UIColor.red)
    }
    
    @IBAction func changeColorToGreen() {
        colorLabel.setText("Green")
        colorLabel.setTextColor(UIColor.green)
    }
}
