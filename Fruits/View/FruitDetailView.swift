//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 25/02/21.
//

import SwiftUI

struct FruitDetailView: View {
    // Mark: Properties
    var fruit: Fruit
    
    //Mark: Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20.0) {
                    // Head Line
                    FruitHeader(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        //Nutrition
                        FruitsNutrientsView(fruit: fruit)
                        
                        //Sub Headline
                        Text("Learn More about \(fruit.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        
                        
                        //Link
                        SourceLinkView()
                            .padding(.top, 10.0)
                            .padding(.bottom, 40.0)
                        
                    }//: VStack
                    .padding(20.0)
                    // Standard maxWidth is 640 to center align view in all screen sizes(IPads..etc)
                    .frame(maxWidth: 640, alignment: .center)
                    
                
                }//: Vstack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }//: Scroll
            .edgesIgnoringSafeArea(.top)
        }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
      
    }
    
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[1])
    }
}
