//
//  LineChartDataProvider.swift
//  Charts
//
//  Created by Daniel Cohen Gindi on 27/2/15.
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/ios-charts
//

import Foundation
import CoreGraphics

@objc
public protocol CubicLineChartDataProvider: BarLineScatterCandleBubbleChartDataProvider
{
    var cubicData: CubicLineChartData? { get }
    
    func getAxis(axis: ChartYAxis.AxisDependency) -> ChartYAxis
}