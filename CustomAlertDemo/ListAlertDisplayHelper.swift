//
//  ListAlertDisplayHelper.swift
//  CustomAlertDemo
//
//  Created by wli on 01/12/23.


import SwiftUI

struct ListDataModel: Identifiable {
    var id: Int
    var alertName: String
}

class ListAlertDisplay:ObservableObject {
    
    var alertList: [ListDataModel] = [
        ListDataModel(id: 1, alertName: "Title with description and left and right button alert"),
        ListDataModel(id: 2, alertName: "Title with description and left text and right button alert"),
        ListDataModel(id: 3, alertName: "Description with left text and right button alert"),
        ListDataModel(id: 4, alertName: "Title with both left and right button alert"),
        ListDataModel(id: 5, alertName: "Title with left text and right button alert"),
        ListDataModel(id: 6, alertName: "Description with left and right button alert"),
        ListDataModel(id: 7, alertName: "Title only"),
        ListDataModel(id: 8, alertName: "Description only"),
        ListDataModel(id: 9, alertName: "Title with description alert"),
        ListDataModel(id: 10, alertName: "Customized title with description and Left button alert"),
    ]
    
  
}
