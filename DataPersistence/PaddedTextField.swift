//
//  PaddedTextField.swift
//  DataPersistence
//
//  Created by user on 11/6/23.
//

import UIKit

class PaddedTextField: UITextField {
    var textPadding = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }
}

