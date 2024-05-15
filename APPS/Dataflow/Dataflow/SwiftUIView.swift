//
//  SwiftUIView.swift
//  Dataflow
//
//  Created by csuftitan on 11/27/23.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var colorInput = "blue"
    
    var body: some View {
        
        VStack{
            Rectangle()
                .foregroundColor(colorInput.lowercased() == "blue" ? .blue : .black)
            
            control(userInput: $colorInput)
        }
       
    }
}

#Preview {
    SwiftUIView()
}
