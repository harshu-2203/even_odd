//
//  ViewController.swift
//  OddEven
//
//  Created by DCS on 12/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let txtbox:UITextField = {
        let txtfld = UITextField()
        txtfld.layer.cornerRadius = 10
        txtfld.placeholder = "Enter The value "
        txtfld.backgroundColor = UIColor.black
        txtfld.textColor = .white 
        txtfld.textAlignment = .center
        return txtfld
    }()
    private let btchk : UIButton = {
        let bt = UIButton()
        bt.setTitle("Check ", for: .normal)
        bt.backgroundColor = .grey
        bt.layer.borderWidth = 3
        bt.layer.borderColor = UIColor.white.cgColor
        bt.layer.cornerRadius = 15
        bt.addTarget(self, action: #selector(checkvalue), for: .touchUpInside)
        return bt
    }()
    

    
    private let view:UIView = {
        let  myvw = UIView()
        myvw.backgroundColor = .blue
        myvw.layer.cornerRadius = 12
        myvw.layer.opacity = 0.22
        return vw
    }()
    private let view1:UIView = {
        let  vw1 = UIView()
        vw1.backgroundColor = .white
        myvw1.layer.cornerRadius = 12
        myvw1.layer.opacity = 1
        return myvw1
    }()
    private let view2:UIView = {
        let  myvw3 = UIView()
        myvw3.backgroundColor = .white
        myvw3.layer.cornerRadius = 15
        myvw3.layer.opacity = 0.90
        return myvw3
    }()
    private let lable:UILabel = {
        let  myvw2 = UILabel()
        
        myvw2.text = "Checked"
        myvw2.textAlignment = .center
        
        return myvw2
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        
        view.addSubview(view)
        view.addSubview(view2)
        view.addSubview(lable)
        
        view.addSubview(view1)
        
        view.addSubview(txtbox)
        view.addSubview(btchk)
        
       
    }
    override func viewDidLayoutSubviews() {
        
        txtbox.frame = CGRect(x: 79, y: 442, width: 214, height: 35)
        btchk.frame = CGRect(x: 115, y:504,width: 150, height: 40)
        
        view.frame = CGRect(x:8, y: 334, width: 357, height: 340)
        view1.frame = CGRect(x:54, y: 409, width: 267, height: 171)
        lable.frame = CGRect(x:97, y: 317, width: 181, height: 33)
        view2.frame = CGRect(x:97, y: 317, width: 181, height: 33)
        
    }
    @objc func checkvalue(){
        let cn = checknum()
        guard let txtnumber = Int(txtbox.text!) else {
            print("Opps!! Wrong input....")
            let alert = UIAlertController(title: "ALERT", message: "Please Enter proper Value.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
            DispatchQueue.main.async  {
                self.present(alert, animated: true)
            }
            
            return
        }
        if txtnumber % 2 == 0 {
            cn.checkData   = "Even "
        }else{
            cn.checkData   = "Odd"
        }
        
            cn.number = String(txtnumber)
        navigationController?.pushViewController(cn, animated: true)
    }
}

