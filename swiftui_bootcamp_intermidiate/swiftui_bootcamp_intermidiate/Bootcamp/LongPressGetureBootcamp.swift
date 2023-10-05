//
//  LongPressGetureBootcamp.swift
//  swiftui_bootcamp_intermidiate
//
//  Created by Vijay Parmar on 03/10/23.
//

import SwiftUI

struct LongPressGetureBootcamp: View {
    
    @State var isComplete:Bool = false
    @State var isSuccess:Bool = false
    
    var body: some View {
       
        VStack{
            
        Rectangle()
                .fill(isSuccess ? .green : .blue)
                .frame(maxWidth: isComplete ? .infinity : 0)
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.gray)
            
            
            HStack{
                
                Text("Click Me")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) { (isPressing) in
                            
                        if isPressing{
                            withAnimation(.easeInOut(duration: 1.0)) {
                                isComplete = true
                            }
                        }else{
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
                                if !isSuccess{
                                    withAnimation(.easeInOut) {
                                        isComplete = false
                                    }
                                }
                            })
                            
                        }
                    }perform:{
                        withAnimation(.easeOut) {
                            isSuccess = true
                        }
                    }
                
                
                Text("Clear")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    .onTapGesture {
                        isComplete = false
                        isSuccess = false
                    }
                
            }
            
            
        }
        
        
            
    }
}

#Preview {
    LongPressGetureBootcamp()
}
