//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\webkit\WebChromeClient.java
//

#include "ConsoleMessage.h"
#include "GeolocationPermissions.h"
#include "IOSObjectArray.h"
#include "Intent.h"
#include "J2ObjC_source.h"
#include "JsPromptResult.h"
#include "JsResult.h"
#include "PermissionRequest.h"
#include "ValueCallback.h"
#include "View.h"
#include "WebChromeClient.h"
#include "WebStorage.h"
#include "WebView.h"


@implementation ADWebChromeClient

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADWebChromeClient_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)onJsAlertWithADWebView:(ADWebView *)view
                      withNSString:(NSString *)url
                      withNSString:(NSString *)message
                    withADJsResult:(ADJsResult *)result {
  return false;
}

- (jboolean)onJsConfirmWithADWebView:(ADWebView *)view
                        withNSString:(NSString *)url
                        withNSString:(NSString *)message
                      withADJsResult:(ADJsResult *)result {
  return false;
}

- (jboolean)onJsPromptWithADWebView:(ADWebView *)view
                       withNSString:(NSString *)origin
                       withNSString:(NSString *)message
                       withNSString:(NSString *)defaultValue
               withADJsPromptResult:(ADJsPromptResult *)result {
  return false;
}

- (void)onConsoleMessageWithNSString:(NSString *)message
                             withInt:(jint)lineNumber
                        withNSString:(NSString *)sourceID {
}

- (jboolean)onConsoleMessageWithADConsoleMessage:(ADConsoleMessage *)consoleMessage {
  return false;
}

- (void)onGeolocationPermissionsShowPromptWithNSString:(NSString *)origin
                 withADGeolocationPermissions_Callback:(ADGeolocationPermissions_Callback *)callback {
}

- (void)onShowCustomViewWithADView:(ADView *)view
withADWebChromeClient_CustomViewCallback:(ADWebChromeClient_CustomViewCallback *)callback {
}

- (void)onHideCustomView {
}

- (ADView *)getVideoLoadingProgressView {
  return nil;
}

- (jboolean)onShowFileChooserWithADWebView:(ADWebView *)webView
                       withADValueCallback:(ADValueCallback *)filePathsCallback
   withADWebChromeClient_FileChooserParams:(ADWebChromeClient_FileChooserParams *)fileChooserParams {
  return false;
}

- (void)onPermissionRequestWithADPermissionRequest:(ADPermissionRequest *)request {
}

- (void)onExceededDatabaseQuotaWithNSString:(NSString *)url
                               withNSString:(NSString *)databaseIdentifier
                                   withLong:(jlong)currentQuota
                                   withLong:(jlong)estimatedSize
                                   withLong:(jlong)totalUsedQuota
              withADWebStorage_QuotaUpdater:(ADWebStorage_QuotaUpdater *)quotaUpdater {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADView;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, -1, 14, -1, -1 },
    { NULL, "V", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 18, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(onJsAlertWithADWebView:withNSString:withNSString:withADJsResult:);
  methods[2].selector = @selector(onJsConfirmWithADWebView:withNSString:withNSString:withADJsResult:);
  methods[3].selector = @selector(onJsPromptWithADWebView:withNSString:withNSString:withNSString:withADJsPromptResult:);
  methods[4].selector = @selector(onConsoleMessageWithNSString:withInt:withNSString:);
  methods[5].selector = @selector(onConsoleMessageWithADConsoleMessage:);
  methods[6].selector = @selector(onGeolocationPermissionsShowPromptWithNSString:withADGeolocationPermissions_Callback:);
  methods[7].selector = @selector(onShowCustomViewWithADView:withADWebChromeClient_CustomViewCallback:);
  methods[8].selector = @selector(onHideCustomView);
  methods[9].selector = @selector(getVideoLoadingProgressView);
  methods[10].selector = @selector(onShowFileChooserWithADWebView:withADValueCallback:withADWebChromeClient_FileChooserParams:);
  methods[11].selector = @selector(onPermissionRequestWithADPermissionRequest:);
  methods[12].selector = @selector(onExceededDatabaseQuotaWithNSString:withNSString:withLong:withLong:withLong:withADWebStorage_QuotaUpdater:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "onJsAlert", "LADWebView;LNSString;LNSString;LADJsResult;", "onJsConfirm", "onJsPrompt", "LADWebView;LNSString;LNSString;LNSString;LADJsPromptResult;", "onConsoleMessage", "LNSString;ILNSString;", "LADConsoleMessage;", "onGeolocationPermissionsShowPrompt", "LNSString;LADGeolocationPermissions_Callback;", "onShowCustomView", "LADView;LADWebChromeClient_CustomViewCallback;", "onShowFileChooser", "LADWebView;LADValueCallback;LADWebChromeClient_FileChooserParams;", "(Lr/android/webkit/WebView;Lr/android/webkit/ValueCallback<[Lr/android/net/Uri;>;Lr/android/webkit/WebChromeClient$FileChooserParams;)Z", "onPermissionRequest", "LADPermissionRequest;", "onExceededDatabaseQuota", "LNSString;LNSString;JJJLADWebStorage_QuotaUpdater;", "LADWebChromeClient_FileChooserParams;LADWebChromeClient_CustomViewCallback;" };
  static const J2ObjcClassInfo _ADWebChromeClient = { "WebChromeClient", "r.android.webkit", ptrTable, methods, NULL, 7, 0x1, 13, 0, -1, 19, -1, -1, -1 };
  return &_ADWebChromeClient;
}

