//
//  MagnificationGetureBootcamp.swift
//  swiftui_bootcamp_intermidiate
//
//  Created by Vijay Parmar on 04/10/23.
//

import SwiftUI

struct MagnificationGetureBootcamp: View {
    
    @State var currentAmount:CGFloat = 0
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                Circle().frame(width: 35, height: 35)
                    Text("Vijay Parmar")
                Spacer()
                Image(systemName: "ellipsis")
                
            }
            .padding(.horizontal)
            ZStack{
                Rectangle()
                    .frame(height: 300)
                Image("1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .scaleEffect(1+currentAmount)
                    .gesture(
                        MagnificationGesture()
                            .onChanged { value in
                                currentAmount = value - 1
                            }
                            .onEnded { value in
                                withAnimation(.spring()) {
                                    currentAmount = 0
                                }
                            }
                        
                    )
            }
            
            HStack{
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
            }
            .padding(.horizontal)
            .font(.headline)
            Text("This is the caption for my photo")
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal)
            
            
        }
        
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//            .padding(40)
//            .background(Color.red.cornerRadius(10))
//            .scaleEffect(1+currentAmount)
//            .gesture(
//                MagnificationGesture()
//                    .onChanged({ value in
//                        currentAmount = value - 1
//                    })
//            )
    }
}

#Preview {
    MagnificationGetureBootcamp()
}
