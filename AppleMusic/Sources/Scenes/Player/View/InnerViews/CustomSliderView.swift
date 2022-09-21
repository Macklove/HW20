//
//  CustomSliderView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct CustomSliderView: View {

    @Binding var currentTime: Double
    @Binding var duration: Double

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.9)
                    .foregroundColor(Color.lightGray)

                ZStack(alignment: .trailing) {
                    Rectangle()
                        .frame(width: geometry.size.width * CGFloat(self.currentTime / self.duration),
                               height: geometry.size.height * 0.9)
                        .foregroundColor(Color.gray.opacity(0.5))

                    Circle()
                        .frame(width: geometry.size.height * 2,
                               height: geometry.size.height * 2)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                }
            }
            .gesture(DragGesture(minimumDistance: 0)
                .onChanged { value in
                    self.currentTime = min(max(0, Double(value.location.x / geometry.size.width * self.duration)), self.duration)
                })
        }
    }
}

