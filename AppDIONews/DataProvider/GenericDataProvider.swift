//
//  GenericDataProvider.swift
//  AppDIONews
//
//  Created by Robson Moreira on 27/11/21.
//

import Foundation

protocol GenericDataProvider {
    func success(model: Any)
    func errorData(_ provide: GenericDataProvider?, error: Error)
}

class DataProviderManager<T, S> {
    var delegate: T?
    var model: S?
}
