//
//  ObservableHelpers.swift
//  Skyway
//
//  Created by Adam Ritenauer on 19.10.15.
//  Copyright © 2015 Rhapsody International. All rights reserved.
//

import Foundation

public func newValue<ObservedType>(handler:(ObservedType->Void)) -> ValueChange<ObservedType> -> Void {
    
    return { valueChange in
        
        return handler(valueChange.newValue)
    }
}


public func oldValue<ObservedType>(handler:(ObservedType->Void)) -> ValueChange<ObservedType> -> Void {
    
    return { valueChange in
        
        return handler(valueChange.oldValue)
    }
}