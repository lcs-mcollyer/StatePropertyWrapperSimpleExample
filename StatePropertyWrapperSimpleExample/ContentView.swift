//
//  ContentView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Matthew Collyer on 2021-11-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Radius")
                .bold()
            TextField("Radius",
                      text: .constant(""),
                      prompt:  Text("e.g. : 24.5"))
        }
        .navigationTitle("Circle")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()   
    }
}
