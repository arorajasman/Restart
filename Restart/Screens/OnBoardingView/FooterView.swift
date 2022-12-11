//
//  FooterView.swift
//  Restart
//
//  Created by byteridge on 09/12/22.
//

import SwiftUI


// the code below is used to create the footer of the Onboarding screen
struct FooterView: View {
    // the code below is used to get access to the value stored in the
    // onboarding property in the app storage and if there is not value
    // stored previously then setting the value of onboarding as true
    
    // since we are alreading setting the value of onboarding in the
    // content view file so the code below will not set the value again
    // it will only access the value of onboarding from the app storage
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // the code below is used to create a method to set the value
    // of isOnboardingViewActive when start button is pressed
    func startButtonOnPressedHandler() -> Void {
        // the code below is used to update the value of the
        // isOnboardingViewActive to show the home screen
        isOnboardingViewActive = false
    }
    
    var body: some View {
        
        // using the ZStack to create a Stack
        
        // using the frame() method with height 80 and alignment center to put the ZStack inside a Frame
        ZStack{
            // using the Capsule to Create a Capsule
        
            // using the fill() method and passing the color with opacity to give the capsule a white color
            // with 0.2 opacity
            Capsule()
                .fill(Color.white.opacity(0.2))
            
            // using the Capsule to Create a Capsule
        
            // using the fill() method and passing the color with opacity to give the capsule a white color
            // with 0.2 opacity
            
            // using the padding() method to give the capsule a padding of 8 points from all four sides
            Capsule()
                .fill(Color.white.opacity(0.2))
                .padding(8)
            
            
            // using the Text to add a text
            
            // using the font() method to add a title3 font and using the fontWeight() method to make the
            // font bold and then using the foregroundColor() method to make the foreground color as white
            // and then using the offset() method to give a 20 points offset from x direction
            Text("Get Started")
                .font(.system(.title3,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .offset(x: 20)
            
            // using the HStack to create a Row
            HStack{
                // using the Capsule to create a Capsule
                
                // using the fill() method and passing the color  to give the capsule a red color
                
                // using frame() method to create a container in which the Capsule will be present and
                // the width of the Frame is 80
                Capsule()
                    .fill(Color("ColorRed"))
                    .frame(width: 80)
                
                // using Spacer to create Space
                
                /// A flexible space that expands along the major axis of its containing
                /// stack layout, or on both axes if not contained in a stack.
                Spacer()
            } ///: HStack
            
            
            // the code below is used to create the circle that will be draggable
            
            // using the foregroundColor() method to add a white foreground color and
            // using the frame() method to create a frame of size 80 by 80 with center alignment
            HStack {
                ZStack{
                    // using the circle to add a circle
                    
                    // using the fill() method to add a red color to the circle
                    Circle()
                        .fill(Color("ColorRed"))
                    
                    // using the cicle to create a circle
                    
                    // using the fill method to add a black color with opacity 0.15
                    
                    // using padding to add a padding of 8 points from all four sides
                    Circle()
                        .fill(.black.opacity(0.15))
                        .padding(8)
                    
                    // using the Image to add a image
                    
                    // here we are adding an image called chevron.right.2 from the system
                    
                    // using the font() method to add a system font of size 24 and weight bold
                    Image(systemName: "chevron.right.2")
                        .font(.system(size: 24, weight: .bold))
                }
                .foregroundColor(.white)
                .frame(width: 80, height: 80, alignment: .center)
                .onTapGesture {
                    startButtonOnPressedHandler()
                }
                
                // using the Spacer here to create a space
                Spacer()
            } ///:  HStack
            
        }.frame(height: 80, alignment: .center).padding()    ///: ZStack
    }
}
