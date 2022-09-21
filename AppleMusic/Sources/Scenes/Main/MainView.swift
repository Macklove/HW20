//
//  MainView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note")
                        Text("Медиатека")
                    }
                
                NavigationView {
                    RadioView()
                }
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }

                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)

            PlayerView()
                .offset(y: Metrics.PlaybackViewYOffset)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

// MARK: - Metrics

extension MainView {
    enum Metrics {
        static let PlaybackViewYOffset: CGFloat = -47
    }
}
