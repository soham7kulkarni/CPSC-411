//
//  ContentView.swift
//  Dataflow
//
//  Created by csuftitan on 11/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = "100"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("The value of counter is \(counter)")
            TextField("", text: $counter)
        }
        .padding()
    }
}

#Preview {
    Account().environmentObject(Profile())
}
