//
//  The_Weather_AppTests.swift
//  The Weather AppTests
//
//  Created by Tanyeli sargut on 5/16/23.
//

import XCTest
@testable import The_Weather_App

final class The_Weather_AppTests: XCTestCase {
    private let service = WeatherManager()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testWeatherManagerModel() {
        
        let theModel = WeatherModel(conditionId: 1, cityName: "New York", temperature: 60.0, theIconName: "the icon")
       
        let theMain = Main(temp: 60.0)
        let theWeather = Weather(description: "nil", id: 1, icon: "the icon")
        let theWeatherData = WeatherData(name: "New York", main: theMain, weather: [theWeather])
        XCTAssertEqual(theModel.cityName, theWeatherData.name)
        
    }
    
    func testUrlLinks () {
        
        let theWeatherManager = WeatherManager()
        
        XCTAssertEqual(theWeatherManager.weatherURL, "https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=304b79c83c034546b5689fe042ff6c2e")
        XCTAssertEqual(theWeatherManager.iconURL, "https://openweathermap.org/img/wn/10d@2x.png")
        
    }
    
   

}
