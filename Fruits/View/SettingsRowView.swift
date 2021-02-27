//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 27/02/21.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                  Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                  Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                  Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                  EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "harsha")
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .previewLayout(.fixed(width: 350.0, height: 50))
            SettingsRowView(name: "harsha")
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .previewLayout(.fixed(width: 350.0, height: 50))
        }
            
            
            
    }
}
