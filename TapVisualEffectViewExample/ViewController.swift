//
//  ViewController.swift
//  TapVisualEffectViewExample
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

import struct CoreGraphics.CGGeometry.CGPoint
import struct CoreGraphics.CGGeometry.CGRect
import struct CoreGraphics.CGGeometry.CGSize
import class TapVisualEffectView.TapVisualEffectView
import class UIKit.UISegmentedControl.UISegmentedControl
import class UIKit.UIView.UIView
import class UIKit.UIViewController.UIViewController

internal class ViewController: UIViewController {

    //MARK: - Internal -
    //MARK: Methods

    internal override func viewDidLoad() {
        
        super.viewDidLoad()
        self.blurView?.style = .extraLight
    }
    
    //MARK: - Private -
    //MARK: Properties
    
    @IBOutlet private weak var blurView: TapVisualEffectView?
    
    private var maskIsOn = false
    
    //MARK: Methods
    
    @IBAction private func segmentedControlValueChanged(_ segmentedControl: UISegmentedControl) {
        
        UIView.animate(withDuration: 0.3) {
            
            switch segmentedControl.selectedSegmentIndex {
                
            case 1:
                
                self.blurView?.style = .light
                break
                
            case 2:
                
                self.blurView?.style = .dark
                break
                
            default:
                
                self.blurView?.style = .extraLight
                break
            }
        }
    }
    
    @IBAction private func maskButtonTouchUpInside(_ sender: Any) {
        
        self.maskIsOn = !self.maskIsOn
        self.updateMask()
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
        maskView.cornerRadius = 100.0
        
        return maskView
    }
}
