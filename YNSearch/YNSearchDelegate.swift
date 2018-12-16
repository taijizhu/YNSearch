//
//  YNSearchDelegate.swift
//  YNSearch
//
//  Created by YiSeungyoun on 2017. 4. 16..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import UIKit

@objc public protocol YNSearchDelegate: YNSearchMainViewDelegate, YNSearchListViewDelegate, YNSearchViewControllerDelegate { }

@objc public protocol YNSearchMainViewDelegate {
    func ynCategoryButtonClicked(text: String)
    
    func ynSearchHistoryButtonClicked(text: String)

    func ynSearchMainViewSearchHistoryChanged()

}

@objc public protocol YNSearchListViewDelegate {    
    func ynSearchListViewClicked(key: String)
    
    func ynSearchListViewClicked(object: Any)
    
    func ynSearchListView(_ ynSearchListView: UITableView, didSelectRowAt indexPath: IndexPath)
    
    func ynSearchListView(_ ynSearchListView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    
    func ynSearchListViewDidScroll()

    
}

@objc public protocol  YNSearchViewControllerDelegate {
    func requestDataReload()
}

public extension YNSearchMainViewDelegate {
    func ynSearchMainViewSearchHistoryChanged() { }
}

public extension YNSearchListViewDelegate {
    func ynSearchListViewClicked(object: Any) { }
    
    func ynSearchListViewDidScroll() { }

}



