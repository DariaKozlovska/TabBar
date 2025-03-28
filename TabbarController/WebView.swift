//
//  WebView.swift
//  TabbarController
//
//  Created by Daria Kozlovska on 28/03/2025.
//

import SwiftUI
import WebKit

struct WebViewContent: View {
    var body: some View {
        NavigationView {
            WebView(urlString: "https://developer.apple.com")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct WebView: UIViewRepresentable {
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}


#Preview {
    WebViewContent()
}
