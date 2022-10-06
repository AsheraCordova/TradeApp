//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\webkit\WebChromeClient.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_WebChromeClient")
#ifdef RESTRICT_WebChromeClient
#define INCLUDE_ALL_WebChromeClient 0
#else
#define INCLUDE_ALL_WebChromeClient 1
#endif
#undef RESTRICT_WebChromeClient

#if !defined (ADWebChromeClient_) && (INCLUDE_ALL_WebChromeClient || defined(INCLUDE_ADWebChromeClient))
#define ADWebChromeClient_

@class ADConsoleMessage;
@class ADGeolocationPermissions_Callback;
@class ADJsPromptResult;
@class ADJsResult;
@class ADPermissionRequest;
@class ADValueCallback;
@class ADView;
@class ADWebChromeClient_CustomViewCallback;
@class ADWebChromeClient_FileChooserParams;
@class ADWebStorage_QuotaUpdater;
@class ADWebView;

@interface ADWebChromeClient : NSObject

#pragma mark Public

- (instancetype)init;

- (ADView *)getVideoLoadingProgressView;

- (jboolean)onConsoleMessageWithADConsoleMessage:(ADConsoleMessage *)consoleMessage;

- (void)onConsoleMessageWithNSString:(NSString *)message
                             withInt:(jint)lineNumber
                        withNSString:(NSString *)sourceID;

- (void)onExceededDatabaseQuotaWithNSString:(NSString *)url
                               withNSString:(NSString *)databaseIdentifier
                                   withLong:(jlong)currentQuota
                                   withLong:(jlong)estimatedSize
                                   withLong:(jlong)totalUsedQuota
              withADWebStorage_QuotaUpdater:(ADWebStorage_QuotaUpdater *)quotaUpdater;

- (void)onGeolocationPermissionsShowPromptWithNSString:(NSString *)origin
                 withADGeolocationPermissions_Callback:(ADGeolocationPermissions_Callback *)callback;

- (void)onHideCustomView;

- (jboolean)onJsAlertWithADWebView:(ADWebView *)view
                      withNSString:(NSString *)url
                      withNSString:(NSString *)message
                    withADJsResult:(ADJsResult *)result;

- (jboolean)onJsConfirmWithADWebView:(ADWebView *)view
                        withNSString:(NSString *)url
                        withNSString:(NSString *)message
                      withADJsResult:(ADJsResult *)result;

- (jboolean)onJsPromptWithADWebView:(ADWebView *)view
                       withNSString:(NSString *)origin
                       withNSString:(NSString *)message
                       withNSString:(NSString *)defaultValue
               withADJsPromptResult:(ADJsPromptResult *)result;

- (void)onPermissionRequestWithADPermissionRequest:(ADPermissionRequest *)request;

- (void)onShowCustomViewWithADView:(ADView *)view
withADWebChromeClient_CustomViewCallback:(ADWebChromeClient_CustomViewCallback *)callback;

- (jboolean)onShowFileChooserWithADWebView:(ADWebView *)webView
                       withADValueCallback:(ADValueCallback *)filePathsCallback
   withADWebChromeClient_FileChooserParams:(ADWebChromeClient_FileChooserParams *)fileChooserParams;

@end

J2OBJC_EMPTY_STATIC_INIT(ADWebChromeClient)

FOUNDATION_EXPORT void ADWebChromeClient_init(ADWebChromeClient *self);

FOUNDATION_EXPORT ADWebChromeClient *new_ADWebChromeClient_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADWebChromeClient *create_ADWebChromeClient_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADWebChromeClient)

@compatibility_alias RAndroidWebkitWebChromeClient ADWebChromeClient;

#endif

#if !defined (ADWebChromeClient_FileChooserParams_) && (INCLUDE_ALL_WebChromeClient || defined(INCLUDE_ADWebChromeClient_FileChooserParams))
#define ADWebChromeClient_FileChooserParams_

@class ADIntent;
@class IOSObjectArray;

@interface ADWebChromeClient_FileChooserParams : NSObject

#pragma mark Public

- (instancetype)init;

- (ADIntent *)createIntent;

- (IOSObjectArray *)getAcceptTypes;

- (NSString *)getMode;

+ (IOSObjectArray *)parseResultWithInt:(jint)resultCode
                          withADIntent:(ADIntent *)intent;

@end

J2OBJC_EMPTY_STATIC_INIT(ADWebChromeClient_FileChooserParams)

inline NSString *ADWebChromeClient_FileChooserParams_get_MODE_OPEN_MULTIPLE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADWebChromeClient_FileChooserParams_MODE_OPEN_MULTIPLE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADWebChromeClient_FileChooserParams, MODE_OPEN_MULTIPLE, NSString *)

FOUNDATION_EXPORT void ADWebChromeClient_FileChooserParams_init(ADWebChromeClient_FileChooserParams *self);

FOUNDATION_EXPORT ADWebChromeClient_FileChooserParams *new_ADWebChromeClient_FileChooserParams_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADWebChromeClient_FileChooserParams *create_ADWebChromeClient_FileChooserParams_init(void);

FOUNDATION_EXPORT IOSObjectArray *ADWebChromeClient_FileChooserParams_parseResultWithInt_withADIntent_(jint resultCode, ADIntent *intent);

J2OBJC_TYPE_LITERAL_HEADER(ADWebChromeClient_FileChooserParams)

#endif

#if !defined (ADWebChromeClient_CustomViewCallback_) && (INCLUDE_ALL_WebChromeClient || defined(INCLUDE_ADWebChromeClient_CustomViewCallback))
#define ADWebChromeClient_CustomViewCallback_

@interface ADWebChromeClient_CustomViewCallback : NSObject

#pragma mark Public

- (instancetype)init;

- (void)onCustomViewHidden;

@end

J2OBJC_EMPTY_STATIC_INIT(ADWebChromeClient_CustomViewCallback)

FOUNDATION_EXPORT void ADWebChromeClient_CustomViewCallback_init(ADWebChromeClient_CustomViewCallback *self);

FOUNDATION_EXPORT ADWebChromeClient_CustomViewCallback *new_ADWebChromeClient_CustomViewCallback_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADWebChromeClient_CustomViewCallback *create_ADWebChromeClient_CustomViewCallback_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADWebChromeClient_CustomViewCallback)

#endif

#pragma pop_macro("INCLUDE_ALL_WebChromeClient")