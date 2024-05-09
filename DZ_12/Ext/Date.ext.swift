//
//  Date.ext.swift
//  DZ_12
//
//  Created by Nikita Shipovskiy on 09/05/2024.
//

import Foundation


extension Date {
    
    func makeDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "\(self.timeIntervalSince1970)"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 1)
        dateFormatter.locale = Locale(identifier: "ru_RU")
        return dateFormatter.string(from: self)
    }
}

