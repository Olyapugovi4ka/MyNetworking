//
//  WebSiteDescription.swift
//  MyNetworking
//
//  Created by MacBook on 08/10/2019.
//  Copyright © 2019 MacBook. All rights reserved.
//

import Foundation

struct WebSiteDescription: Decodable {
    let webSiteDescription: String?
    let webSiteName: String?
    let courses: [Course?]
}
