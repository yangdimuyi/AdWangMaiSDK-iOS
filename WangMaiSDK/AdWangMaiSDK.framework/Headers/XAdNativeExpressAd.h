//
//  XAdNativeExpressAd.h
//  AdWangMaiSDK
//
//  Created by 周泽浩 on 2023/3/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol XAdNativeExpressDelegete;

@interface XAdNativeExpressAd : UIView

/// 代理
@property (weak, nonatomic) id<XAdNativeExpressDelegete>delegate;

/// 默认背景图  [可选]
@property (nonatomic, strong) UIImage *backgroundImage;

/// 是否需要满足HTTPS  [可选] 默认为NO
@property (nonatomic,assign) BOOL secure;

/// 广告标记 [可选]
@property (nonatomic,copy) NSString *adTag;

/// cd以及cd版本号信息  [可选 媒体通过该参数传入caid]  
/// 数组内部为字典对象,Key为cd(参数)和version(版本号),对应的值均为字符串类型,示例:@{@"cd":@"",@"version":@""}
@property (nonatomic, strong) NSArray *cdInfo;

/// [必选]开发者需传入用来弹出目标页的ViewController
@property (nonatomic, weak) UIViewController *controller;

/// 初始化广告
/// - Parameters:
///   - adSize: 广告视图尺寸
///   - adSlotId: 广告位ID
- (instancetype)initWithAdSize:(CGSize)adSize adSlotId:(NSString *)adSlotId;

/// 请求广告
- (void)loadAdData;

/**
 返回广告的eCPM，单位：分
 
 @return 成功返回一个大于等于0的值，-1表示无权限或后台出现异常
 */
- (NSInteger)eCPM;

/// 竞价成功上报，脉盟平台竞胜之后调用，需要在广告请求成功之后,展示之前调用，winInfo脉盟平台竞价获胜信息，可为nil。
/// @param winInfo 竞胜信息 字典类型
- (void)sendWinNotificationWithInfo:(NSDictionary *_Nullable)winInfo;

@end

NS_ASSUME_NONNULL_END