@end

void ADWebChromeClient_init(ADWebChromeClient *self) {
  NSObject_init(self);
}

ADWebChromeClient *new_ADWebChromeClient_init() {
  J2OBJC_NEW_IMPL(ADWebChromeClient, init)
}

ADWebChromeClient *create_ADWebChromeClient_init() {
  J2OBJC_CREATE_IMPL(ADWebChromeClient, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADWebChromeClient)

NSString *ADWebChromeClient_FileChooserParams_MODE_OPEN_MULTIPLE;

@implementation ADWebChromeClient_FileChooserParams

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADWebChromeClient_FileChooserParams_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (ADIntent *)createIntent {
  return nil;
}

+ (IOSObjectArray *)parseResultWithInt:(jint)resultCode
                          withADIntent:(ADIntent *)intent {
  return ADWebChromeClient_FileChooserParams_parseResultWithInt_withADIntent_(resultCode, intent);
}

- (NSString *)getMode {
  return nil;
}

- (IOSObjectArray *)getAcceptTypes {
  return nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADIntent;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LADUri;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createIntent);
  methods[2].selector = @selector(parseResultWithInt:withADIntent:);
  methods[3].selector = @selector(getMode);
  methods[4].selector = @selector(getAcceptTypes);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MODE_OPEN_MULTIPLE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "parseResult", "ILADIntent;", &ADWebChromeClient_FileChooserParams_MODE_OPEN_MULTIPLE, "LADWebChromeClient;" };
  static const J2ObjcClassInfo _ADWebChromeClient_FileChooserParams = { "FileChooserParams", "r.android.webkit", ptrTable, methods, fields, 7, 0x9, 5, 1, 3, -1, -1, -1, -1 };
  return &_ADWebChromeClient_FileChooserParams;
}

@end

void ADWebChromeClient_FileChooserParams_init(ADWebChromeClient_FileChooserParams *self) {
  NSObject_init(self);
}

ADWebChromeClient_FileChooserParams *new_ADWebChromeClient_FileChooserParams_init() {
  J2OBJC_NEW_IMPL(ADWebChromeClient_FileChooserParams, init)
}

ADWebChromeClient_FileChooserParams *create_ADWebChromeClient_FileChooserParams_init() {
  J2OBJC_CREATE_IMPL(ADWebChromeClient_FileChooserParams, init)
}

IOSObjectArray *ADWebChromeClient_FileChooserParams_parseResultWithInt_withADIntent_(jint resultCode, ADIntent *intent) {
  ADWebChromeClient_FileChooserParams_initialize();
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADWebChromeClient_FileChooserParams)

@implementation ADWebChromeClient_CustomViewCallback

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADWebChromeClient_CustomViewCallback_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)onCustomViewHidden {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(onCustomViewHidden);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LADWebChromeClient;" };
  static const J2ObjcClassInfo _ADWebChromeClient_CustomViewCallback = { "CustomViewCallback", "r.android.webkit", ptrTable, methods, NULL, 7, 0x9, 2, 0, 0, -1, -1, -1, -1 };
  return &_ADWebChromeClient_CustomViewCallback;
}

@end

void ADWebChromeClient_CustomViewCallback_init(ADWebChromeClient_CustomViewCallback *self) {
  NSObject_init(self);
}

ADWebChromeClient_CustomViewCallback *new_ADWebChromeClient_CustomViewCallback_init() {
  J2OBJC_NEW_IMPL(ADWebChromeClient_CustomViewCallback, init)
}

ADWebChromeClient_CustomViewCallback *create_ADWebChromeClient_CustomViewCallback_init() {
  J2OBJC_CREATE_IMPL(ADWebChromeClient_CustomViewCallback, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADWebChromeClient_CustomViewCallback)