//
//  Date+Ext.swift
//  GithubFollower
//
//  Created by hanifan nurul haq on 23/02/24.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
