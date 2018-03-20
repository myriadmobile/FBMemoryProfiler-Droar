//
//  FBMemoryProfilerExtensions.swift
//  Droar
//
//  Created by Nathan Jangula on 3/20/18.
//

import Foundation
import FBMemoryProfiler
import Droar

private struct AssociatedKeys {
    static var defaultPresentationMode: UInt8 = 0
}

internal extension FBMemoryProfiler {
    func swizzlePresentationModeSetter() {
        Swizzler.swizzleInstanceSelector(instance: self, origSelector: #selector(setter: presentationMode), newSelector: #selector(setPresentationMode_swizzled(_:)))
    }
    
    var defaultPresentationMode: FBMemoryProfilerPresentationMode {
        get { return objc_getAssociatedObject(self, &AssociatedKeys.defaultPresentationMode) as? FBMemoryProfilerPresentationMode ?? .disabled }
        set(newValue) { objc_setAssociatedObject(self, &AssociatedKeys.defaultPresentationMode, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }
    
    @objc func setPresentationMode_swizzled(_ presentationMode: FBMemoryProfilerPresentationMode) {
        var presentationMode = presentationMode
        
        if presentationMode != .fullWindow {
            presentationMode = defaultPresentationMode
        }
        
        setPresentationMode_swizzled(presentationMode)
    }
}
