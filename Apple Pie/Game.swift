//
//  Game.swift
//  Apple Pie
//
//  Created by Piotr Chlapinski on 23/06/2022.
//

import Foundation
struct Game {
    var word: String
    var inccorectMovesRemaining: Int
    var guessedLetters: [Character]
    
    mutating func playerGuessedLetter(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter){
            inccorectMovesRemaining -= 1
        }
    }
}
