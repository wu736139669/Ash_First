//
//  MessageViewController.m
//  Ash_First
//
//  Created by xmfish on 14-7-2.
//  Copyright (c) 2014年 xmfish. All rights reserved.
//

#import "MessageViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
@interface MessageViewController ()

@end

@implementation MessageViewController

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
	// Do any additional setup after loading the view.
    self.title = @"1231131231";
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    NSString *imageUrl = @"http://pic2.bbzhi.com/dongwubizhi/keaixiaogou1920xiaogouxiezhendiyiji/keaixiaogou1920xiaogouxiezhendiyiji_83154_11.jpg";
    [imageView setImageWithURL:[NSURL URLWithString:imageUrl] placeholderImage:[UIImage imageNamed:@"test.gif"]];
//    [self.view addSubview:imageView];
    UITextView* textView = [[UITextView alloc] initWithFrame:CGRectMake(20, 100, 1000, 500)];
    NSString *htmlString = @"<h1>Header</h1><h2>Subheader</h2><pSome <em>text</em></p><img width='50' height='100' src='http://cdn.duitang.com/uploads/item/201301/08/20130108192528_wuPLf.gif'/>";
    
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithData:[htmlString dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    textView.attributedText = attributedString;
    
    [self.view addSubview:textView];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
