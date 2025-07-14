//
//  XAdSplashAd.h
//  WangMaiAdSDK
//
//  Created by 周泽浩 on 2023/2/13.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol XAdSplashDelegate;

@interface XAdSplashAd : NSObject

/// 开屏协议
@property (nonatomic,weak) id<XAdSplashDelegate>delegate;

/// 是否需要满足HTTPS  [可选] 默认为NO
@property (nonatomic, assign) BOOL secure;
 
/// 底部自定义窗口  [可选]
@property (nonatomic, weak) UIView *bottomView;

/// 构造方法
/// - Parameter adSlotId: 广告位id
- (instancetype)initWithAdSlotId:(NSString *)adSlotId;

/// 预加载广告,只加载不展示,需要调用showAd展示广告
- (void)preloadAdData;

/// 展示广告
/// @param window 应用的window窗口 [必传]
- (void)showAdInWindow:(UIWindow *)window;

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
