//
//  Buildable.swift
//  SweetUI
//
//  Created by Maxim Krouk on 17/08/20.
//  Copyright © 2020 @maximkrouk. All rights reserved.
//

import Foundation

public protocol Buildable {}

extension Buildable {
    public func with<Value>(_ keyPath: WritableKeyPath<Self, Value>, _ value: Value) -> Self {
        self.with(keyPath == value)
    }

    public func with(_ transform: (Self) -> Self) -> Self {
        transform(self)
    }
}

extension NSObject: Buildable {}
