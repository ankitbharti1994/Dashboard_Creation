//
//  DashboardBannerItem.h
//  List Of Items
//
//  Created by ankit bharti on 23/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DashboardBannerItem : NSObject
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *imageName;
@property (assign, nonatomic) NSInteger currentPageIndex;

-(instancetype)initWithTitle:(NSString *)title image:(NSString *)imageName pageIndex:(NSInteger)pageIndex;
@end
