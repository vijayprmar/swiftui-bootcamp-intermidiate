//
//  RotationGestureBootcamp.swift
//  swiftui_bootcamp_intermidiate
//
//  Created by Vijay Parmar on 04/10/23.
//

import SwiftUI

struct RotationGestureBootcamp: View {
    
    @State var angle : Angle = Angle(degrees: 0)
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(50)
            .background(Color.blue.cornerRadius(10))
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged({ value in
                        angle = value
                    })
                    .onEnded({ value in
                        withAnimation(.spring()) {
                            angle = Angle(degrees: 0)
                        }
                    })
            
            )
        
        
    }
}

#Preview {
    RotationGestureBootcamp()
}
