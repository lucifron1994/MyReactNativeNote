//
//  AppDelegate.m
//  debug
//
//  Created by macmini_douyu on 16/10/12.
//  Copyright © 2016年 wanghong. All rights reserved.
//

#import "AppDelegate.h"
#import "User.h"

@interface AppDelegate ()

@property (strong, nonatomic) NSMutableArray *indexArray;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    NSArray *old = @[@1,@2,@3,@4,@5];
    self.indexArray = [NSMutableArray array];
    
    
    NSArray *old = @[@"单元88888",@"呀",@"9",@"a",@"a这种",@"z",@"波",@"防",@"6",@"yyy",@"a3",@"智障",@"啊在哪里88",@"啊啊啊",@"6哈哈哈",@"5",@"六"];

    NSMutableArray *users = [NSMutableArray array];
    for (NSString *s in old) {
        User *user = [[User alloc]init];
        user.name = s;
        user.firstLetter = [self toPinyin:s];
        [users addObject:user];
    }
    
//    NSMutableArray *sort = [self userSorting:users];
//    NSLog(@"------%@",sort);
//    NSLog(@"-------%@",_indexArray);

//    NSMutableArray *a1 = [NSMutableArray arrayWithObject:@"1"];
//    NSMutableArray *a2 = [a1 mutableCopy];
//    [a1 addObject:@"3"];
//    NSLog(@"--%@",a2);
    
    return YES;
}

- (NSString *)toPinyin:(NSString *)str{
    
    NSMutableString *ms = [[NSMutableString alloc]initWithString:str];
    // 会有音调的拼音，由于这里只用了第一个字符的拼音，所以没必要去掉音调
    if (CFStringTransform((__bridge CFMutableStringRef)ms, 0,kCFStringTransformMandarinLatin, NO)) {
        NSLog(@"pinyin: ---- %@", ms);
        
        NSString *bigStr = [ms uppercaseString];
        NSString *cha = [bigStr substringToIndex:1];
        return cha;
    }
//    if (CFStringTransform((__bridge CFMutableStringRef)ms, 0,kCFStringTransformStripDiacritics, NO)) {
//        NSLog(@"pinyin22: ---- %@", ms);
//
//        NSString *bigStr = [ms uppercaseString];
//        NSString *cha = [bigStr substringToIndex:1];
//        return cha;
//    }
    return str;
}


-(NSArray *)userSorting:(NSArray *)sortArray{
    NSMutableArray *modelArr = [sortArray mutableCopy];
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    for(int i='A';i<='Z';i++)
    {
        NSMutableArray *rulesArray = [[NSMutableArray alloc] init];
        
        NSString *str1=[NSString stringWithFormat:@"%c",i];
        
        for(int j=0; j<modelArr.count; j++)
        {
            User *model = [modelArr objectAtIndex:j];
            if([model.firstLetter isEqualToString:str1])
            {
                [rulesArray addObject:model];    //把首字母相同的人物model 放到同一个数组里面
                [modelArr removeObject:model];   //model 放到 rulesArray 里面说明这个model 已经拍好序了 所以从总的modelArr里面删除
                j--;
                
            }else{
                
            }
        }
        if (rulesArray.count !=0) {
            [array addObject:rulesArray];
        }
    }
    
    if (modelArr.count !=0) {
        // 对于非字母内容排序
        [modelArr sortUsingComparator:^NSComparisonResult(User  *obj1, User *obj2) {
            return obj1.firstLetter > obj2.firstLetter;
        }];
        [array addObject:modelArr];
    }
    
    //最后整理数组
    NSMutableArray *sortedArray = [NSMutableArray arrayWithCapacity:sortArray.count];
    for (NSArray *keyArray in array) {
        for (id item in keyArray) {
            [sortedArray addObject:item];
        }
    }
    
    return sortedArray;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
