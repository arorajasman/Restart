//
//  ContentView.swift
//  Restart
//
//  Created by byteridge on 04/12/22.
//

import SwiftUI

struct ContentView: View {
    
    /// @AppStorage
    /// A property wrapper type that reflects a value from UserDefaults and invalidates
    /// a view on a change in value in that user default.
    
    // the code below is used to add a property for checking that
    // the current screen is onboarding screen or home screen and
    // saving that value in the app local storage
    
    // the code below is to use the @AppStorage wrapper to get access
    // to the app storage to store the value to check if the current
    // screen is onboarding screen or not
    
    // the @AppStorage wrapper takes the key for storing the value in
    // the memory to get access to the value that if the current view is
    // onboarding or not (in our case this value is onboarding)
    
    // the name of the property through which we can access this value
    // is isOnboardingViewActive and its value will be of boolean type
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        
        /// The ZStack assigns each successive child view a higher z-axis value than
        ///  the one before it, meaning later children appear “on top” of earlier ones.

        // the code below is to use the ZStack to create a container
        // inside the view and the ZStack places place each child above
        // the other
        ZStack {
            // the code below is used to check that if
            // isOnboardingViewActive is true then show OnboardingView
            // else show HomeView
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
