//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 27/02/21.
//

import SwiftUI

struct SettingsLabelView: View {
    var LabelText: String
    var ImageText: String
    
    var body: some View {
        HStack {
            Text(LabelText)
            Spacer()
            Image(systemName: ImageText)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(LabelText: "Settings", ImageText: "info.circle")
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
    }
}
