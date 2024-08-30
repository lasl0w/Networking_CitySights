//
//  DataService.swift
//  Networking_CitySights
//
//  Created by tom montgomery on 8/28/24.
//

import Foundation

struct DataService {
    
    // if info.plist is not there, apikey = nil
    // if API-KEY does not exist, apikey = nil
    let apikey = Bundle.main.infoDictionary?["API-KEY"] as? String
    
    func businessSearch() async {
        // async so it can be fired off in the background, while main thread handles UI
        
        // 1 - create URL
        
        // 2 - create request
        
        // 3 - send request
        
    }
}
