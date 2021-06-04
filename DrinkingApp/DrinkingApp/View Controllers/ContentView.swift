//
//  ContentView.swift
//  DrinkingApp
//
//  Host Controller used to display Game Selection.
//

import UIKit
import SwiftUI

/// Displays GameSelect View.
struct ContentView: View {
    /// Calls GameSelect to be displayed.
    var body : some View {
        GameSelect()
    }
}

/// Initialisation of Host Controller.
class ContentController: UIHostingController<ContentView> {

    required init?(coder: NSCoder) {
        super.init(coder: coder,rootView: ContentView());
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

