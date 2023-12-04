//
//  CustomAlertConfig.swift
//  CustomAlertDemo
//
//  Created by wli on 01/12/23.
//

import SwiftUI

struct CustomAlertConfig {
    var isActive: Bool = false
    var title: String?
    var description: String?
    var rightButtonTitle: String
    var rightButtonAction: (() -> Void)
    var leftButtonTitle: String?
    var leftButtonAction: (() -> Void)?
    var leftText: String?
    var titleColor: Color? = .black
    var descriptionColor: Color? = .black
    var leftButtonTitleColor: Color? = .purple
    var leftTextColor: Color? = .black
    var rightButtonTitleColor: Color? = .white
    var rightButtonBackgroungColor: Color? = .purple
    var alertViewBackgroundColor: Color? = .white
    var isSingleButtonCenter: Bool = false
    var titleFontSize: CGFloat = 18
    var descriptionFontSize: CGFloat = 16
    var leftButtonFontSize: CGFloat = 16
    var rightButtonFontSize: CGFloat = 16
    var leftTextFontSize: CGFloat = 16
}
