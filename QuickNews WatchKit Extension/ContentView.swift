//
//  ContentView.swift
//  QuickNews WatchKit Extension
//
//  Created by admin on 8/19/21.
//  Copyright © 2021 admin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Eugene!")
                .font(.title)
                .fontWeight(.thin)
            Text("Do you best all the time.")
                .fontWeight(.thin)
            Spacer()
            NavigationLink(destination: ArticlesView()) {
                Text("Start")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
