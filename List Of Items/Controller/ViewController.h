//
//  ViewController.h
//  List Of Items
//
//  Created by ankit bharti on 23/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UICollectionView *bannerCollectionView;

@end

