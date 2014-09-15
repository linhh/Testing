//
//  WoWUtilsTests.m
//  GuildBrowser
//
//  Created by Hoang Linh on 9/15/14.
//  Copyright (c) 2014 Charlie Fulton. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "WoWUtils.h"

@interface WoWUtilsTests : XCTestCase

@end

@implementation WoWUtilsTests

- (void)testCharacterClassNameLookup
{
    XCTAssertEqualObjects(@"Warrior", [WoWUtils classFromCharacterType:1], @"ClassType should be Warrior");
    
    XCTAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]], @"Type 2 is not Mage");
    
    XCTAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]], @"Type 2 is Paladin");
}

- (void)testRaceTypeLookup
{
    XCTAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], @"RaceType 1 should be Human");
    
    XCTAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], @"RaceType 2 should be Orc");
    
    XCTAssertFalse([@"Night Efl" isEqualToString:[WoWUtils raceFromRaceType:45]] , @"Night Efl is not race type 45");
}

- (void)testQualityLookup
{
    XCTAssertEqualObjects(@"Grey", [WoWUtils qualityFromQualityType:1], @"Quality 1 should be Grey");
    XCTAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]], @"Purple is not have quality type 10");
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
