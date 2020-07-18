//
//  WebView.swift
//  Hacker News
//
//  Created by Ebubechukwu Dimobi on 18.07.2020.
//  Copyright © 2020 blazeapps. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlstring: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let safeString = urlstring{
            if let url = URL(string: safeString){
                
                let request = URLRequest(url: url)
                uiView.load(request)
            }
            
        }
    }
    
}
