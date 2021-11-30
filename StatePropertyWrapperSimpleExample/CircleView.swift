//
//  CircleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Matthew Collyer on 2021-11-29.
//

import SwiftUI

struct CircleView: View {
    //MARK: stored property
    @State var radius: Double = 10.0
    
    //MARK: Computed property
    var area: Double{
        return Double.pi * radius * radius
    }
    
    
    // User interface
    var body: some View {
        VStack{
            
            
            
            //inpute
            Text("Radius")
                .bold()
            HStack{
                Spacer()
                Text("\( String(format: "%.2f", area)) square units ")
                Spacer()
            }
            
            
            // The syntax of $ says to use the property, radius and BIND it to their control
            
            Slider(value: $area, in: 0.0...100.0, label: {
                Text("Radius")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   
                   maximumValueLabel: {
                Text("100.0")
            })
            
            //output
            Text("Area")
                .bold()
            
            
            Text("\(area) square units")
            
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CircleView()
        }
    }
}
