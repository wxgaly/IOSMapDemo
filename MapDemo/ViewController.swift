//
//  ViewController.swift
//  MapDemo
//
//  Created by wxgaly on 2018/6/24.
//  Copyright © 2018年 wxgaly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BMKMapViewDelegate {

    var _mapView: BMKMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//       let identifier = Bundle.main.bundleIdentifier
//        print(identifier)
        //测试增加一个label
        let label = UILabel.init(frame: CGRect.init(x: 100, y: 100, width: 300, height: 100))
        label.text = "这是一个label"
        label.textColor = UIColor.black
        label.backgroundColor = UIColor.red
        
        //mapview初始化
        _mapView = BMKMapView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        
        
        self.view.addSubview(_mapView!)
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        _mapView?.viewWillAppear()
        _mapView?.delegate = nil // 此处记得不用的时候需要置nil，否则影响内存的释放
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        _mapView?.viewWillDisappear()
        _mapView?.delegate = nil // 不用时，置nil
    }


}

