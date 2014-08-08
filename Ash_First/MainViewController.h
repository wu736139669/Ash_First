//
//  MainViewController.h
//  Ash_First
//
//  Created by xmfish on 14-7-1.
//  Copyright (c) 2014年 xmfish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DTCoreText.h>
@interface MainViewController : UIViewController<DTAttributedTextContentViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *Push;
- (IBAction)pushViewControll:(id)sender;

@end
