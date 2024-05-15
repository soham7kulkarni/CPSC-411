//
//  Account.swift
//  Dataflow
//
//  Created by csuftitan on 11/27/23.
//

import SwiftUI

struct Account: View {
    
    @EnvironmentObject var profile : Profile
    
    var body: some View {
        VStack{
            if profile.isLoggedIn == false{
                Text("Please log in")
            } else {
                Text("Thank you for logging in")
            }
            Balance()
            
            Button {
                profile.isLoggedIn = true
            } label: {
                Text("Log in")
            }

        }
    }
}

#Preview {
    Account()
}
