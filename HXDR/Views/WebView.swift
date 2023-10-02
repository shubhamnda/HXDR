//
//  WebView.swift
//  HXDR
//
//  Created by Shubham Nanda on 02/09/23.
//

import Foundation
import WebKit
import SwiftUI
struct WebView: UIViewRepresentable {
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safestring = urlString {
            if let url = URL(string: safestring){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
