//
//  Title.swift
//  information-app
//
//  Created by Samuel Bruton on 14/11/2025.
//
import SwiftUI

struct TitleView: View {
    @EnvironmentObject var appSettingsModel: AppSettingsModel
    var content: Content

    var body: some View {
        let size: CGFloat = appSettingsModel.isGridMode ? 90 : 60

        if appSettingsModel.isGridMode {
            VStack(alignment: .center, spacing: 0) {
                ContentView(
                    content: content,
                    size: size
                )
            }
            .padding()
        } else {
            ContentView(
                content: content,
                size: size
            )
        }
    }
}

struct ContentView: View {
    @EnvironmentObject var appSettingsModel: AppSettingsModel
    let content: Content
    let size: CGFloat

    var body: some View {
        Image(content.image)
            .resizable()
            .frame(width: size, height: size)
            .aspectRatio(contentMode: .fit)
            .padding(.trailing, appSettingsModel.isGridMode ? 0 : 8)
            .padding(.bottom, appSettingsModel.isGridMode ? 8 : 0)

        Text(content.name)
            .font(.title2)
            .foregroundColor(Color(.label))
            .scaledToFit()
            .minimumScaleFactor(0.5)
    }
}

//#Preview {
//    StatefulPreviewWrapper(AppSettingsModel()) { model in
//        TitleView(appSettingsModel: model, content: Content(name: "Example", image: "example"))
//    }
//}

//struct StatefulPreviewWrapper<Value, ContentView: View>: View {
//    @State private var value: Value
//    private let content: (Binding<Value>) -> ContentView
//
//    init(_ initialValue: Value, content: @escaping (Binding<Value>) -> ContentView) {
//        _value = State(initialValue: initialValue)
//        self.content = content
//    }
//
//    var body: some View {
//        content($value)
//    }
//}
