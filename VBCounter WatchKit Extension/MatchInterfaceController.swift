//
//  ColorInterfaceController.swift
//  VBCounter
//
//  Created by Ian McCallum on 3/25/17.
//  Copyright © 2017 com.jandm-design. All rights reserved.
//

import WatchKit
import Foundation


class MatchInterfaceController: WKInterfaceController {
    
    var currentMatch: MatchModel

    @IBOutlet var visitorButton: WKInterfaceButton!
    @IBOutlet var homeButton: WKInterfaceButton!
    @IBOutlet var visitorGames: WKInterfaceLabel!
    @IBOutlet var homeGames: WKInterfaceLabel!
    
    
    override init() {
        currentMatch = MatchModel()
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

    @IBAction func visitorButtonPressed() {
        currentMatch.addPoint(side: "visitor")
        visitorGames.setText(String(currentMatch.visitorGames))
        visitorButton.setTitle(String(currentMatch.visitorPoints))
        homeButton.setTitle(String(currentMatch.homePoints))
    }

    @IBAction func homeButtonPressed() {
        currentMatch.addPoint(side: "home")
        homeGames.setText(String(currentMatch.homeGames))
        visitorButton.setTitle(String(currentMatch.visitorPoints))
        homeButton.setTitle(String(currentMatch.homePoints))
    }
    
}
