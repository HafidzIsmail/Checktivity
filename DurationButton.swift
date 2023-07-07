//
//  DurationButton.swift
//  Activity Tracker
//
//  Created by Hafidz Ismail Hidayat on 18/04/23.
//

import SwiftUI

struct DurationButton: View {
    @State var time = 0.0
    
    
    var body: some View {
        
        Stepper("\(time.formatted()) Hour(s)", value : $time, in: 0...24, step: 0.5)
    }
}

struct DurationButton_Previews: PreviewProvider {
    static var previews: some View {
        DurationButton()
    }
}
