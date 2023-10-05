//
//  ScrollViewReaderBootcamp.swift
//  swiftui_bootcamp_intermidiate
//
//  Created by Vijay Parmar on 05/10/23.
//

import SwiftUI

struct ScrollViewReaderBootcamp: View {
    var body: some View {
        ScrollView{
            
            ScrollViewReader{ proxy in
                
                Button("Click here to go to 30"){
                    withAnimation {
                        proxy.scrollTo(30,anchor: .top)
                    }
                    
                }
                
                ForEach(0..<50){ index in
                 
                    Text("This is Item # \(index)")
                        .font(.headline)
                        .frame(height: 200)
                        .frame(maxWidth: .infinity)
                        .background(Color.random())
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .padding()
                        .id(index)
                    
                }
                
            }
        }
    }
}

#Preview {
    ScrollViewReaderBootcamp()
}
