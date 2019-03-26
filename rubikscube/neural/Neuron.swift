//
//  Neuron.swift
//  rubikscube
//
//  Created by Donald Sheng on 2019-03-25.
//  Copyright © 2019 Gold Thumb Inc. All rights reserved.
//

import Foundation
import Accelerate

class Neuron {
    var weights: [Double]
    var activationFunction: (Double) -> Double
    var derivativeActivationFunction: (Double) -> Double
    var learningRate: Double
    var outputCache: Double = 0.0
    var delta: Double = 0.0
    
    init(weights: [Double], activationFunction: @escaping (Double) -> Double, derivativeActivationFunction: @escaping (Double) -> Double, learningRate: Double) {
        self.weights = weights
        self.activationFunction = activationFunction
        self.derivativeActivationFunction = derivativeActivationFunction
        self.learningRate = learningRate
    }
    
    func output(inputs: [Double]) -> Double {
        outputCache = dotProduct(inputs, weights)
        return activationFunction(outputCache)
    }
    
    func dotProduct(_ xs: [Double], _ ys: [Double]) -> Double {
        var answer: Double = 0.0
        vDSP_dotprD(xs, 1, ys, 1, &answer, vDSP_Length(xs.count))
        return answer
    }
}
