//
//  Balance.swift
//  Dataflow
//
//  Created by csuftitan on 11/27/23.
//

import SwiftUI

struct Balance: View {
    
    @EnvironmentObject var profile : Profile
    
    var body: some View {
        if profile.isLoggedIn == false{
            Text("$0")
        } else {
            Text("$100")
        }
    }
}

#Preview {
    Balance()
}
