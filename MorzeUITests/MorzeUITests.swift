//
//  MorzeUITests.swift
//  MorzeUITests
//
//  Created by Viktor Levchenko on 9/6/18.
//  Copyright © 2018 LVA. All rights reserved.
//

import XCTest

class MorzeUITests: XCTestCase {
	
	var app: XCUIApplication?
	var input: XCUIElement?
	var output: XCUIElement?
	
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
		app = XCUIApplication()
		app?.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
		input = app?.textViews["InputView"]
		output = app?.textViews["OutputView"]

		XCTAssertNotNil(app)
		XCTAssertNotNil(input)
		XCTAssertNotNil(output)
	}
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
	
    func testType()
	{
		// activate input
		input?.tap()

		// tape and check
		input?.typeText("A")
		let outText: String? = output?.value as? String
		XCTAssertNotNil(outText)
		XCTAssertEqual(code(text: "A"), outText)
    }
	
	func testTyping()
	{
		let text = "Complex   sentence  for codding -  with numbers 2 53 34 and symbols !/"
		
		// activate input
		input?.tap()
		
		// tape and check
		input?.typeText(text)
		let outText: String? = output?.value as? String
		XCTAssertNotNil(outText)
		XCTAssertEqual(code(text: text), outText)
	}
	
	func testTypingText()
	{
		let text = """
				   Complex   text  for codding: \n \
				   - numbers 2 53 34 \n \
				   - symbols ! / ?
				   """
		
		// activate input
		input?.tap()
		
		// tape and check
		input?.typeText(text)
		let outText: String? = output?.value as? String
		XCTAssertNotNil(outText)
		XCTAssertEqual(code(text: text), outText)

	}
	
	func testChangeInputLang()
	{
		var inputModes:[UITextInputMode] = UITextInputMode.activeInputModes
		print("The naumber of activeInputModes is \(inputModes.count)")
		for mode in inputModes {
			print("Priamry language for mode \(mode.primaryLanguage ?? "NIL")")
		}

		input?.tap()
		
		let mode = UITextInputMode()
		print("New created input mode language : \(mode.primaryLanguage ?? "NIL")")
		
		let nextKeyboardButton = app?/*@START_MENU_TOKEN@*/.buttons["Next keyboard"]/*[[".keyboards.buttons[\"Next keyboard\"]",".buttons[\"Next keyboard\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
		nextKeyboardButton?.tap()
		
		inputModes = UITextInputMode.activeInputModes
		print("The naumber of activeInputModes is \(inputModes.count)")
		for mode in inputModes {
			print("Priamry language for mode \(mode.primaryLanguage ?? "NIL")")
		}

		
		nextKeyboardButton?.tap()
		
		inputModes = UITextInputMode.activeInputModes
		print("The naumber of activeInputModes is \(inputModes.count)")
		for mode in inputModes {
			print("Priamry language for mode \(mode.primaryLanguage ?? "NIL")")
		}

		nextKeyboardButton?.tap()
		
		inputModes = UITextInputMode.activeInputModes
		print("The naumber of activeInputModes is \(inputModes.count)")
		for mode in inputModes {
			print("Priamry language for mode \(mode.primaryLanguage ?? "NIL")")
		}

		
		
	}
}

























