//
//  AtividadeExpressaoRegularTests.swift
//  AtividadeExpressaoRegularTests
//
//  Created by Rafael Schmitt on 03/04/23.
//

import XCTest
@testable import AtividadeExpressaoRegular

final class AtividadeExpressaoRegularTests: XCTestCase {
    
    private var sut: ValidationViewViewModel!
    
    override func tearDown() {
        sut = nil
    }
    
    func test_validateInput_When31_12_2023_ShouldReturnOk() throws {
        sut = ValidationViewViewModel(input: "31/12/2023")
        
        XCTAssertTrue(sut.isInputValid())
    }
}
