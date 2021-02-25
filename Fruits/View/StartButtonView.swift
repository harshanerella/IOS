//
//  StartButtonView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 13/02/21.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK:- properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK:- body
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8.0) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    
                    .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal, 16.0)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }//: Button
        .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
        
        
        
    }
}

// MARK: Preview

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartButtonView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            StartButtonView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
