//
//  DragGestureBootcamp.swift
//  swiftui_bootcamp_intermidiate
//
//  Created by Vijay Parmar on 04/10/23.
//

import SwiftUI

struct DragGestureBootcamp: View {
    
    @State var offset:CGSize = .zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .offset(offset)
            .gesture(
            DragGesture()
                .onChanged({ value in
                    withAnimation(.spring()) {
                        offset = value.translation
                    }
                })
                .onEnded({ value in
                    withAnimation(.spring()) {
                        offset = .zero
                    }

                })
            )
    }
}

#Preview {
    DragGestureBootcamp()
}
