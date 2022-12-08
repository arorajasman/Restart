//
//  OnboardingView.swift
//  Restart
//
//  Created by byteridge on 08/12/22.
//

import SwiftUI

struct OnboardingView: View {
    
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
        // using the VStack to create a vertical stack/ Column to show
        // the UI
        
        // adding a space of 20 points to all the four sides of the
        // childern of the VStack using the spacing property
        VStack(spacing: 20){
            // using the Text to show the onboarding text
            
            // using the font property to set the font size of the
            // of the onboarding text as largeTitle
            Text("Onboarding")
                .font(.largeTitle)
            
            // using the Button to create a Button
            
            // adding an action property for the button to perform some
            // action when clicked
            Button(action: startButtonOnPressedHandler){
                // using Text to add a Text to the button called Start
                Text("Start")
            }
        } ///: VStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
