//
//  DashboardBannerCell.h
//  List Of Items
//
//  Created by ankit bharti on 23/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DashboardBannerItem.h"

@interface DashboardBannerCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *itemLabel;
@property (weak, nonatomic) IBOutlet UIPageControl *currentPage;
-(void)configureCell:(DashboardBannerItem *)bannerItem;
@end
