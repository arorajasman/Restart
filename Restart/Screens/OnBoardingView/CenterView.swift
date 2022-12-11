//
//  CenterView.swift
//  Restart
//
//  Created by byteridge on 09/12/22.
//

import SwiftUI

// the code below is used to create the center view for the app
struct CenterView: View {
    var body: some View {
        // using the ZStack to create a Stack
        ZStack{
            // using the ZStack to create a Stack
            ZStack{
                // using the Circle() to create a circle
                
                // using the stroke() method to add a stroke to the circle and then
                // adding whiteColor with opacity 0.2 and line width of 40
                
                // adding a frame of height and width 260 and alignment in center using the frame() method 
                Circle()
                    .stroke(.white.opacity(0.2),lineWidth: 40)
                    .frame(width: 260, height: 260, alignment: .center)
                
                
                // using the Circle() to create a circle
                
                // using the stroke() method to add a stroke to the circle and then
                // adding whiteColor with opacity 0.2 and line width of 40
                
                // adding a frame of height and width 260 and alignment in center using the frame() method
                Circle()
                    .stroke(.white.opacity(0.2),lineWidth: 80)
                    .frame(width: 260, height: 260, alignment: .center)
                
            } ///:  ZStack
            
            // Using the Image to add a image
            
            // using the resizable() method to make the image resizeable and using the scaleToFit()
            // method 
            Image("character-1")
                .resizable()
                .scaledToFit()
        } ///:  ZStack
    }
}
