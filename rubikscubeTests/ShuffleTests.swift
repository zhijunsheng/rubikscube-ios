//
//  ShuffleTests.swift
//  rubikscubeTests
//
//  Created by Halwong on 2019/3/25.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import XCTest

class ShuffleTests: XCTestCase {
    func testShuffleCards() {
        let cards = shuffleCards(numberOfCards: 52)
        print(cards)
    }
    
    func shuffleCards(numberOfCards: Int) -> [Int] {
        
        var cards: [Int] = []
        
        for _ in 0 ..< numberOfCards {
            cards.append(dealCardDifferentFrom(cards: cards))
        }
        return cards
    }
    
    func dealCardDifferentFrom(cards: [Int]) -> Int {
        while true {
            var newCardOK = true
            let newCard = Int(arc4random() % 52)
            for card in cards {
                if newCard == card {
                    newCardOK = false
                    break
                }
            }
            if newCardOK {
                return newCard
            }
        }
    }
    
    func dealCardDifferentFrom(card: Int) -> Int {
        var newCard = Int(arc4random() % 52)
        
        while newCard == card {
            newCard = Int(arc4random() % 52)
        }
        
        return newCard
    }
    
    func shuffleCards2() -> [Int] {
        return[]
    }
    
    func testWhileLoop() {
        var i = 2
        while i < 5000 {
            print(i)
            i = i * i * i * i
        }
    }
    
    
}
