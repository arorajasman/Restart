//
//  HeaderView.swift
//  Restart
//
//  Created by byteridge on 09/12/22.
//

import SwiftUI

// HeaderView Component for the OnBoarding Screen
struct HeaderView: View {
    
    
    var body: some View {
        // using the VStack to create a vertical Stack
        
        // using the Spacing property to add 0 Spacing from all
        // four sides of the children
        VStack(spacing: 0){
            // using the Text to create a Text
            
            // using the font() method and inside that using the system()
            // method and then providing the size property to add a system
            // font of 60 points
            
            // using the fontWeight() method to make the fontWeight heavy
            
            // using the foregroundColor() method to make the color of
            // the text to white
            Text("Share.")
                .font(.system(size: 60))
                .fontWeight(.heavy)
                .foregroundColor(.white)
            
            // using the Text to create a Text
            
            // using the font() to make the font of size title3
            
            // using the fontWeight() method to make the fontWeight light
            
            // using the foregroundColor() method to make the color of
            // the text to white
            
            // using the multilineTextAlignment() method to set the
            // alignment of multiline text to center
            
            // using the padding() method to add a horizontal padding
            // of 10 points
            Text("""
            It's not how much we give but
            how much love we put into giving.
            """)
            .font(.title3)
            .fontWeight(.light)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 10)
        } ///: VStack
    }
}
