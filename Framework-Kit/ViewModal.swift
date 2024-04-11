//
//  ViewModal.swift
//  Framework-Kit
//
//  Created by Meet Balani on 10/04/24.
//

import SwiftUI

final class FrameworkModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            showDetail = true
        }
    }
    @Published var showDetail = false
}
