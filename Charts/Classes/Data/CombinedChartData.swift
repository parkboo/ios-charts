//
//  CombinedChartData.swift
//  Charts
//
//  Created by Daniel Cohen Gindi on 26/2/15.
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/ios-charts
//

import Foundation

public class CombinedChartData: BarLineScatterCandleBubbleChartData
{
    private var _lineData: LineChartData!
    private var _barData: BarChartData!
    private var _scatterData: ScatterChartData!
    private var _candleData: CandleChartData!
    private var _bubbleData: BubbleChartData!
    private var _cubicData: CubicLineChartData!
    private var _customBar1Data: CustomBar1ChartData!
    
    public override init()
    {
        super.init()
    }
    
    public override init(xVals: [String?]?, dataSets: [ChartDataSet]?)
    {
        super.init(xVals: xVals, dataSets: dataSets)
    }
    
    public override init(xVals: [NSObject]?, dataSets: [ChartDataSet]?)
    {
        super.init(xVals: xVals, dataSets: dataSets)
    }
    
    public var lineData: LineChartData!
    {
        get
        {
            return _lineData
        }
        set
        {
            _lineData = newValue
            for dataSet in newValue.dataSets
            {
                _dataSets.append(dataSet)
            }
            
            checkIsLegal(newValue.dataSets)
            
            calcMinMax(start: _lastStart, end: _lastEnd)
            calcYValueSum()
            calcYValueCount()
            
            calcXValAverageLength()
        }
    }
    
    public var barData: BarChartData!
    {
        get
        {
            return _barData
        }
        set
        {
            _barData = newValue
            for dataSet in newValue.dataSets
            {
                _dataSets.append(dataSet)
            }
            
            checkIsLegal(newValue.dataSets)
            
            calcMinMax(start: _lastStart, end: _lastEnd)
            calcYValueSum()
            calcYValueCount()
            
            calcXValAverageLength()
        }
    }
    
    public var scatterData: ScatterChartData!
    {
        get
        {
            return _scatterData
        }
        set
        {
            _scatterData = newValue
            for dataSet in newValue.dataSets
            {
                _dataSets.append(dataSet)
            }
            
            checkIsLegal(newValue.dataSets)
            
            calcMinMax(start: _lastStart, end: _lastEnd)
            calcYValueSum()
            calcYValueCount()
        
            calcXValAverageLength()
        }
    }
    
    public var candleData: CandleChartData!
    {
        get
        {
            return _candleData
        }
        set
        {
            _candleData = newValue
            for dataSet in newValue.dataSets
            {
                _dataSets.append(dataSet)
            }
            
            checkIsLegal(newValue.dataSets)
            
            calcMinMax(start: _lastStart, end: _lastEnd)
            calcYValueSum()
            calcYValueCount()
            
            calcXValAverageLength()
        }
    }
    
    public var bubbleData: BubbleChartData!
    {
        get
        {
            return _bubbleData
        }
        set
        {
            _bubbleData = newValue
            for dataSet in newValue.dataSets
            {
                _dataSets.append(dataSet)
            }
            
            checkIsLegal(newValue.dataSets)
            
            calcMinMax(start: _lastStart, end: _lastEnd)
            calcYValueSum()
            calcYValueCount()
            
            calcXValAverageLength()
        }
    }

    public var cubicData: CubicLineChartData!
        {
        get
        {
            return _cubicData
        }
        set
        {
            _cubicData = newValue
            for dataSet in newValue.dataSets
            {
                _dataSets.append(dataSet)
            }
            
            checkIsLegal(newValue.dataSets)
            
            calcMinMax(start: _lastStart, end: _lastEnd)
            calcYValueSum()
            calcYValueCount()
            
            calcXValAverageLength()
        }
    }
    
    public var customBar1Data: CustomBar1ChartData!
        {
        get
        {
            return _customBar1Data
        }
        set
        {
            _customBar1Data = newValue
            for dataSet in newValue.dataSets
            {
                _dataSets.append(dataSet)
            }
            
            checkIsLegal(newValue.dataSets)
            
            calcMinMax(start: _lastStart, end: _lastEnd)
            calcYValueSum()
            calcYValueCount()
            
            calcXValAverageLength()
        }
    }

    /// - returns: all data objects in row: line-bar-scatter-candle-bubble if not null.
    public var allData: [ChartData]
    {
        var data = [ChartData]()
        
        if lineData !== nil
        {
            data.append(lineData)
        }
        if barData !== nil
        {
            data.append(barData)
        }
        if scatterData !== nil
        {
            data.append(scatterData)
        }
        if candleData !== nil
        {
            data.append(candleData)
        }
        if bubbleData !== nil
        {
            data.append(bubbleData)
        }
        if cubicData !== nil
        {
            data.append(cubicData)
        }
        
        return data;
    }
    
    public override func notifyDataChanged()
    {
        if (_lineData !== nil)
        {
            _lineData.notifyDataChanged()
        }
        if (_barData !== nil)
        {
            _barData.notifyDataChanged()
        }
        if (_scatterData !== nil)
        {
            _scatterData.notifyDataChanged()
        }
        if (_candleData !== nil)
        {
            _candleData.notifyDataChanged()
        }
        if (_bubbleData !== nil)
        {
            _bubbleData.notifyDataChanged()
        }
        if (_cubicData !== nil)
        {
            _cubicData.notifyDataChanged()
        }
        
        super.notifyDataChanged() // recalculate everything
    }
}
