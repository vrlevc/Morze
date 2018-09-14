//
//  ViewController.swift
//  Morze
//
//  Created by Viktor Levchenko on 9/6/18.
//  Copyright © 2018 LVA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

	override func viewDidLoad() {
		super.viewDidLoad()
		initDocs()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// MARK: - UI Elements
	@IBOutlet weak var inputTextView: UITextView!
	@IBOutlet weak var outputMorzeView: UITextView!
		
	// MARK: - UITextViewDelegate
	func textViewDidChange(_ textView: UITextView) {
		if textView == inputTextView {
			outputMorzeView.text = code(text: inputTextView.text)
		}
	}
	
	// MARK: - Documents
	var docs: [String: String] = [String: String]()
	
	func initDocs() {
		for mode in UITextInputMode.activeInputModes {
			docs[mode.primaryLanguage!] = String()
		}
	}
	
	func setDocument(text: String, for language: String) {
		docs[language] = text
	}
	
	func document(of language: String) -> String {
		return docs[language]!
	}
}


























