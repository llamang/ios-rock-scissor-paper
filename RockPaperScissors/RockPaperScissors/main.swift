//
//  RockPaperScissors - main.swift
//  Created by tacocat.
//  Copyright © tastycode. All rights reserved.
//

import Foundation

var gameManager = GameManager()

while(gameManager.isGameActive) {
    gameManager.playGame()
}
