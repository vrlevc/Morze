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
		signForNotifications()
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
			updateOutViewText()
		}
	}
	
	func setInput(text: String) {
		inputTextView.text = text
		updateOutViewText()
	}
	
	func updateOutViewText() {
		outputMorzeView.text = code(text: inputTextView.text)
	}
	
	// MARK: - Notifications
	
	func signForNotifications() {
		NotificationCenter.default.addObserver(self,
											   selector: #selector( self.inputModeDidChange(_:) ),
											   name: NSNotification.Name.UITextInputCurrentInputModeDidChange,
											   object: nil)
	}
	
	@objc func inputModeDidChange(_: NSNotification) {
		setCurrentLanguage(inputTextView.textInputMode!.primaryLanguage!)
	}
	
	// MARK: - Input language support
	var currentLanguage: String? = nil
	
	func setCurrentLanguage(_ language: String) {
		if let lang = currentLanguage {
			setDocument(text: inputTextView.text, for: lang)
		}
		currentLanguage = language
		setInput( text: document(of: currentLanguage!) )
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


























