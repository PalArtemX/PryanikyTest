//
//  Pryaniky.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 23/08/2022.
//

import Foundation

struct Pryaniky: Codable {
    
    let data: [DataResult]
    let view: [OrderView]
    
    enum OrderView: String, Codable {
        case hz
        case selector
        case picture
    }
    
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
                case text
                case url
                case selectedID = "selectedId"
                case variants
            }
        }
    }
}


// MARK: - JSON API
// URL:https://pryaniky.com/static/json/sample.json
/*
 {
   "data": [
     {
       "name": "hz",
       "data": {
         "text": "РўРµРєСЃС‚РѕРІС‹Р№ Р±Р»РѕРє"
       }
     },
     {
       "name": "picture",
       "data": {
         "url": "https://pryaniky.com/static/img/logo-a-512.png",
         "text": "РџСЂСЏРЅРёРєРё"
       }
     },
     {
       "name": "selector",
       "data": {
         "selectedId": 1,
         "variants": [
           {
             "id": 1,
             "text": "Р’Р°СЂРёР°РЅС‚ СЂР°Р·"
           },
           {
             "id": 2,
             "text": "Р’Р°СЂРёР°РЅС‚ РґРІР°"
           },
           {
             "id": 3,
             "text": "Р’Р°СЂРёР°РЅС‚ С‚СЂРё"
           }
         ]
       }
     }
   ],
   "view": [
     "hz",
     "selector",
     "picture",
     "hz"
   ]
 }
 */

