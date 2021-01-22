//
//  FastForwardButton.swift
//  
//
//  Created by Terry TAN on 29/11/2020.
//

import SwiftUI

public struct FastForwardButton: View {
    var action: (() -> Void)?
    
    public init(_ action: (() -> Void)? = nil) {
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            action?()
        }, label: {
            Image("fast_forward", bundle: .module)
        })
    }
}

struct FastForwardButton_Previews: PreviewProvider {
    static var previews: some View {
        FastForwardButton()
    }
}
