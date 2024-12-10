//
//  LandingView.swift
//  WeatherAssessment
//
//  Created by Vincent Emmanuel Vizconde Cornejo on 12/10/24.
//

import SwiftUI
import CoreLocationUI

struct LandingView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Weather App for Assessment")
                    .bold()
                    .font(.title)
            }
            .multilineTextAlignment(.center)
            .padding()

            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .background(.blue)
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
