//
//  CustomAlertConfig.swift
//  CustomAlertDemo
//
//  Created by wli on 01/12/23.
//

import SwiftUI

struct CustomAlertView: View {
    @Binding var isActive: Bool
    var config : CustomAlertConfig
    var body: some View {
        ZStack{
            Color(.black)
                .opacity(0.5)
            if config.isActive{
                VStack(alignment: .leading){
                    if let title = config.title {
                        HStack{
                            Spacer()
                            Text(title)
                                .font(.system(size: config.titleFontSize , weight: .bold))
                                .foregroundColor(config.titleColor)
                            Spacer()
                        }
                        .padding(.bottom, 20)
                    }
                    if let description = config.description{
                        Text(description)
                            .font(.system(size: config.descriptionFontSize))
                            .foregroundColor(config.descriptionColor)
                            .padding(.bottom, 20)
                    }
                    
                    if (config.leftButtonTitle?.count ?? 0) > 0 || (config.leftText?.count ?? 0) > 0 {
                        HStack{
                            if let leftButtonTitle = config.leftButtonTitle{
                                Button {
                                    config.leftButtonAction?()
                                    isActive = false
                                } label: {
                                    VStack{
                                        Text(leftButtonTitle)
                                            .font(.system(size: config.leftButtonFontSize , weight: .bold))
                                            .foregroundColor(config.leftButtonTitleColor)
                                    }
                                }
                            }else if let leftText = config.leftText {
                                Text(leftText)
                                    .font(.system(size: config.leftTextFontSize , weight: .bold))
                                    .foregroundColor(config.leftTextColor)
                            }
                            Spacer()
                            Button {
                                config.rightButtonAction()
                                isActive = false
                            } label: {
                                VStack{
                                    Text(config.rightButtonTitle)
                                        .font(.system(size: config.rightButtonFontSize , weight: .bold))
                                        .foregroundColor(config.rightButtonTitleColor)
                                }
                                .padding(.horizontal,20)
                                .padding(.vertical,10)
                                .background(config.rightButtonBackgroungColor)
                                .cornerRadius(10)
                            }
                        }
                    }
                    else if config.isSingleButtonCenter {
                        HStack{
                            Spacer()
                            Button {
                                config.rightButtonAction()
                                isActive = false
                            } label: {
                                VStack{
                                    Text(config.rightButtonTitle)
                                        .font(.system(size: config.rightButtonFontSize , weight: .bold))
                                        .foregroundColor(config.rightButtonTitleColor)
                                }
                                .padding(.horizontal,20)
                                .padding(.vertical,10)
                                .background(config.rightButtonBackgroungColor)
                                .cornerRadius(20)
                            }
                            Spacer()
                        }
                    }
                    else if (config.leftButtonTitle?.count ?? 0) <= 0 && (config.leftText?.count ?? 0) <= 0 {
                        HStack{
                            Spacer()
                            Button {
                                config.rightButtonAction()
                                isActive = false
                            } label: {
                                VStack{
                                    Text(config.rightButtonTitle)
                                        .font(.system(size: config.rightButtonFontSize , weight: .bold))
                                        .foregroundColor(config.rightButtonTitleColor)
                                }
                                .padding(.horizontal,20)
                                .padding(.vertical,10)
                                .background(config.rightButtonBackgroungColor)
                                .cornerRadius(20)
                            }
                        }
                    }
                }
                .padding()
                .fixedSize(horizontal: false, vertical: true)
                .frame(minWidth: 0 , maxWidth: .infinity)
                .background(config.alertViewBackgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(30)
            }
        }
        .ignoresSafeArea()
    }
}
