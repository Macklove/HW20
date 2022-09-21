//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 15.09.2022.
//

import SwiftUI

struct LibraryView: View {

    @State var isEditMode = false

    var initialView: some View {
        ZStack {
            VStack {
                Text("Ищете свою музыку?")
                    .font(.title2)
                    .bold()

                Text("Здесь появится купленная Вами в\n iTunes Store музыка.")
                    .font(.callout)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                if isEditMode {
                    LibraryListView()
                } else {
                    initialView
                }
            }
            .navigationTitle("Медиатека")
            .toolbar {
                Button {
                    isEditMode.toggle()
                } label: {
                    if isEditMode {
                        Text("Готово")
                    } else {
                        Text("Править")
                    }
                }
                .foregroundColor(.red)
            }
            .environment(\.editMode, .constant(self.isEditMode ? .active : .inactive))
            .animation(.spring(), value: isEditMode)
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
