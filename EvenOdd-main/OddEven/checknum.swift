//
//  checknum.swift
//  OddEven
//
//  Created by DCS on 12/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//
import UIKit

class checknum: UIViewController
{
     var number  = ""
    var  checkData = ""
    private let mylabel : UILabel = {
        let label = UILabel()
        lbl.text = ""
        
        lbl.textColor = .black
        
        lbl.textAlignment = .center
        return lbl
    }()
 
    private let view:UIView = {
        let  myview = UIView()
        myview.backgroundColor = .white
        myview.layer.cornerRadius = 12
        myview.layer.opacity = 0.2
        return myview
    }()
    private let view1:UIView = {
        let  myview1 = UIView()
        myview1.backgroundColor = .white
        myview1.layer.cornerRadius = 12
        myview1.layer.opacity = 1
        return myview1
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(image)
        view.addSubview(view)
        view.addSubview(view1)
    view.addSubview(mylabel)
        
     mylabel.text = number + " Is " + checkData + " Data "
        
    }
    override func viewDidLayoutSubviews() {
        mylabel.frame = CGRect(x: 79, y: 442, width: 214, height: 40)
        view.frame = CGRect(x:8, y: 334, width: 357, height: 340)
        view1.frame = CGRect(x:54, y: 409, width: 267, height: 171)
    }
}

