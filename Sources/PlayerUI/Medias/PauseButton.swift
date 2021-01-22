//
//  PauseButton.swift
//  
//
//  Created by Terry TAN on 29/11/2020.
//

import SwiftUI

public struct PauseButton: View {
    var action: (() -> Void)?
    
    public init(_ action: (() -> Void)? = nil) {
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            action?()
        }, label: {
            Image("pause", bundle: .module)
        })
    }
}

struct PauseButton_Previews: PreviewProvider {
    static var previews: some View {
        PauseButton {
            print("Button pressed")
        }
    }
}
