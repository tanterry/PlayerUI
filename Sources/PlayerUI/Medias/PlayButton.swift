//
//  PlayButton.swift
//  
//
//  Created by Terry TAN on 01/11/2020.
//

import SwiftUI

public struct PlayButton: View {
    var action: (() -> Void)?
    
    public init(_ action: (() -> Void)? = nil) {
        self.action = action
    }
    
    public var body: some View {
        VStack(alignment: .center, spacing: 4) {
            Button(action: {
                action?()
            }, label: {
                Image("play", bundle: .module)
            })
            
            Text("play", bundle: .module)
                .font(.body)
        }
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton {
            print("Button pressed")
        }
        .environment(\.locale, .init(identifier: "fr"))
    }
}
