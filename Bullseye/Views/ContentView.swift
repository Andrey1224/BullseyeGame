//
//  ContentView.swift
//  Bullseye
//
//  Created by Andrii Nepodymka on 7/15/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    
    @State private var sliderValue = 50.0
    
    @State private var game = Game()
    
    var body: some View {
        
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Put the bullseye as close as you can to".uppercased())
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                    
                
                Text(String(game.target))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
                HStack {
                    Text("1")
                        .bold()
                    
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    
                    Text("100")
                        .bold()
                }
                .padding()
                
                Button(action: {
                        print("Hello, SwiftUI")
                        alertIsVisible = true}) {
                    Text("Hit me".uppercased())
                        .bold()
                        .font(.title3)
                }
                .padding(20.0)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
            
                .alert(isPresented: $alertIsVisible, content: {
                    
                    let roundedValue = Int(sliderValue.rounded())
                    return Alert(title: Text("Hello There!"), message: Text("the sliders value is \(roundedValue).\n" + "You Scored \(game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Awesome")))
                })
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
