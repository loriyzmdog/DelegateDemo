//
//  PageBDelegate.swift
//  DelegateDemo
//
//  Created by Lori Wang on 2017/9/8.
//  Copyright © 2017年 Lori Wang. All rights reserved.
//

import Foundation

protocol TablePageDelegate {
    func showTableCellName(_ tablePage: TableViewController, didSelectedData data: String)
}
