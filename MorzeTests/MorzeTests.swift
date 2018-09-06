//
//  MorzeTests.swift
//  MorzeTests
//
//  Created by Viktor Levchenko on 9/6/18.
//  Copyright © 2018 LVA. All rights reserved.
//

import XCTest
@testable import Morze

class MorzeTests: XCTestCase {
	
/*
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
	
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
*/
	
	func testSwift_SimpleValues()
	{
		// Value and constant declaration and initialization
		var varValue = 10
		varValue = 52
		let constPI = 3.1415
		
		XCTAssertEqual(varValue, 52)
		XCTAssertEqual(constPI, 3.1415)
		
		// Value types - implicit and explicit
		let implicitIteger = 70
		let implicitDouble = 70.55
		let explicitDouble : Double = 50
		let explicitFloat : Float = 4
		
		XCTAssertEqual(implicitIteger, 70)
		XCTAssertEqual(implicitDouble, 70.55)
		XCTAssertEqual(explicitDouble, 50)
		XCTAssertEqual(explicitFloat, 4)
		
		// Types conversion
		let label = "The value is "
		let width = 90
		let labeleWidth = label + String(width)
		
		XCTAssertEqual(labeleWidth, "The value is 90")
		
		// String with varibales
		let apples = 3
		let oranges = 5
		let appleSummary = "I have \(apples) apples"
		let fruitSummary = "I have \(apples + oranges) fruits"
		
		XCTAssertEqual(appleSummary, "I have 3 apples")
		XCTAssertEqual(fruitSummary, "I have 8 fruits")
		
		// --
		let PI = 3.1415
		let piInfo = "PI devide by 2 is \(PI / 2)"
		
		XCTAssertEqual(piInfo, "PI devide by 2 is 1.57075")
		
		// --
		let name = "Vitya"
		let title = "Mr"
		let question = "What do you want \(title) \(name)?"
		
		XCTAssertEqual(question, "What do you want Mr Vitya?")
		
		// Multi line String literal
		let quotation = """
		I said "I have \(apples) apples."
		And then I said "I have \(apples + oranges) pieces of fruit."
		"""

		XCTAssertEqual("I said \"I have 3 apples.\"\nAnd then I said \"I have 8 pieces of fruit.\"", quotation)
		
		// Arrays and Dictionaries
		var shoppigList = ["catfish", "water", "tulips", "blue paint"]
		shoppigList[1] = "bottle of water"
		
		var occupations = [
			"Malcolm": "Captain",
			"Kaylee" : "Mechanic",
			]
		occupations["Jayne"] = "Public Relations"
		
		XCTAssertEqual("catfish", shoppigList[0])
		XCTAssertEqual("bottle of water", shoppigList[1])
		XCTAssertEqual("tulips", shoppigList[2])
		XCTAssertEqual("blue paint", shoppigList[3])
		
		XCTAssertEqual("Captain", occupations["Malcolm"])
		XCTAssertEqual("Mechanic", occupations["Kaylee"])
		XCTAssertEqual("Public Relations", occupations["Jayne"])
		
		// Empty array and dictionary
		let emptyArray = [String]()
		let emptyDictionary = [String:Float]()
		
		XCTAssertEqual(0, emptyArray.count)
		XCTAssertEqual(0, emptyDictionary.count)
		
		// Assigne new values to existent containers
		shoppigList = []
		occupations = [:]
		
		XCTAssertEqual(0, shoppigList.count)
		XCTAssertEqual(0, occupations.count)
	}
	
	func testSwift_ControlFlow()
	{
		  
	}
	
}








