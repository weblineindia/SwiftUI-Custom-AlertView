//
//  ContentView.swift
//  CustomAlertDemo
//
//  Created by wli on 01/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false
    @State var alertTypeId: Int = 1
    @StateObject var listDataVM = ListAlertDisplay()
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        Section{
                            ForEach(listDataVM.alertList) { alerts in
                                Button(alerts.alertName) {
                                    alertTypeId = alerts.id
                                    withAnimation(.spring()){
                                        isActive = true
                                    }
                                }
                            }
                        }
                    }
                    .listStyle(.plain)
                }
                if isActive {
                   if alertTypeId == 1{
                       CustomAlertView(isActive: $isActive, config: configWithTitleDescriptionWithTwoButton())
                    }
                    else if alertTypeId == 2 {
                        CustomAlertView(isActive: $isActive, config: configWithTitleDescriptionWithOneLeftText())
                    }
                    else if alertTypeId == 3 {
                        CustomAlertView(isActive: $isActive, config: configWithDescriptionWithLeftText())
                    }
                    else if alertTypeId == 4 {
                        CustomAlertView(isActive: $isActive, config: configWithTitleWithTwoButton())
                    }
                    else if alertTypeId == 5 {
                        CustomAlertView(isActive: $isActive, config: configWithTitleWithLeftText())
                    }
                    else if alertTypeId == 6 {
                        CustomAlertView(isActive: $isActive, config: configWithDescriptionWithTwoButton())
                    }
                    else if alertTypeId == 7 {
                        CustomAlertView(isActive: $isActive, config: configWithTitleOnly())
                    }
                    else if alertTypeId == 8 {
                        CustomAlertView(isActive: $isActive, config: configWithDescriptionOnly())
                    }
                    else if alertTypeId == 9 {
                        CustomAlertView(isActive: $isActive, config: configWithTitleDescription())
                    }
                    else if alertTypeId == 10 {
                        CustomAlertView(isActive: $isActive, config: configWithCustomTitleDescriptionTwoButton())
                    }
                }
                
            }
            .navigationTitle("Custom Alerts")
        }
    }
    
    func configWithTitleDescriptionWithTwoButton() -> CustomAlertConfig {
        var config = CustomAlertConfig(rightButtonTitle: "Ok", rightButtonAction: {print("Ok")})
        config.isActive = true
        config.title = "Title"
        config.description = "Hi there! This is Webline India's custom alert! :) We'll be updating you about NEW PRODUCT RELEASES. Stay tuned!"
        config.leftButtonTitle = "Cancel Button"
        config.leftButtonAction = {print("Left Button")}
        return config
    }
    func configWithTitleDescriptionWithOneLeftText() -> CustomAlertConfig {
        var config = CustomAlertConfig(rightButtonTitle: "Ok", rightButtonAction: {print("Ok")})
        config.isActive = true
        config.title = "Title"
        config.description = "Hi there! This is Webline India's custom alert! :) We'll be updating you about NEW PRODUCT RELEASES. Stay tuned!"
        config.leftText = "Text only"
        return config
    }
    func configWithDescriptionWithLeftText() -> CustomAlertConfig {
        var config = CustomAlertConfig(rightButtonTitle: "Ok", rightButtonAction: {print("Ok")})
        config.isActive = true
        config.description = "Hi there! This is Webline India's custom alert! :) We'll be updating you about NEW PRODUCT RELEASES. Stay tuned!"
        config.leftText = "Text only"
        return config
    }
    func configWithTitleWithTwoButton() -> CustomAlertConfig {
        var config = CustomAlertConfig(rightButtonTitle: "Ok", rightButtonAction: {print("Ok")})
        config.isActive = true
        config.title = "Title"
        config.leftButtonTitle = "Cancel Button"
        config.leftButtonAction = {print("Colse")}
        return config
    }
    func configWithTitleWithLeftText() -> CustomAlertConfig {
        var config = CustomAlertConfig(rightButtonTitle: "Ok", rightButtonAction: {print("Ok")})
        config.isActive = true
        config.title = "Title"
        config.leftText = "Text only"
        return config
    }
    func configWithDescriptionWithTwoButton() -> CustomAlertConfig {
        var config = CustomAlertConfig(rightButtonTitle: "Ok", rightButtonAction: {print("Ok")})
        config.description = "Hi there! This is Webline India's custom alert! :) We'll be updating you about NEW PRODUCT RELEASES. Stay tuned!"
        config.isActive = true
        config.leftButtonTitle = "Cancel Button"
        config.leftButtonAction = {print("Colse")}
        return config
    }
    func configWithTitleOnly() -> CustomAlertConfig {
        var config = CustomAlertConfig(rightButtonTitle: "Ok", rightButtonAction: {print("Ok")})
        config.title = "Title"
        config.titleColor = .purple
        config.isActive = true
        return config
    }
    func configWithDescriptionOnly() -> CustomAlertConfig {
        var config = CustomAlertConfig(rightButtonTitle: "Ok", rightButtonAction: {print("Ok")})
        config.description = "Hi there! This is Webline India's custom alert! :) We'll be updating you about NEW PRODUCT RELEASES. Stay tuned!"
        config.descriptionColor = .orange
        config.isActive = true
        config.isSingleButtonCenter = true
        return config
    }
    func configWithTitleDescription() -> CustomAlertConfig {
        var config = CustomAlertConfig(rightButtonTitle: "Ok", rightButtonAction: {print("Ok")})
        config.isActive = true
        config.title = "Title"
        config.description = "Hi there! This is Webline India's custom alert! :) We'll be updating you about NEW PRODUCT RELEASES. Stay tuned!"
        return config
    }
    func configWithCustomTitleDescriptionTwoButton() -> CustomAlertConfig {
        var config = CustomAlertConfig(rightButtonTitle: "Ok", rightButtonAction: {print("Ok")})
        config.isActive = true
        config.title = "Title"
        config.leftButtonTitle = "Cancel Button"
        config.leftButtonTitleColor = .orange
        config.rightButtonBackgroungColor = .orange
        config.rightButtonTitleColor = .black
        config.description = "Hi there! This is Webline India's custom alert! :) We'll be updating you about NEW PRODUCT RELEASES. Stay tuned!"
        config.descriptionColor = .indigo
        config.titleColor = .gray
        return config
    }

}

