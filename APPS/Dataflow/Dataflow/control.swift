//
//  control.swift
//  Dataflow
//
//  Created by csuftitan on 11/27/23.
//

import SwiftUI

struct control: View {
    
    @Binding var userInput: String
    
    var body: some View {
        TextField("", text: $userInput)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

//#Preview {
//    control()
//}
