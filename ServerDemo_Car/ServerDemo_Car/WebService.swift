//
//  WebService.swift
//  ServerDemo_Car
//
//  Created by Jero on 2022/11/22.
//

import Foundation

class WebService {
    @Published var loading = true
    
    func fetchData(url: String) async throws -> [Car] {
        guard let url = URL(string: url) else { return [] }
        let (data, _) = try await URLSession.shared.data(from: url)
        let carData = try JSONDecoder().decode([Car].self, from: data)
        
        
        self.loading = false
        return carData
    }
}
