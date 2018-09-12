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
	
	func testMorze_WordCoddingLangDepending()
	{
		let dev = Morzer.deviderLetter
		
		let word = "Пиво"
		let codedRus = "·−−·" + dev + "··" + dev + "·−−" + dev + "−−−"
		let codedUkr = "·−−·" + dev + "−·−−" + dev + "·−−" + dev + "−−−"
		
		Morzer.lang = Lang.Rus
		XCTAssertEqual(codedRus, code(text: word))
		
		Morzer.lang = Lang.Ukr
		XCTAssertEqual(codedUkr, code(text: word))
	}
	
	func testMorze_UkrWordCodding()
	{
		let dev = Morzer.deviderLetter
		
		let wordCapL   = "ГІЛКА"
		let wordSmallL = "гілка"
		let wordMixedL = "ГіЛка"
		let coded = "−−·" + dev + "··" + dev + "·−··" + dev + "−·−" + dev + "·−"
		
		XCTAssertEqual(coded, code(text: wordCapL))
		XCTAssertEqual(coded, code(text: wordSmallL))
		XCTAssertEqual(coded, code(text: wordMixedL))
	}
	
	func testMorze_RusWordCodding()
	{
		let dev = Morzer.deviderLetter
		
		let wordCapL   = "ПРОСТО"
		let wordSmallL = "просто"
		let wordMixedL = "ПроСтО"
		let coded = "·−−·" + dev + "·−·" + dev + "−−−" + dev + "···" + dev + "−" + dev + "−−−"
		
		XCTAssertEqual(coded, code(text: wordCapL))
		XCTAssertEqual(coded, code(text: wordSmallL))
		XCTAssertEqual(coded, code(text: wordMixedL))
	}
	
	func testMorze_EngWordCodding()
	{
		let dev = Morzer.deviderLetter
		
		let wordCapL   = "SIMPLE"
		let wordSmallL = "simple"
		let wordMixedL = "SiMplE"
		let coded = "···" + dev + "··" + dev + "−−" + dev + "·−−·" + dev + "·−··" + dev + "·"
		
		XCTAssertEqual(coded, code(text: wordCapL))
		XCTAssertEqual(coded, code(text: wordSmallL))
		XCTAssertEqual(coded, code(text: wordMixedL))
	}
	
	func testMorze_UkRs_I_Letter()
	{
		// Rus
		Morzer.lang = Lang.Rus
		XCTAssertEqual(code(text: "И"), "··");
		XCTAssertEqual(code(text: "и"), "··");
		
		// Uk
		Morzer.lang = Lang.Ukr
		XCTAssertEqual(code(text: "и"), "−·−−")
		XCTAssertEqual(code(text: "И"), "−·−−")
	}
	
	func testMorzer_LettersCppitalLatin()
	{
		XCTAssertEqual(code(text: "A"), "·−")
		XCTAssertEqual(code(text: "B"), "−···")
		XCTAssertEqual(code(text: "W"), "·−−")
		XCTAssertEqual(code(text: "G"), "−−·")
		XCTAssertEqual(code(text: "D"), "−··")
		XCTAssertEqual(code(text: "E"), "·")
		XCTAssertEqual(code(text: "V"), "···−")
		XCTAssertEqual(code(text: "Z"), "−−··")
		XCTAssertEqual(code(text: "I"), "··")
		XCTAssertEqual(code(text: "J"), "·−−−")
		XCTAssertEqual(code(text: "K"), "−·−")
		XCTAssertEqual(code(text: "L"), "·−··")
		XCTAssertEqual(code(text: "M"), "−−")
		XCTAssertEqual(code(text: "N"), "−·")
		XCTAssertEqual(code(text: "O"), "−−−")
		XCTAssertEqual(code(text: "P"), "·−−·")
		XCTAssertEqual(code(text: "R"), "·−·")
		XCTAssertEqual(code(text: "S"), "···")
		XCTAssertEqual(code(text: "T"), "−")
		XCTAssertEqual(code(text: "U"), "··−")
		XCTAssertEqual(code(text: "F"), "··−·")
		XCTAssertEqual(code(text: "H"), "····")
		XCTAssertEqual(code(text: "C"), "−·−·")
		XCTAssertEqual(code(text: "Q"), "−−·−")
		XCTAssertEqual(code(text: "Y"), "−·−−")
		XCTAssertEqual(code(text: "X"), "−··−")
	}
	
	func testMorzer_LettersLatin()
	{
		XCTAssertEqual(code(text: "a"), "·−")
		XCTAssertEqual(code(text: "b"), "−···")
		XCTAssertEqual(code(text: "w"), "·−−")
		XCTAssertEqual(code(text: "g"), "−−·")
		XCTAssertEqual(code(text: "d"), "−··")
		XCTAssertEqual(code(text: "e"), "·")
		XCTAssertEqual(code(text: "v"), "···−")
		XCTAssertEqual(code(text: "z"), "−−··")
		XCTAssertEqual(code(text: "i"), "··")
		XCTAssertEqual(code(text: "j"), "·−−−")
		XCTAssertEqual(code(text: "k"), "−·−")
		XCTAssertEqual(code(text: "l"), "·−··")
		XCTAssertEqual(code(text: "m"), "−−")
		XCTAssertEqual(code(text: "n"), "−·")
		XCTAssertEqual(code(text: "o"), "−−−")
		XCTAssertEqual(code(text: "p"), "·−−·")
		XCTAssertEqual(code(text: "r"), "·−·")
		XCTAssertEqual(code(text: "s"), "···")
		XCTAssertEqual(code(text: "t"), "−")
		XCTAssertEqual(code(text: "u"), "··−")
		XCTAssertEqual(code(text: "f"), "··−·")
		XCTAssertEqual(code(text: "h"), "····")
		XCTAssertEqual(code(text: "c"), "−·−·")
		XCTAssertEqual(code(text: "q"), "−−·−")
		XCTAssertEqual(code(text: "y"), "−·−−")
		XCTAssertEqual(code(text: "x"), "−··−")
	}
	
	func testMorzer_LettersCppitalCyrilic()
	{
		XCTAssertEqual(code(text: "А"), "·−")
		XCTAssertEqual(code(text: "Б"), "−···")
		XCTAssertEqual(code(text: "В"), "·−−")
		XCTAssertEqual(code(text: "Г"), "−−·")
		XCTAssertEqual(code(text: "Д"), "−··")
		XCTAssertEqual(code(text: "Е"), "·");
		XCTAssertEqual(code(text: "Ё"), "·")
		XCTAssertEqual(code(text: "Ж"), "···−")
		XCTAssertEqual(code(text: "З"), "−−··")
//		XCTAssertEqual(code(text: "И"), "··");
		XCTAssertEqual(code(text: "І"), "··")
		XCTAssertEqual(code(text: "Й"), "·−−−")
		XCTAssertEqual(code(text: "К"), "−·−")
		XCTAssertEqual(code(text: "Л"), "·−··")
		XCTAssertEqual(code(text: "М"), "−−")
		XCTAssertEqual(code(text: "Н"), "−·")
		XCTAssertEqual(code(text: "О"), "−−−")
		XCTAssertEqual(code(text: "П"), "·−−·")
		XCTAssertEqual(code(text: "Р"), "·−·")
		XCTAssertEqual(code(text: "С"), "···")
		XCTAssertEqual(code(text: "Т"), "−")
		XCTAssertEqual(code(text: "У"), "··−")
		XCTAssertEqual(code(text: "Ф"), "··−·")
		XCTAssertEqual(code(text: "Х"), "····")
		XCTAssertEqual(code(text: "Ц"), "−·−·")
		XCTAssertEqual(code(text: "Ч"), "−−−·")
		XCTAssertEqual(code(text: "Ш"), "−−−−")
		XCTAssertEqual(code(text: "Щ"), "−−·−")
		XCTAssertEqual(code(text: "Ъ"), "−−·−−")
		XCTAssertEqual(code(text: "Ы"), "−·−−")
		XCTAssertEqual(code(text: "Ь"), "−··−")
		XCTAssertEqual(code(text: "Э"), "··−··")
		XCTAssertEqual(code(text: "Є"), "··−··")
		XCTAssertEqual(code(text: "Ю"), "··−−")
		XCTAssertEqual(code(text: "Я"), "·−·−")
		
		XCTAssertEqual(code(text: "Ї"), "·−−−·")
	}
	
	func testMorzer_LettersCyrilic()
	{
		XCTAssertEqual(code(text: "а"), "·−")
		XCTAssertEqual(code(text: "б"), "−···")
		XCTAssertEqual(code(text: "в"), "·−−")
		XCTAssertEqual(code(text: "г"), "−−·")
		XCTAssertEqual(code(text: "д"), "−··")
		XCTAssertEqual(code(text: "е"), "·");
		XCTAssertEqual(code(text: "ё"), "·")
		XCTAssertEqual(code(text: "ж"), "···−")
		XCTAssertEqual(code(text: "з"), "−−··")
//		XCTAssertEqual(code(text: "и"), "··");
		XCTAssertEqual(code(text: "і"), "··")
		XCTAssertEqual(code(text: "й"), "·−−−")
		XCTAssertEqual(code(text: "к"), "−·−")
		XCTAssertEqual(code(text: "л"), "·−··")
		XCTAssertEqual(code(text: "м"), "−−")
		XCTAssertEqual(code(text: "н"), "−·")
		XCTAssertEqual(code(text: "о"), "−−−")
		XCTAssertEqual(code(text: "п"), "·−−·")
		XCTAssertEqual(code(text: "р"), "·−·")
		XCTAssertEqual(code(text: "с"), "···")
		XCTAssertEqual(code(text: "т"), "−")
		XCTAssertEqual(code(text: "у"), "··−")
		XCTAssertEqual(code(text: "ф"), "··−·")
		XCTAssertEqual(code(text: "х"), "····")
		XCTAssertEqual(code(text: "ц"), "−·−·")
		XCTAssertEqual(code(text: "ч"), "−−−·")
		XCTAssertEqual(code(text: "ш"), "−−−−")
		XCTAssertEqual(code(text: "щ"), "−−·−")
		XCTAssertEqual(code(text: "ъ"), "−−·−−")
		XCTAssertEqual(code(text: "ы"), "−·−−")
		XCTAssertEqual(code(text: "ь"), "−··−")
		XCTAssertEqual(code(text: "э"), "··−··")
		XCTAssertEqual(code(text: "є"), "··−··")
		XCTAssertEqual(code(text: "ю"), "··−−")
		XCTAssertEqual(code(text: "я"), "·−·−")
		
		XCTAssertEqual(code(text: "ї"), "·−−−·")
	}
	
	func testMorzer_Numbers()
	{
		XCTAssertEqual(code(text: "1"), "·−−−−")
		XCTAssertEqual(code(text: "2"), "··−−−")
		XCTAssertEqual(code(text: "3"), "···−−")
		XCTAssertEqual(code(text: "4"), "····−")
		XCTAssertEqual(code(text: "5"), "·····")
		XCTAssertEqual(code(text: "6"), "−····")
		XCTAssertEqual(code(text: "7"), "−−···")
		XCTAssertEqual(code(text: "8"), "−−−··")
		XCTAssertEqual(code(text: "9"), "−−−−·")
		XCTAssertEqual(code(text: "0"), "−−−−−")
	}
	
	func testMorzer_Symbols()
	{
		XCTAssertEqual(code(text: ","), "·−·−·−")
		XCTAssertEqual(code(text: ":"), "−−−···")
		XCTAssertEqual(code(text: ";"), "−·−·−·")
		XCTAssertEqual(code(text: "("), "−·−−·−")
		XCTAssertEqual(code(text: ")"), "−·−−·−")
		XCTAssertEqual(code(text: "'"), "·−−−−·")
		XCTAssertEqual(code(text: "\""), "·−··−·")
		XCTAssertEqual(code(text: "-"), "−····−")
		XCTAssertEqual(code(text: "/"), "−··−·")
		XCTAssertEqual(code(text: "?"), "··−−··")
		XCTAssertEqual(code(text: "!"), "−−··−−")
	}
	
}






























