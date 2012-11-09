//
//  Copyright (c) 2012 CHAtl. All rights reserved.
//

#import "CHItemsTableViewControllerTests.h"
#import "CHItemsTableViewController.h"
#import "CHItemStore.h"

@interface CHItemsTableViewControllerTests ()

@property (strong, nonatomic) CHItemsTableViewController *controller;

@end

@implementation CHItemsTableViewControllerTests

- (void)setUp
{
//    self.controller = [[CHItemsTableViewController alloc] init];
}

- (void)testShouldThrowWhenUsingBaseInit
{
    STAssertThrows([[CHItemsTableViewController alloc] init], @"Base init is restricted");
}

- (void)testShouldCreateViewContoller
{
    CHItemStore *itemStore = [CHItemStore defaultStore];
    CHItemsTableViewController *_controller = [[CHItemsTableViewController alloc] initWithItemStore:itemStore];
    STAssertNotNil(_controller, @"Controller should exist but doesn't.");
}

@end
