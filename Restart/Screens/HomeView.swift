//
//  HomeView.swift
//  Restart
//
//  Created by byteridge on 08/12/22.
//

import SwiftUI

struct HomeView: View {
    
    // the code below is used to get access to the value stored in the
    // onboarding property in the app storage and if there is not value
    // stored previously then setting the value of onboarding as true
    
    // since we are alreading setting the value of onboarding in the
    // content view file so the code below will not set the value again
    // it will only access the value of onboarding from the app storage
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    // the code below is used to create a method for changing the screen
    // when the Restart Button is pressed
    func restartOnPressedHandler() -> Void {
        // the code below is used to set the value of
        // isOnboardingViewActive to true to show the onboarding screen
        // when the restart button is pressed
        isOnboardingViewActive = true
    }
    
    var body: some View {
        // using the VStack to create a vertical stack/column
        
        // using the spacing property to add a spacing to 20 points to
        // the children of the VStack from all four sides
        VStack(spacing: 20) {
            // using the Text to show the home text and using the font
            // property to set the font size as largeTitle
            Text("Home").font(.largeTitle)
            
            // using the Button to create a Button
            Button(action: restartOnPressedHandler){
                // adding a child to the Button to add the Text to the
                // button
                Text("Restart")
            }
        } ///: VStack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
