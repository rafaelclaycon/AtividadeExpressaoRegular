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
    
    // MARK: - Regular expression
    
    func test_isInputValid_RegularExpression_WhenInputIs31_12_2023_ShouldReturnTrue() throws {
        sut = ValidationViewViewModel(input: "31/12/2023")
        XCTAssertTrue(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs12_01_2001_ShouldReturnTrue() throws {
        sut = ValidationViewViewModel(input: "12/01/2001")
        XCTAssertTrue(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs12_09_2022_ShouldReturnTrue() throws {
        sut = ValidationViewViewModel(input: "12/09/2022")
        XCTAssertTrue(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs12_09_20222_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "12/09/20222")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs1_2_2003_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "1/2/2003")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs01_02_03_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "01/02/03")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs1_12_2023_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "1/12/2023")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs12_25_2022_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "12/25/2022")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs12_19_2022_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "12/19/2022")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs12_29_2022_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "12/29/2022")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs12_00_2022_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "12/00/2022")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs41_12_2023_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "41/12/2023")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs123_29_2022_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "123/29/2022")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs123_293_2022_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "123/293/2022")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs120320_0_2_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "120320/0/2")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    func test_isInputValid_RegularExpression_WhenInputIs00_00_0000_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "00/00/0000")
        XCTAssertFalse(sut.isInputValid_RegularExpression())
    }
    
    // MARK: - Whitelist
    
    func test_isInputValid_Whitelist_WhenInputIs31_12_2023_ShouldReturnTrue() throws {
        sut = ValidationViewViewModel(input: "31/12/2023")
        XCTAssertTrue(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs12_01_2001_ShouldReturnTrue() throws {
        sut = ValidationViewViewModel(input: "12/01/2001")
        XCTAssertTrue(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs12_09_2022_ShouldReturnTrue() throws {
        sut = ValidationViewViewModel(input: "12/09/2022")
        XCTAssertTrue(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs12_09_20222_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "12/09/20222")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs1_2_2003_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "1/2/2003")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs01_02_03_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "01/02/03")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs1_12_2023_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "1/12/2023")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs12_25_2022_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "12/25/2022")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs12_19_2022_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "12/19/2022")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs12_29_2022_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "12/29/2022")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs12_00_2022_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "12/00/2022")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs41_12_2023_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "41/12/2023")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs123_29_2022_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "123/29/2022")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs123_293_2022_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "123/293/2022")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs120320_0_2_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "120320/0/2")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
    
    func test_isInputValid_Whitelist_WhenInputIs00_00_0000_ShouldReturnFalse() throws {
        sut = ValidationViewViewModel(input: "00/00/0000")
        XCTAssertFalse(sut.isInputValid_Whitelist())
    }
}
