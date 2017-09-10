//
//  ViewController.swift
//  DelegateDemo
//
//  Created by Lori Wang on 2017/9/8.
//  Copyright © 2017年 Lori Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TablePageDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "ViewA"
        self.view.backgroundColor = UIColor.white
        
        // button
        let btn: UIButton = UIButton()
        btn.frame = CGRect(x: self.view.frame.width / 2 - 100, y: self.view.frame.height / 2 - 25 , width: 200, height: 50)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        btn.setTitle("Go to Table", for: .normal)
        btn.setTitleColor(UIColor.blue, for: .normal)
        btn.layer.cornerRadius = 10
        btn.addTarget(self, action: #selector(ViewController.onClickBtnToTable(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showTableCellName(_ tablePage: TableViewController, didSelectedData data: String) {
        self.alertMsg(msg: data)
    }
    
    func alertMsg(msg: String) {
        let alertController = UIAlertController(title: msg, message: "", preferredStyle: .alert)
        let confirm = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(confirm)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    func onClickBtnToTable(_ sender: UIButton) {
        let table: TableViewController = TableViewController()
        // 因此頁幫table代理做事情，故設定delegate = self
        table.delegate = self
        self.navigationController?.pushViewController(table, animated: true)
    }
    
    
    
    
}

