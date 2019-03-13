//
//  SWUHomeScheduleSubview.m
//  OpenSwuNG
//
//  Created by 501 on 2019/3/6.
//

#import "SWUHomeScheduleSubview.h"

@interface SWUHomeScheduleSubview()
@end

@implementation SWUHomeScheduleSubview
+(SWUHomeScheduleSubview*)initWithFrame:(CGRect)frame
                                  Title:(NSString*)titleText
                                Content:(NSString*)contenText{
    SWUHomeScheduleSubview* sub=[[SWUHomeScheduleSubview alloc]initWithFrame:frame];
    sub.image=[UIImage imageNamed:@"blue"];
    //title
    UILabel* title=[[UILabel alloc]initWithFrame:CGRectMake(sub.frame.size.width/10.0,17,sub.frame.size.width-20, 16)];
    title.font=[UIFont fontWithName:@"PingFang-SC-Bold" size:16];
    title.textColor=[UIColor whiteColor];
    [title setText:titleText];
    title.numberOfLines=0;
    [sub addSubview:title];
    //content
    UILabel* content=[[UILabel alloc]initWithFrame:CGRectMake(sub.frame.size.width/10.0,title.frame.origin.y+title.frame.size.height+(sub.frame.size.height-1)/8.0,sub.frame.size.width, 10)];
    content.font=[UIFont fontWithName:@"PingFang-SC-Medium" size:10];
    content.textColor=[UIColor whiteColor];
    [content setText:contenText];
    content.numberOfLines=0;
    [sub addSubview:content];
    return sub;
}
@end