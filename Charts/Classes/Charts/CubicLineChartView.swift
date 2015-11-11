//
//  CubicLineChartView.swift
//  Charts
//
//  Created by Booyoung Park on 2015. 11. 11..
//  Copyright © 2015년 dcg. All rights reserved.
//

import Foundation
import CoreGraphics

public class CubicLineChartView: BarLineChartViewBase, CubicLineChartDataProvider
{
    internal override func initialize()
    {
        super.initialize()
        
        renderer = CubicLineChartRenderer(dataProvider: self, animator: _animator, viewPortHandler: _viewPortHandler)
    }
    
    internal override func calcMinMax()
    {
        super.calcMinMax()
        
        if (_deltaX == 0.0 && _data.yValCount > 0)
        {
            _deltaX = 1.0
        }
    }

    // MARK: - LineChartDataProvider
    
    public var cubicData: CubicLineChartData? { return _data as? CubicLineChartData }
}