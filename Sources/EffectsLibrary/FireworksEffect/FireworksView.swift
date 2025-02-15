#if canImport(UIKit)
//
//  FireworksView.swift
//  
//
//  Created by Stefan Blos on 31.03.22.
//

import SwiftUI
import SpriteKit

public struct FireworksView: View {
    
    private var config: FireworksConfig
    
    public init(config: FireworksConfig = FireworksConfig()) {
        self.config = config
    }
    
    public var body: some View {
        GeometryReader { proxy in
            FireworksContainerView(proxy: proxy, config: config)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FireworksView()
    }
}
#endif
