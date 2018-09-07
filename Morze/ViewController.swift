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
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// MARK: - UI Elements
	@IBOutlet weak var inputTextView: UITextView!
	@IBOutlet weak var outputMorzeView: UITextView!
		
	// MARK: - UITextViewDelegate
	
	func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
		if textView == inputTextView {
			outputMorzeView.text.append("textViewShouldBeginEditing \n")
		}
		return true;
	}
	
	func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
		return true;
	}
	
	func textViewDidBeginEditing(_ textView: UITextView) {
		
	}
	
	func textViewDidEndEditing(_ textView: UITextView) {
		
	}
	
	func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
		return true;
	}
	
	func textViewDidChange(_ textView: UITextView) {
		
	}
	
	func textViewDidChangeSelection(_ textView: UITextView) {
		
	}
	
	func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
		return true;
	}
	
	func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
		return true;
	}
	
	func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool {
		return true;
	}
	
	func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange) -> Bool {
		return true;
	}
	
}

