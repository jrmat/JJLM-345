//
//  ContentView.swift
//  DrinkingApp
//
//  Host Controller used to display Game Selection
//

import UIKit
import SwiftUI

// displays GameSelect view
struct ContentView: View {
    var body : some View {
        GameSelect()
    }
}

// initialisation of host controller
class ContentController: UIHostingController<ContentView> {

    required init?(coder: NSCoder) {
        super.init(coder: coder,rootView: ContentView());
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

