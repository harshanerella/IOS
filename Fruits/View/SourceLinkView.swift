//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 26/02/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link(destination: /*@START_MENU_TOKEN@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/, label: {
                    Text("Wikipedia")
                })
                Image(systemName: "arrow.up.right.square")
            }//: HStack
            .font(.footnote)
            
        }
        
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .previewLayout(.sizeThatFits)
    }
}
