//
//  OnboardingView.swift
//  Restart
//
//  Created by byteridge on 08/12/22.
//

import SwiftUI

struct OnboardingView: View {
    
    var body: some View {
        // using the ZStack below to create a Stack in Z direction
        ZStack {
            // using the Color to add a Color to the ZStack on the
            // background since the Color will be at bottom since it is
            // the first children of the ZStack
            
            // using the ignoreSafeArea and adding the .all to ignore all
            // the safe are and also adding edges value as all to ignore
            // all the edges and add the blue color to the bacground of
            // the app i.e adding a Blue color full screen background
            Color("ColorBlue").ignoresSafeArea(.all, edges: .all)
            
            // using the VStack to create a vertical stack/ Column to show
            // the UI
            
            // adding a space of 20 points to all the four sides of the
            // childern of the VStack using the spacing property
            VStack(spacing: 20){
                /// Header
                
                // using Spacer to create Space
                
                /// A flexible space that expands along the major axis of its containing
                /// stack layout, or on both axes if not contained in a stack.
                Spacer()
                
                // using the HeaderView here
                HeaderView()
                
                /// Center
                
                // using the CenterView here
                CenterView()
                
                
                // using Spacer to create Space
                
                /// A flexible space that expands along the major axis of its containing
                /// stack layout, or on both axes if not contained in a stack.
                Spacer()
                
                /// Footer
                
                // using the FooterView here
                FooterView()
                
            } ///: VStack
        } ///: ZStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

