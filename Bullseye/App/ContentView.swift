//
//  ContentView.swift
//  Bullseye
//
//  Created by mihaly bence on 16.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var mScoreVisible : Bool = false
    @State private var mSliderValue : Double = 50.0
    @State private var mGame : Game = Game()
    
    var body: some View {
        VStack {
            Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN")
                .bold()
                .kerning(2)
                .multilineTextAlignment(.center)
                .lineSpacing(5)
                .font(.footnote)
            Text(String(mGame.Target))
                .kerning(-1)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: $mSliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button("HIT ME") {
                mScoreVisible = true;
            }
            .alert(isPresented: $mScoreVisible, content: {
                return Alert(title: Text("Score"), message: Text("Sliders value \(Int(mSliderValue.rounded()))\n" +
                    "Scored: \(mGame.CalculatePoints(value: Int(mSliderValue.rounded())))"), dismissButton: .default(Text("New Round")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 600, height: 300))
    }
}
			
