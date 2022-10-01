//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by mihaly bence on 01.10.2022.
//

import XCTest
@testable import Bullseye

class GameTests: XCTestCase {
    
    private var mGame : Game!

    override func setUpWithError() throws {
        mGame = Game()
    }

    override func tearDownWithError() throws {
        mGame = nil
    }

    func testScorePositive() throws {
        let guess = mGame.Target + 5
        XCTAssertEqual(mGame.CalculatePoints(value: guess), 95)
    }
    
    func testScoreNegative() throws {
        let guess = mGame.Target - 5
        XCTAssertEqual(mGame.CalculatePoints(value: guess), 95)
    }
}
