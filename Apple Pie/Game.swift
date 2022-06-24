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
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter){
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessedLetter(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter){
            inccorectMovesRemaining -= 1
        }
    }
}
