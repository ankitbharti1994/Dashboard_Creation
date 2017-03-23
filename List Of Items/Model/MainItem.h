//
//  MainItem.h
//  List Of Items
//
//  Created by ankit bharti on 23/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainItem : NSObject
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *imageName;

-(instancetype)initWithTitle:(NSString *)title image:(NSString *)imageName;
@end
