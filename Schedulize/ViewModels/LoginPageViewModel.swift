//
//  LoginPageViewModel.swift
//  Schedulize
//
//  Created by Aaron Djangmah on 19/03/2024.
//

import Foundation

class LoginPageViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = "" 
    init() {
    }
}
