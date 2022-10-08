//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\webkit\CookieManager.java
//

#include "CookieManager.h"
#include "J2ObjC_source.h"
#include "WebView.h"


@implementation ADCookieManager

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADCookieManager_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (ADCookieManager *)getInstance {
  return ADCookieManager_getInstance();
}

- (void)setAcceptFileSchemeCookiesWithBoolean:(jboolean)b {
}

- (void)setAcceptThirdPartyCookiesWithADWebView:(ADWebView *)webView
                                    withBoolean:(jboolean)b {
}

- (void)setAcceptCookieWithBoolean:(jboolean)accept {
}

- (void)setCookieWithNSString:(NSString *)url
                 withNSString:(NSString *)value {
}

- (NSString *)getCookieWithNSString:(NSString *)url {
  return nil;
}

- (void)removeAllCookie {
}

- (void)flush {
}

- (void)removeAllCookiesWithId:(id)object {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADCookieManager;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getInstance);
  methods[2].selector = @selector(setAcceptFileSchemeCookiesWithBoolean:);
  methods[3].selector = @selector(setAcceptThirdPartyCookiesWithADWebView:withBoolean:);
  methods[4].selector = @selector(setAcceptCookieWithBoolean:);
  methods[5].selector = @selector(setCookieWithNSString:withNSString:);
  methods[6].selector = @selector(getCookieWithNSString:);
  methods[7].selector = @selector(removeAllCookie);
  methods[8].selector = @selector(flush);
  methods[9].selector = @selector(removeAllCookiesWithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setAcceptFileSchemeCookies", "Z", "setAcceptThirdPartyCookies", "LADWebView;Z", "setAcceptCookie", "setCookie", "LNSString;LNSString;", "getCookie", "LNSString;", "removeAllCookies", "LNSObject;" };
  static const J2ObjcClassInfo _ADCookieManager = { "CookieManager", "r.android.webkit", ptrTable, methods, NULL, 7, 0x1, 10, 0, -1, -1, -1, -1, -1 };
  return &_ADCookieManager;
}

@end

void ADCookieManager_init(ADCookieManager *self) {
  NSObject_init(self);
}

ADCookieManager *new_ADCookieManager_init() {
  J2OBJC_NEW_IMPL(ADCookieManager, init)
}

ADCookieManager *create_ADCookieManager_init() {
  J2OBJC_CREATE_IMPL(ADCookieManager, init)
}

ADCookieManager *ADCookieManager_getInstance() {
  ADCookieManager_initialize();
  return create_ADCookieManager_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADCookieManager)
