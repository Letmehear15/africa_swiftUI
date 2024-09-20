//
//  Bundle.swift
//  africa
//
//  Created by Aleksandr Nesterov on 16.09.2024.
//

import Foundation


extension Bundle {
    func decodeJson<T: Decodable>(_ fileName: String) -> [T] {
        guard let fileUrl = self.url(forResource: fileName, withExtension: "json") else {
            fatalError("File \(fileName) not found")
        }
        
        guard let data = try? Data(contentsOf: fileUrl) else {
            fatalError("File \(fileName) not found")
        }
        
        let jsonDecoder = JSONDecoder()
        
        guard let jsonData = try? jsonDecoder.decode([T].self, from: data) else {
            fatalError("File \(fileName) not found")
        }
        
        return jsonData
    }
}
