//
//  NewsListLocalDataProvider.swift
//  AppDIONews
//
//  Created by Robson Moreira on 27/11/21.
//

import Foundation

protocol NewsListLocalDataProviderProtocol: GenericDataProvider { }

class NewsListLocalDataProvider: DataProviderManager<NewsListLocalDataProviderProtocol, NewsModel> {
    
    func getNewsList() {
        NewsListRepository.shared.getNewsList { newModelList, error in
            if let error = error {
                self.delegate?.errorData(self.delegate, error: error)
                return
            }
            
            if let model = newModelList {
                self.delegate?.success(model: model)
            }
        }
    }
    
}
