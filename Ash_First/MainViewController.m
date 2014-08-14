//
//  MainViewController.m
//  Ash_First
//
//  Created by xmfish on 14-7-1.
//  Copyright (c) 2014年 xmfish. All rights reserved.
//

#import "MainViewController.h"
#import "MessageViewController.h"
#import <DTCoreText.h>
#import <SDWebImage/UIImageView+WebCache.h>
@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"123";
    self.navigationItem.title = @"woshishui";
//    self.navigationController.navigationBarHidden = YES;
    NSString* htmlStr = @"<h1>Header</h1><h2>Subheader</h2><p>Some <em>text</em></p><img src=\"test.gif\"/><a href=\"http://bbs.xmfish.com/read.php?tid=10031229\" target=\"_blank\">查看主题</a><span style=\"font-size:15px;\"><img width='32' height='32' src=\"fish_heng.gif\" /></span> ";
    htmlStr = @"<span style=\"font-size:15px;\"><img width='32' height='32' src=\"fish_heng.gif\" /></span>";
    NSData *data = [htmlStr dataUsingEncoding:NSUTF8StringEncoding];
    NSAttributedString *string = [[NSAttributedString alloc] initWithHTMLData:data documentAttributes:NULL];
    
    DTAttributedTextContentView* _attributedTextContextView;
//    _attributedTextContextView.delegate = self;
    _attributedTextContextView = nil;
    _attributedTextContextView = [[DTAttributedTextContentView alloc] init];
//    _attributedTextContextView.edgeInsets = UIEdgeInsetsMake(5, 5, 5, 5);
    _attributedTextContextView.shouldDrawImages = NO;
    _attributedTextContextView.shouldDrawLinks = YES;
    _attributedTextContextView.delegate = self;
    _attributedTextContextView.backgroundColor = [UIColor clearColor];
    _attributedTextContextView.attributedString = string;
    _attributedTextContextView.frame = CGRectMake(15, 150,  200, 500);
    [self.view addSubview:_attributedTextContextView];

    UIEdgeInsets insets = UIEdgeInsetsMake(5, 5, 5, 5);
    
    UIImage *redImage = [[UIImage imageNamed:@"button.9.png"]resizableImageWithCapInsets:insets];
    UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 200, 200, 200)];
    [imageView setImage:redImage];
//    [self.view addSubview:imageView];
    
    DTAttributedLabel* attributedLabel = [[DTAttributedLabel alloc] initWithFrame:CGRectMake(0, 300, 300, 80)];
    NSString* htmlStr1 = @"<span  style=\"font-size:40px; color:red;\">33</span>%";
    NSData *data1 = [htmlStr1 dataUsingEncoding:NSUTF8StringEncoding];
    NSAttributedString *string1 = [[NSAttributedString alloc] initWithHTMLData:data1 documentAttributes:NULL];
    attributedLabel.backgroundColor = [UIColor clearColor];
    attributedLabel.attributedString = string1;
    [self.view addSubview:attributedLabel];
    
}

- (UIView *)attributedTextContentView:(DTAttributedTextContentView *)attributedTextContentView viewForAttachment:(DTTextAttachment *)attachment frame:(CGRect)frame
{
    

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.layer.masksToBounds = YES;
        // if the attachment has a hyperlinkURL then this is currently ignored
    [imageView setImageWithURL:attachment.contentURL];
    return imageView;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushViewControll:(id)sender {
    MessageViewController *messageViewController = [[MessageViewController alloc] init];
    messageViewController.hidesBottomBarWhenPushed = YES;
//    [self presentViewController:messageViewController animated:YES completion:nil];
    [self.navigationController pushViewController:messageViewController animated:YES];
//    self.tabBarController.tabBar.hidden=YES;
}
@end
