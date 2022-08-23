//
//  Pryaniky.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 23/08/2022.
//

import Foundation

struct Pryaniky: Codable {
    
    let data: [DataResult]
    let view: [String]
    
    
    struct DataResult: Codable {
        let name: String
        let data: Object
        
        struct Object: Codable {
            let text: String?
            let url: String?
            let selectedID: Int?
            let variants: [Variant]?
            
            struct Variant: Codable {
                let id: Int
                let text: String
            }
            
            enum CodingKeys: String, CodingKey {
                case text, url
                case selectedID = "selectedId"
                case variants
            }
        }
    }
}
