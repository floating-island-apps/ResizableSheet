//
//  ContentView.swift
//  ResizeableSheetDemo
//
//  Created by race on 2022/5/25.
//

import SwiftUI

struct ContentView: View {
    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene

    var resizableSheetCenter: ResizableSheetCenter? {
        windowScene.flatMap(ResizableSheetCenter.resolve(for:))
    }

    @State var present: Bool = false
    
    var body: some View {
        
        Button(action: {present.toggle()}) {
            Text("click me")
                .font(.body)
        }
        .sheet(isPresented: $present, content: {
            MainView()
        })
        .environment(\.resizableSheetCenter, resizableSheetCenter)
    }

    
}

struct TestView: View {
    var body: some View {
        
        let _ = print("init body")
        Text("Hello world")
            .frame(width: 300, height: 400, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
