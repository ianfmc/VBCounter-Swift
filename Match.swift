//
//  Match.swift
//  VBCounter
//
//  Created by Ian McCallum on 3/26/17.
//  Copyright © 2017 com.jandm-design. All rights reserved.
//

import WatchKit

class MatchModel {
    
    var homeGames: Int
    var homePoints: Int
    var visitorGames: Int
    var visitorPoints: Int
    
    var pointsPerGame = 5
    

    init() {
        self.homeGames = 0
        self.visitorGames = 0
        self.homePoints = 0
        self.visitorPoints = 0
    }
    
    func addPoint(side: String) {
        if (side == "home") {
            self.homePoints += 1
            if (self.homePoints) >= pointsPerGame {
                if (self.homePoints - self.visitorPoints) < 2 {
                    return
                }
                else {
                    self.homePoints = 0
                    self.visitorPoints = 0
                    self.homeGames += 1
                }
            }
        }
        else {
            self.visitorPoints += 1
            if (self.visitorPoints) >= pointsPerGame {
                if (self.visitorPoints - self.homePoints) < 2 {
                    return
                }
                else {
                    self.homePoints = 0
                    self.visitorPoints = 0
                    self.visitorGames += 1
                }
            }
        }
    }
}
