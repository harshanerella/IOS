//
//  FruitCardView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 13/02/21.
//

import SwiftUI

struct FruitCardView: View {
    //MARK:- properties
    
    @State private var isAnimating: Bool = false
    
    //MARK:- BOADY
    var body: some View {
        ZStack {
            VStack(spacing: 20.0) {
                //FRUIT: Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color:  Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x:6, y:8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                //FRUIT: Title
                Text("Blueberry")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //FRUIT: HEadline
                Text("Bleberryies are sweet and nutritious and famous across the world")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16.0)
                    .frame(maxWidth: 480)
                
                //Start Button
                StartButtonView()
                
            }//: VSTACK
        }//: ZSTACK
        
        
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGrapefruitDark"), Color("ColorGrapefruitLight")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20.0)
        
        
    }
}

//MARK:- PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/320.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/640.0/*@END_MENU_TOKEN@*/))
    }
}
