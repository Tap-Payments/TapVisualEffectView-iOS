//
//  ViewController.swift
//  TapVisualEffectViewExample
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import struct	CoreGraphics.CGGeometry.CGPoint
import struct	CoreGraphics.CGGeometry.CGRect
import struct	CoreGraphics.CGGeometry.CGSize
import enum		TapVisualEffectView.TapBlurEffectStyle
import class	TapVisualEffectView.TapVisualEffectView
import class	UIKit.UISegmentedControl.UISegmentedControl
import class	UIKit.UIView.UIView
import class	UIKit.UIViewController.UIViewController

internal class ViewController: UIViewController {

    //MARK: - Internal -
    //MARK: Methods

    internal override func viewDidLoad() {
        
        super.viewDidLoad()
        self.blurView?.style = .extraLight
    }
    
    //MARK: - Private -
    //MARK: Properties
	
	@IBOutlet private weak var segmentedControl: UISegmentedControl? {
		
		didSet {
			
			self.updateSegments()
		}
	}
	
    @IBOutlet private weak var blurView: TapVisualEffectView?
    
    private var maskIsOn = false
    
    //MARK: Methods
    
    @IBAction private func segmentedControlValueChanged(_ segmentedControl: UISegmentedControl) {
        
        UIView.animate(withDuration: 0.3) {
			
			self.blurView?.style = TapBlurEffectStyle.allCases[segmentedControl.selectedSegmentIndex]
        }
    }
    
    @IBAction private func maskButtonTouchUpInside(_ sender: Any) {
        
        self.maskIsOn = !self.maskIsOn
        self.updateMask()
    }
	
	private func updateSegments() {
		
		self.segmentedControl?.removeAllSegments()
		
		for (index, style) in TapBlurEffectStyle.allCases.enumerated() {
			
			self.segmentedControl?.insertSegment(withTitle: style.description, at: index, animated: false)
		}
		
		self.segmentedControl?.selectedSegmentIndex = 0
	}
    
    private func updateMask() {
        
        if self.maskIsOn {
            
            self.blurView?.mask = self.createMaskView()
        }
        else {
            
            self.blurView?.mask = nil
        }
    }
    
    private func createMaskView() -> UIView {
        
        let maskSize = CGSize(width: 200.0, height: 200.0)
        let maskCenter = CGPoint(x: self.view.bounds.midX, y: self.view.bounds.midY)
        let maskFrame = CGRect(x: maskCenter.x - 0.5 * maskSize.width, y: maskCenter.y - 0.5 * maskSize.height, width: maskSize.width, height: maskSize.height)
        
        let maskView = UIView(frame: maskFrame)
        maskView.backgroundColor = .black
        maskView.tap_cornerRadius = 100.0
        
        return maskView
    }
}
