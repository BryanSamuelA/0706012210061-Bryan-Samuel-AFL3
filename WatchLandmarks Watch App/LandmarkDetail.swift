//
//  LandmarkDetail.swift
//  WatchLandmarks Watch App
//
//  Created by student on 02/05/24.
//

import SwiftUI


struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark


    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }


    var body: some View {
        Text("Hello, World!")
    }
}


#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
