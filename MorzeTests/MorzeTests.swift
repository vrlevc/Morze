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
		// for_in and if_else
		let individualScores = [60, 40, 100, 80, 12]
		var teamScore = 0
		for score in individualScores {
			if score > 50 {
				teamScore += 3
			} else {
				teamScore += 1
			}
		}
		
		XCTAssertEqual(11, teamScore)
		
		// Optional value - same as nullable
		var optionString: String? = "Hello"
		XCTAssertNotNil(optionString)
		
		optionString = nil
		XCTAssertNil(optionString)
		
		var optionalName: String? = "John Smith"
		var greeting = "Hello!"
		
		if let name = optionalName {
			greeting = "Hello, \(name)"
		}
		XCTAssertEqual("Hello, John Smith", greeting)
		
		optionalName = nil
		if let name = optionalName {		// optionalName is nil -> go to else case!!!
			greeting = "Hello, \(name)"
		} else {
			greeting = "Hello, baby"
		}
		XCTAssertEqual("Hello, baby", greeting)
		
		// ?? - used for default value
		let nickName: String? = nil
		let fullName: String  = "Viktor Levchenko"
		let informalGreating = "Hi \(nickName ?? fullName)"     // use fullName if nickName is nil
		XCTAssertEqual("Hi Viktor Levchenko", informalGreating)
		
		// switch - break can be omitted
		let vegetable = "red pepper"
		var vegetableInfo: String?
		switch vegetable {
		case "celery":
			vegetableInfo = "Add some raisins and make ants on a log."
		case "cucumber", "watercress":
			vegetableInfo = "That would make a good tea sandwich."
		case let x where x.hasSuffix("pepper"):
			vegetableInfo  = "Is it a spicy \(x)?"
		default:										// MUST BE!!!
			vegetableInfo = "Everything tastes good in soup."
		}
		XCTAssertEqual("Is it a spicy red pepper?", vegetableInfo)
		
		// for - iteration by arrary and dictionary
		let interestingNumbers = [
			"Prime"	   : [2, 3, 5, 7, 11, 13],
			"Fibonacci": [1, 1, 2, 3, 5, 8],
			"Square"   : [1, 4, 9, 16, 25],
		]
		var largest = 0
		var numKind: String? = nil
		for (kind, numbers) in interestingNumbers {
			for number in numbers {
				if number > largest {
					largest = number
					numKind = kind
				}
			}
		}
		XCTAssertEqual("Square", numKind)
		XCTAssertEqual(25, largest)
		
		// while
		var n = 2
		while n < 101 {
			n += 5
		}
		XCTAssertEqual(102, n)
		
		// repeat_while
		var m = 2
		repeat {
			m += 5
		} while m < 101
		XCTAssertEqual(102, m)
		
		// range ..<	[a, b)
		var loopNum = 0
		var sum = 0
		for i in 0..<5 {
			loopNum += 1
			sum += i
		}
		XCTAssertEqual(5, loopNum)
		XCTAssertEqual(10, sum)
		
		// range ...	[a, b]
		loopNum = 0
		sum = 0
		for i in 0...5 {
			loopNum += 1
			sum += i
		}
		XCTAssertEqual(6, loopNum)
		XCTAssertEqual(15, sum)
	}
	
	func testSwift_Functions()
	{
		// function
		func sayHello(person: String, day: String) -> String {
			return "Hello \(person), today is \(day)";
		}
		let helloVitya = sayHello(person: "Vitya", day: "Monday")	// use param names as labels (default) to call func
		XCTAssertEqual("Hello Vitya, today is Monday", helloVitya)

		// function with labels and _ (_ used to skip label in func call)
		func greet(_ person: String, on day: String) -> String {
			return "Hello \(person), today is \(day)";
		}
		let greetVitya = greet("Vitya", on: "Monday")				// skip label for 'person' param and use 'on' label for 'day' param
		XCTAssertEqual("Hello Vitya, today is Monday", greetVitya)
		
		// tuple <- returned by function
		func getStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
			var min = scores[0]
			var max = scores[0]
			var sum = 0
			for score in scores {
				sum += score
				if score > max {
					max = score
				} else if score < min {
					min = score
				}
			}
			return (min, max, sum)
		}
		let statistics = getStatistics(scores: [5, 3, 100, 3, 9])	// func return tuple
		XCTAssertEqual(3, statistics.min)
		XCTAssertEqual(100, statistics.1)		// .max
		XCTAssertEqual(120, statistics.sum)
		
		// nested function
		func return15() -> Int {
			var num = 10
			func add5() {
				num += 5		// use var from outer func
			}
			add5()
			return num
		}
		XCTAssertEqual(15, return15())
		
		// function return function
		func makeIncrementer() -> ((Int) -> Int) {
			func addOne(number: Int) -> Int {
				return number + 1
			}
			return addOne			// return function
		}
		let incrimentFn = makeIncrementer()
		XCTAssertEqual(7+1, incrimentFn(7))
		
		// function as argument for other function
		func hasAnyMatches(list: [Int], condition: ((Int) -> Bool)) -> Bool {
			for item in list {
				if condition(item) {
					return true
				}
			}
			return false
		}
		func greateThan10(number: Int) -> Bool {
			return number > 10
		}
		let has10 = hasAnyMatches(list: [1, 2, 3, 4, 5, 6, 10, 20, 30], condition: greateThan10) // use func as parameter
		XCTAssertTrue(has10)
	}
	
}






























