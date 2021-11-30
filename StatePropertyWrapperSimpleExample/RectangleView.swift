//
//  RectangleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Matthew Collyer on 2021-11-29.
//

import SwiftUI

struct RectangleView: View {
    @State var length: Double = 10
    @State var width: Double = 5
    var area: Double{
        return length * width
    }
    
    var body: some View {
        VStack{
            Slider(value: .constant(10.0), in: 0.0...100.0, label: {
                Text("Length")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   
                   maximumValueLabel: {
                Text("100.0")
            })
            Slider(value: .constant(5.0), in: 0.0...100.0, label: {
                Text("Width")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   
                   maximumValueLabel: {
                Text("50.0")
            })
            
            
            
            
            
            Text("\(area) square units")
        }
        .navigationTitle("Rectangle")
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RectangleView()
        
        }
    }
}
