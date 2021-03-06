//
//  Swift.swift
//  MorzeTests
//
//  Created by Viktor Levchenko on 9/11/18.
//  Copyright © 2018 LVA. All rights reserved.
//

import XCTest

class Swift: XCTestCase {
    
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
	
	func testSwift_Closures()
	{
		// Use closure as param
		let numbers = [20, 19, 7, 12]
		
		let mapped10 = numbers.map(
		{							// use '{' and '}' for closure
			(number: Int) -> Int in	// Use 'in' te separate body
			let result = 10 * number
			return result
			}
		)
		XCTAssertEqual([200, 190, 70, 120], mapped10)
		
		let mappedOdd = numbers.map({ (number: Int) -> Int in
			if number % 2 == 0 {
				return 0
			}
			return number
		})
		XCTAssertEqual([0, 19, 7, 0], mappedOdd)
		
		// skip param and ret type - if closure is know
		let mappedNumbers = numbers.map( { number in 10 * number } )
		XCTAssertEqual([200, 190, 70, 120], mappedNumbers)
		
		let mappedTo10 = numbers.map { number in 10 * number }  // skip parentheses
		XCTAssertEqual([200, 190, 70, 120], mappedTo10)
		
		// skip param, return type and parentheses - use args numbers:
		let sortedNumbers = numbers.sorted { $0 > $1 }
		XCTAssertEqual([20, 19, 12, 7], sortedNumbers)
	}
	
	func testSwift_ObjectsClasses()
	{
		// class - basic
		class Shape {								// 'class'
			var numberOfSides = 0					// member declaration
			func description() -> String {			// function declaration
				return "A shape with \(numberOfSides) sides."
			}
		}
		let shape = Shape() 		// put parentheses after the class name
		shape.numberOfSides = 10	// dot notaion
		let shapeDescription = shape.description()
		XCTAssertEqual(10, shape.numberOfSides)
		XCTAssertEqual("A shape with 10 sides.", shapeDescription)
		
		// class initializer
		class NamedShape {
			// must be init here or in init function
			var numberOfSides: Int = 0
			var name: String
			
			init(name: String) {
				self.name = name	// init in initializer
			}
			
			deinit {
				// clean up if needed
			}
			
			func description() -> String {
				return "A shape with \(numberOfSides) sides."
			}
		}
		let namedShape = NamedShape(name: "Loop")
		XCTAssertEqual("Loop", namedShape.name)
		
		// subclassing
		class Square: NamedShape {			// inherited from NamedShape
			let squareNumberOfSides = 4
			var sideLength: Double
			
			init(sideLength: Double, name: String) {
				self.sideLength = sideLength
				super.init(name: name)
				numberOfSides = squareNumberOfSides
			}
			
			func area() -> Double {			// new function
				return sideLength * sideLength
			}
			
			override func description() -> String {	// overrided function
				return "A square with sides of length \(sideLength)."
			}
		}
		let square = Square(sideLength: 2.5, name: "Free")
		XCTAssertEqual("Free", square.name)
		XCTAssertEqual(4, square.numberOfSides)
		XCTAssertEqual("A square with sides of length 2.5.", square.description())
		XCTAssertEqual(2.5, square.sideLength)
		XCTAssertEqual(6.25, square.area())
		
		// properties - get/set
		class EquilateralTriangle: NamedShape {
			var sideLength: Double = 0.0
			
			init(sideLength: Double, name: String) {
				self.sideLength = sideLength
				super.init(name: name)
				numberOfSides = 3
			}
			
			var perimeter: Double {
				get {
					return 3.0 * sideLength
				}
				set {								// defult name : newValue
					sideLength = newValue / 3.0
				}
			}
			
			var extendedLength: Double {
				get {
					return perimeter
				}
				set (newLength) {
					sideLength = newLength / 3.0
				}
			}
			
			override func description() -> String {
				return "An equilateral triangle with sides of length \(sideLength)."
			}
		}
		let equilateralTriangle = EquilateralTriangle(sideLength: 2.5, name: "Free")
		XCTAssertEqual("Free", equilateralTriangle.name)
		XCTAssertEqual(3, equilateralTriangle.numberOfSides)
		XCTAssertEqual("An equilateral triangle with sides of length 2.5.", equilateralTriangle.description())
		XCTAssertEqual(7.5, equilateralTriangle.perimeter)
		equilateralTriangle.perimeter = 9
		XCTAssertEqual(3, equilateralTriangle.sideLength)
		XCTAssertEqual(9, equilateralTriangle.extendedLength)
		equilateralTriangle.extendedLength = 7.5
		XCTAssertEqual(2.5, equilateralTriangle.sideLength)
		
		// property willSet/didSet
		class TriangleAndSquare {
			var triangle: EquilateralTriangle {
				willSet (newTriangle) {
					square.sideLength = newTriangle.sideLength
				}
			}
			var square: Square {
				willSet {
					triangle.sideLength = newValue.sideLength
				}
			}
			init(size: Double, name: String) {
				square = Square(sideLength: size, name: name)
				triangle = EquilateralTriangle(sideLength: size, name: name)
			}
		}
		let triangleAndSquare = TriangleAndSquare(size: 10, name: "complex-shape")
		XCTAssertEqual(triangleAndSquare.square.sideLength, triangleAndSquare.triangle.sideLength)
		triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
		XCTAssertEqual(triangleAndSquare.square.sideLength, triangleAndSquare.triangle.sideLength)
		triangleAndSquare.triangle = EquilateralTriangle(sideLength: 20, name: "smaller triangle")
		XCTAssertEqual(triangleAndSquare.square.sideLength, triangleAndSquare.triangle.sideLength)
		
		// call methods or access members of nullable var
		var optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")	// can be nil
		var sideLength = optionalSquare?.sideLength				// can be nil as far as optionalSquare can
		XCTAssertNotNil(optionalSquare)
		XCTAssertNotNil(sideLength)
		
		optionalSquare = nil
		sideLength = optionalSquare?.sideLength
		XCTAssertNil(optionalSquare)
		XCTAssertNil(sideLength)
	}
	
