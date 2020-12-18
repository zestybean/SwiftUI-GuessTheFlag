//
//  ContentView.swift
//  Shared
//
//  Created by Brando Lugo on 12/17/20.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    
    var correctAnswer = Int.random(in: 0...2)
    
    
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            Color(red: 0.1, green: 0.1, blue: 0.3).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                    Text(countries[correctAnswer])
                }
                    .foregroundColor(.white)
                ForEach(0..<3){ number in
                    Button(action: {
                        //Flag tapped
                    }, label: {
                        Image(self.countries[number])
                            .renderingMode(.original)     
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
