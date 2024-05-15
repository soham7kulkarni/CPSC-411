//
//  Animation.swift
//  UnitTesting
//
//  Created by csuftitan on 12/4/23.
//

import SwiftUI

struct Animation: View {

    
    @State var isAnimated: Bool = true
    
    var body: some View {
        
        VStack{
            Button("Button"){
                withAnimation(.default) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50.0 : 25.0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 200,
                    height: isAnimated ? 100 : 200)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 100 : 0)
            Spacer()
            
        }
    }
}

#Preview {
    Animation()
}
