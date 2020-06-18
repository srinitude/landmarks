//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Kiren Srinivasan on 6/18/20.
//  Copyright © 2020 Practice. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        let devices = [
            "iPhone SE",
            "iPhone XS Max",
            "iPad Pro (12.9-inch)"
        ]
        return ForEach(devices, id: \.self) { deviceName in
            LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
