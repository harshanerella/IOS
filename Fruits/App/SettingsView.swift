//
//  SettingsView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 27/02/21.
//

import SwiftUI

struct SettingsView: View {
    //Mark Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //Mark Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Section: 1
                    GroupBox(
                      label:
                        SettingsLabelView(LabelText: "Fructus", ImageText: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                          Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(9)
                          
                          Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                            .font(.footnote)
                        }
                    }
                    
                    //Section 2
                    GroupBox(
                      label: SettingsLabelView(LabelText: "Customization", ImageText: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                          .padding(.vertical, 8)
                          .frame(minHeight: 60)
                          .layoutPriority(1)
                          .font(.footnote)
                          .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                          if isOnboarding {
                            Text("Restarted".uppercased())
                              .fontWeight(.bold)
                              .foregroundColor(Color.green)
                          } else {
                            Text("Restart".uppercased())
                              .fontWeight(.bold)
                              .foregroundColor(Color.secondary)
                          }
                        }
                        .padding()
                        .background(
                          Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    //Section 3
                    GroupBox(label:
                        SettingsLabelView(LabelText: "Application", ImageText: "iphone")) {
                        SettingsRowView(name: "Developer", content: "Harsha")
                        SettingsRowView(name: "Designer", content: "Harsha")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Git", linkLabel: "FruitsGit", linkDestination: "https://github.com/harshanerella/IOS")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            .navigationBarTitle("Settings", displayMode: .large)
            .navigationBarItems(
                trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
            )
        }
        
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
