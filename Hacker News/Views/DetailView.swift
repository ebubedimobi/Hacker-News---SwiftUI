//
//  DetailView.swift
//  Hacker News
//
//  Created by Ebubechukwu Dimobi on 18.07.2020.
//  Copyright © 2020 blazeapps. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    var body: some View {
        WebView(urlstring: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}