	func testSwift_EnumerationStructure()
	{
		// enum
		enum Rank: Int {
			case ace = 1
			case two, three, four, five, six, seven, eight, nine, ten
			case jack, queen, king
			func shortDescription() -> String {
				switch self {
				case Rank.ace:		// full definition
					return "ace"
				case .jack:			// short def - Rank is known
					return "jack"
				case .queen:
					return "queen"
				case .king:
					return "king"
				default:
					return String(self.rawValue)
				}
			}
		}
		let ace = Rank.ace
		let aceRawValue = ace.rawValue
		XCTAssertEqual(1, aceRawValue)
		XCTAssertEqual("ace", ace.shortDescription())
		
		// ---
		func less(rank: Rank, then otherRank: Rank) -> Bool {
			func getRankWeight(_ rank: Rank) -> Int {
				if rank.rawValue == 1 {
					return rank.rawValue + Rank.king.rawValue
				}
				return rank.rawValue
			}
			return getRankWeight(rank) < getRankWeight(otherRank)
		}
		let Ace = Rank.ace
		let King = Rank.king
		let Jack = Rank.jack
		let Five = Rank.five
		XCTAssertTrue( less(rank: King, then: Ace) )
		XCTAssertTrue( less(rank: Jack, then: King) )
		XCTAssertTrue( less(rank: Jack, then: Ace) )
		XCTAssertTrue( less(rank: Five, then: Ace) )
		XCTAssertTrue( less(rank: Five, then: King) )
		XCTAssertTrue( less(rank: Five, then: Jack) )
		XCTAssertFalse( less(rank: Ace, then: King) )
		XCTAssertFalse( less(rank: Ace, then: Jack) )
		XCTAssertFalse( less(rank: Ace, then: Five) )
		XCTAssertFalse( less(rank: King, then: Jack) )
		XCTAssertFalse( less(rank: King, then: Five) )
		XCTAssertFalse( less(rank: Jack, then: Five) )
		
		// enum from raw value >>> init?(rawValue:)
		var threeShortDescr: String? = nil
		if let convertedRack = Rank(rawValue: 3) {
			threeShortDescr = convertedRack.shortDescription()
		}
		XCTAssertEqual("3", threeShortDescr ?? "ERROR")
		
		// case values of an enumeration are actual values
		enum Suit {
			case spades, hearts, diamonds, clubs
			func shortDescritption() -> String {
				switch self {
				case .spades:
					return "spades"
				case .hearts:
					return "hearts"
				case .diamonds:
					return "diamonds"
				case .clubs:
					return "clubes"
				}
			}
			var color: String {
				get {
					switch self {
					case .hearts, .diamonds:
						return "red"
					case .clubs, .spades:
						return "black"
					}
				}
			}
		}
		let hearts = Suit.hearts
		XCTAssertEqual("hearts", hearts.shortDescritption())
		let spades = Suit.spades
		XCTAssertEqual("red", hearts.color)
		XCTAssertEqual("black", spades.color)
		
		// values - associated with case:
		enum ServerResponse {
			case result(String, String)
			case failure(String)
			case warning(String, Int)
		}
		func translateResponce(_ serverResopnse: ServerResponse) -> String {
			switch serverResopnse {
			case let .result(sunrize, sunset):						// let !!!!
				return "Sunsize:\(sunrize) | Sunset:\(sunset)"
			case let .failure(error):
				return "Error: \(error)"
			case let .warning(description, level):
				return "Warning [\(level)] : \(description)"
			}
		}
		let success = ServerResponse.result("6:00 am", "8:09 pm")
		let failure = ServerResponse.failure("Out of cheese.")
		let waring = ServerResponse.warning("Try other case.", 111)
		XCTAssertEqual("Sunsize:6:00 am | Sunset:8:09 pm", translateResponce(success))
		XCTAssertEqual("Error: Out of cheese.", translateResponce(failure))
		XCTAssertEqual("Warning [111] : Try other case.", translateResponce(waring))
	
		// Structure - structures are always copied when they are passed around in your code, but classes are passed by reference.
		struct Card {
			var rank: Rank
			var suit: Suit
			func simpleDescription() -> String {
				return "The \(rank.shortDescription()) of \(suit.shortDescritption())"
			}
		}
		let threeOfSpades = Card(rank: .three, suit: .spades)
		let threeOfSpadesDescription = threeOfSpades.simpleDescription()
		XCTAssertEqual("The 3 of spades", threeOfSpadesDescription)
	}
	
}

































