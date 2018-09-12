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
	func textViewDidChange(_ textView: UITextView) {
		if textView == inputTextView {
			outputMorzeView.text = code(text: inputTextView.text)
		}
	}
	
}

