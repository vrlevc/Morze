//
//  Morzer.swift
//  Morze
//
//  Created by Viktor Levchenko on 9/10/18.
//  Copyright © 2018 LVA. All rights reserved.
//

import Foundation

func code(symbol: String) ->String {
	var coded: String
	switch symbol {
	case "A", "a", "А", "а":
		coded = "·−"
	case "B", "b", "Б", "б":
		coded = "−···"
	case  "W", "w", "В", "в":
		coded = "·−−"
	case  "G", "g", "Г", "г":
		coded = "−−·"
	case  "D", "d", "Д", "д":
		coded = "−··"
	case  "E", "e", "Е", "е", "Ё", "ё":
		coded = "·"
	case  "V", "v", "Ж", "ж":
		coded = "···−"
	case  "Z", "z", "З", "з":
		coded = "−−··"
	case  "I", "i", "И", "и", "І", "і":
		coded = "··"
	case "J", "j", "Й", "й":
		coded = "·−−−"
	case "K", "k", "К", "к":
		coded = "−·−"
	case "L", "l", "Л", "л":
		coded = "·−··"
	case "M", "m", "М", "м":
		coded = "−−"
	case "N", "n", "Н", "н":
		coded = "−·"
	case "O", "o", "О", "о":
		coded = "−−−"
	case "P", "p", "П", "п":
		coded = "·−−·"
	case "R", "r", "Р", "р":
		coded = "·−·"
	case "S", "s", "С", "с":
		coded = "···"
	case "T", "t", "Т", "т":
		coded = "−"
	case "U", "u", "У", "у":
		coded = "··−"
	case "F", "f", "Ф", "ф":
		coded = "··−·"
	case "H", "h", "Х", "х":
		coded = "····"
	case "C", "c", "Ц", "ц":
		coded = "−·−·"
	case "Q", "q", "Щ", "щ":
		coded = "−−·−"
	case "Y", "y", "Ы", "ы", "И", "и":
		coded = "−·−−"
	case "X", "x", "Ь", "ь":
		coded = "−··−"
	
	case "Ч", "ч":
		coded = "−−−·"
	case "Ш", "ш":
		coded = "−−−−"
	case "Ъ", "ъ":
		coded = "−−·−−"
	case "Э", "э", "Є", "є":
		coded = "··−··"
	case "Ю", "ю":
		coded = "··−−"
	case "Я", "я":
		coded = "·−·−"

	case "Ї", "ї":
		coded = "·−−−·"
		
	case "1":
		coded = "·−−−−"
	case "2":
		coded = "··−−−"
	case "3":
		coded = "···−−"
	case "4":
		coded = "····−"
	case "5":
		coded = "·····"
	case "6":
		coded = "−····"
	case "7":
		coded = "−−···"
	case "8":
		coded = "−−−··"
	case "9":
		coded = "−−−−·"
	case "0":
		coded = "−−−−−"
	case ",":
		coded = "·−·−·−"
	case ":":
		coded = "−−−···"
	case ";":
		coded = "−·−·−·"
	case "(", ")":
		coded = "−·−−·−"
	case "'":
		coded = "·−−−−·"
	case "\"":
		coded = "·−··−·"
	case "-":
		coded = "−····−"
	case "/":
		coded = "−··−·"
	case "?":
		coded = "··−−··"
	case "!":
		coded = "−−··−−"
	default:										// MUST BE!!!
		coded = ""
	}
	return coded
}

func code(text string: String) -> String {
	return code(symbol: string)
}


