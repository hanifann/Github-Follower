//
//  GFError.swift
//  GithubFollower
//
//  Created by hanifan nurul haq on 08/02/24.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created and invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid resposne from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
}
