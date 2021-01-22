//
//  FastRewindButton.swift
//  
//
//  Created by Terry TAN on 29/11/2020.
//

import SwiftUI

public struct FastRewindButton: View {
    var action: (() -> Void)?
    
    public init(_ action: (() -> Void)? = nil) {
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            action?()
        }, label: {
            Image("fast_rewind", bundle: .module)
        })
    }
}

struct FastRewindButton_Previews: PreviewProvider {
    static var previews: some View {
        FastRewindButton()
    }
}
