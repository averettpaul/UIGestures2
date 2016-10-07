//
//  AppDelegate.h
//  UIGestures2
//
//  Created by AVERETT BARKSDALE on 10/7/16.
//  Copyright © 2016 AVERETT BARKSDALE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

