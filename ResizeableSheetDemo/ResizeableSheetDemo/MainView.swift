//
//  MainView.swift
//  ResizeableSheetDemo
//
//  Created by race on 2022/5/25.
//

import SwiftUI

struct MainView: View {
    
    @State var state: ResizableSheetState = .hidden
    
    var body: some View {
        Button(action: { self.toggleState() }) {
            Text("show sheet")
        }
        .resizableSheet($state) { builder in
            builder.content { _ in
                TestView()
            }
        }
    }
    
    func toggleState() {
        if state != .medium {
            state = .medium
        } else {
            state = .hidden
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
