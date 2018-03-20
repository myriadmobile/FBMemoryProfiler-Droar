//
//  FBMemoryProfiler_Droar.swift
//  FBMemoryProfiler-Droar
//
//  Created by Nathan Jangula on 10/12/17.
//

import Foundation
import Droar
import FBMemoryProfiler

@objc public class FBMemoryProfiler_Droar : NSObject, DroarKnob {
    
    @objc private static let sharedInstance = FBMemoryProfiler_Droar()
    private let dispatchOnce = DispatchOnce()
    private let profiler = FBMemoryProfiler()
    
    override private init() {}
    
    public func droarKnobWillBeginLoading(tableView: UITableView?) {
        dispatchOnce.perform {
            profiler.enable()
            profiler.swizzlePresentationModeSetter()
            profiler.presentationMode = .disabled
        }
    }
    
    public func droarKnobTitle() -> String {
        return "FBMemoryProfiler"
    }
    
    public func droarKnobPosition() -> PositionInfo {
        return PositionInfo(position: .top, priority: .medium)
    }
    
    public func droarKnobNumberOfCells() -> Int {
        return 2
    }
    
    public func droarKnobCellForIndex(index: Int, tableView: UITableView) -> DroarCell {
        switch index {
        case 0:
            return DroarLabelCell.create(title: "Launch FBMemoryProfiler", detail: "", allowSelection: true)
        case 1:
            let currentIndex = profiler.defaultPresentationMode == .disabled ? 0 : 1
            return DroarSegmentedCell.create(title: "Mode", values: ["Disabled", "Condensed"], defaultIndex: currentIndex, allowSelection: false, onValueChanged: { (index) in
                let mode: FBMemoryProfilerPresentationMode = index == 0 ? .disabled : .condensed
                self.profiler.defaultPresentationMode = mode
                self.profiler.presentationMode = mode
            })
        default:
            return DroarLabelCell()
        }
    }
    
    public func droarKnobIndexSelected(tableView: UITableView, selectedIndex: Int) {
        Droar.dismissWindow()
        profiler.presentationMode = .fullWindow
    }
}
