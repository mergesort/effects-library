//
//  SnowView.swift
//  
//
//  Created by Stefan Blos on 11.03.22.
//

import SwiftUI

public struct SnowView: View {
    
    var config = SnowConfig(
        emitterPosition: .top,
        clipsToBounds: false,
        intensity: .high,
        lifetime: .medium,
        speed: .medium,
        fallDirection: .downwards
    )
    
    public var body: some View {
        GeometryReader { proxy in
            SnowViewRepresentable(proxy: proxy, config: config)
        }
    }
}

struct SnowView_Previews: PreviewProvider {
    static var previews: some View {
        SnowView()
    }
}
