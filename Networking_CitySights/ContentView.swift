//
//  ContentView.swift
//  Networking_CitySights
//
//  Created by tom montgomery on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    
    // pass in our query as a binding
    @State var query: String = ""
    // get a handle on our data service for the api call
    var service = DataService()
    
    var body: some View {
        
        HStack {
            TextField("What are you looking for?", text: $query)
            Button {
                // TDOD implement query
            } label: {
               Text("Go")
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            }
        }
        .padding()
        .task {
            await service.businessSearch()
        }
        
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, friend!")
            Text("More text!")
            Text("Feature A")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
