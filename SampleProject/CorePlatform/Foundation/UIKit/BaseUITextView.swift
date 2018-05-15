//
//  BaseUITextView.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//


#if os(iOS)
import UIKit
import Foundation
  
// MARK: - Methods
open class BaseUITextView: UITextView {
	
	/// SwifterSwift: Clear text.
	open func clear() {
		text = ""
		attributedText = NSAttributedString(string: "")
	}
	
	/// SwifterSwift: Scroll to the bottom of text view
	open func scrollToBottom() {
		let range = NSMakeRange((text as NSString).length - 1, 1)
		scrollRangeToVisible(range)
		
	}
	
	/// SwifterSwift: Scroll to the top of text view
	open func scrollToTop() {
		let range = NSMakeRange(0, 1)
		scrollRangeToVisible(range)
	}
	
}
#endif
