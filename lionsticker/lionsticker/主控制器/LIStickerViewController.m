//
//  LIStickerViewController.m
//  lionsticker
//
//  Created by beyond on 2020/4/19.
//  Copyright © 2020 cn18x. All rights reserved.
//

#import "LIStickerViewController.h"
#import "LICollectionViewCell.h"

#define k_li_Color(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define k_li_ScreenBounds [UIScreen mainScreen].bounds
#define k_li_ScreenWidth k_li_ScreenBounds.size.width
#define k_li_ScreenHeight k_li_ScreenBounds.size.height

@interface LIStickerViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
{
    UICollectionView *_li_collectionView;
}

@end

@implementation LIStickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addLIHeaderView];
    [self addli_collectionView];
}
- (void)addLIHeaderView
{
    UIView *li_headerView = [[UIView alloc]init];
    li_headerView.backgroundColor = [UIColor clearColor];
    
    UIView *li_bgView =  [[UIView alloc]init];
    li_bgView.backgroundColor = k_li_Color(18, 139, 191);
    li_bgView.frame = CGRectMake(0, 0, k_li_ScreenWidth, 65);
    
    [li_headerView addSubview:li_bgView];
    li_headerView.frame = CGRectMake(0, 0, k_li_ScreenWidth, 65);
    [self.view addSubview:li_headerView];

    UILabel *li_titleLable = [[UILabel alloc]init];
    li_titleLable.text = @"lions sticker";
    li_titleLable.font = [UIFont boldSystemFontOfSize:24.0];
    li_titleLable.textAlignment = NSTextAlignmentCenter;
    li_titleLable.textColor = k_li_Color(255, 255, 255);
    li_titleLable.backgroundColor = [UIColor clearColor];
    li_titleLable.frame = CGRectMake(40, 20, k_li_ScreenWidth - 80, 45);
    [li_headerView addSubview:li_titleLable];
}
- (void)addli_collectionView
{
    UICollectionViewFlowLayout *li_layout = [[UICollectionViewFlowLayout alloc] init];
    CGFloat itemWidth = (k_li_ScreenWidth - 4*10) / 3;
    li_layout.itemSize = CGSizeMake(itemWidth, itemWidth);
    li_layout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);
    
    UICollectionView *li_collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 65, k_li_ScreenWidth, k_li_ScreenHeight - 65) collectionViewLayout:li_layout];
    [li_collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([LICollectionViewCell class]) bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"LICollectionViewCell"];
    li_collectionView.dataSource = self;
    li_collectionView.delegate = self;
    li_collectionView.backgroundColor = [UIColor whiteColor];
    _li_collectionView = li_collectionView;
    
    [self.view addSubview:_li_collectionView];
}
#pragma mark 代理方法
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 24;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    LICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"LICollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor clearColor];
    NSString *imgName = [NSString stringWithFormat:@"lion%ld.png",indexPath.row+1];
    cell.xib_li_imgView.image = [UIImage imageNamed:imgName];
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIImage *imageToShare = [UIImage imageNamed:[NSString stringWithFormat:@"lion%ld.png",indexPath.row+1]];
    NSArray *activityItems = [NSArray arrayWithObjects:imageToShare, nil];
    UIActivityViewController *activityVC = [[UIActivityViewController alloc]initWithActivityItems:activityItems applicationActivities:nil];
    [self presentViewController:activityVC animated:YES completion:nil];
}

@end
