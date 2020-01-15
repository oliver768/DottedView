//
//  ViewController.swift
//  DottedView
//
//  Created by Ravindra Sonkar on 08/10/19.
//  Copyright © 2019 Ravindra Sonkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dottedView: DottedView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let yourViewBorder = CAShapeLayer()
//        yourViewBorder.strokeColor = UIColor.black.cgColor
//        yourViewBorder.lineDashPattern = [2, 2]
//        yourViewBorder.frame = dottedView.bounds
//        yourViewBorder.fillColor = nil
//        yourViewBorder.path = UIBezierPath(rect: dottedView.bounds).cgPath
//        dottedView.layer.addSublayer(yourViewBorder)
//        dottedView.backgroundColor = UIColor.clear
        // Do any additional setup after loading the view.
    }
}
@IBDesignable
class DottedView: UIView {
    override func draw(_ rect: CGRect) {
        let color = UIColor.green.cgColor
        let shapeLayer:CAShapeLayer = CAShapeLayer()
        shapeLayer.bounds = self.bounds
        shapeLayer.position = CGPoint(x: self.bounds.width/2, y: self.bounds.height/2)
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = color
        shapeLayer.lineWidth = 2
        shapeLayer.lineJoin = CAShapeLayerLineJoin.round
        shapeLayer.lineDashPattern = [6,3]
        shapeLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 5).cgPath
        self.layer.addSublayer(shapeLayer)
    }
}
