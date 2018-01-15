//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Kimaya Desai on 1/15/18.
//  Copyright © 2018 Kimaya99. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var fileImageView: UIImageView!
    @IBOutlet var trashImageView: UIImageView!
    
    var fileViewOrigin: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addPan(view: fileImageView)
        fileViewOrigin = fileImageView.frame.origin
    }
    
    func addPan(view: UIView){
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(ViewController.handlePan(sender:)))
        view.addGestureRecognizer(pan)
        
    }
    
    @objc func handlePan(sender :UIPanGestureRecognizer){
        let fileView = sender.view!
        
        
        switch sender.state {
        case .began, .changed:
           moveViewWithPan(view: fileView, sender: sender)
            
        case .ended:
            returnView(view: fileView)
            
        default:
            break
        }
    }
    
    func moveViewWithPan(view: UIView, sender :UIPanGestureRecognizer){
        let translation = sender.translation(in: view)
        view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
    }
    
    func returnView (view: UIView){
        
        if view.frame.intersects(trashImageView.frame){
            UIView.animate(withDuration: 0.3, animations: {
                view.alpha = 0.0
            })
        }
        else {
            UIView.animate(withDuration: 0.3, animations: {
                view.frame.origin = self.fileViewOrigin
            })
        }
    }
    
}

