//
//  ContentView.swift
//  Test
//
//  Created by Shenxin Xu on 12/5/23.
//

import SwiftUI
import Smooch
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Press me") {
                print("button pressed")
                // 1. login with token
                let jwtToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6ImFwcF82NTA4MDE3ODA0MTAwMGYwNmUyZDJiZDIifQ.eyJzY29wZSI6ImFwcFVzZXIiLCJpYXQiOjE3MDE4MzMxNjYsInVzZXJJZCI6Ijk3ODA1NzQ3LTFkMjAtNGFjMy04MTYyLTQ2NDdiMTg5MmQ0MSIsImV4cCI6MTcwMTgzMzc2Nn0.7ZZ8LHN15UddWlcYnsLXmtaMqYrAHEFc9Y-QqU-vosM"
                Smooch.login("97805747-1d20-4ac3-8162-4647b1892d41", jwt: jwtToken )
               
                // 2. show
                Smooch.show()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
