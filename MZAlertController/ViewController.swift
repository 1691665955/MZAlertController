//
//  ViewController.swift
//  MZAlertController
//
//  Created by 曾龙 on 2021/12/16.
//

import UIKit

let SCREEN_WIDTH  = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

class ViewController: UIViewController {

    lazy var alertBtn: UIButton = {
        let btn = UIButton.init(type: .custom)
        btn.frame = CGRect.init(x: (SCREEN_WIDTH - 180) / 2, y: 100, width: 180, height: 40)
        btn.setTitle("MZAlertController", for: .normal)
        btn.setTitleColor(.brown, for: .normal)
        return btn
    }()
    
    lazy var sheetBtn: UIButton = {
        let btn = UIButton.init(type: .custom)
        btn.frame = CGRect.init(x: (SCREEN_WIDTH - 180) / 2, y: 200, width: 180, height: 40)
        btn.setTitle("MZActionSheetController", for: .normal)
        btn.setTitleColor(.brown, for: .normal)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(alertBtn)
        alertBtn.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        
        view.addSubview(sheetBtn)
        sheetBtn.addTarget(self, action: #selector(showSheet), for: .touchUpInside)
    }

    @objc func showAlert() {
        let alertController = TDAlertController()
        present(alertController, animated: true, completion: nil)
    }
    
    @objc func showSheet() {
        let sheetController = TDActionSheetController()
        present(sheetController, animated: true, completion: nil)
    }
}

