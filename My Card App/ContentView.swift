//
//  ContentView.swift
//  My Card App
//
//  Created by Nigora on 22/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ZStack {
                Color(red: 0.10, green: 0.65, blue: 0.81).ignoresSafeArea()
                VStack {
                    Image("ava").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 150, height: 150).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(lineWidth: 5))
                    Text("Nigora Fayzullaeva")
                        .font(.title)
                        .fontWeight(.heavy)
                    Text("iOS/Web Developer")
                        .font(.headline)
                        .fontWeight(.light)
                    Divider()
                    Card(image: "phone.fill", message: "+90531678****")
                    Card(image: "envelope.fill", message: "nifayzi@gmail.com")
                }.foregroundColor(.white)
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25).padding(.horizontal).frame(height: 55).overlay(HStack {
            Image(systemName: image)
            Text(message)
                .fontWeight(.semibold)
        }.foregroundColor(Color(red: 0.10, green: 0.65, blue: 0.81)))
    }
}
