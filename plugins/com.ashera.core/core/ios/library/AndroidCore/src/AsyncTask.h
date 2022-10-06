//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\os\AsyncTask.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AsyncTask")
#ifdef RESTRICT_AsyncTask
#define INCLUDE_ALL_AsyncTask 0
#else
#define INCLUDE_ALL_AsyncTask 1
#endif
#undef RESTRICT_AsyncTask

#if !defined (ADAsyncTask_) && (INCLUDE_ALL_AsyncTask || defined(INCLUDE_ADAsyncTask))
#define ADAsyncTask_

@class IOSObjectArray;

@interface ADAsyncTask : NSObject

#pragma mark Public

- (instancetype)init;

- (void)cancelWithBoolean:(jboolean)cancel;

- (ADAsyncTask *)executeWithNSObjectArray:(IOSObjectArray *)params;

- (jboolean)isCancelled;

#pragma mark Protected

- (id)doInBackgroundWithNSObjectArray:(IOSObjectArray *)var1;

- (void)onPostExecuteWithId:(id)result;

@end

J2OBJC_EMPTY_STATIC_INIT(ADAsyncTask)

FOUNDATION_EXPORT void ADAsyncTask_init(ADAsyncTask *self);

J2OBJC_TYPE_LITERAL_HEADER(ADAsyncTask)

@compatibility_alias RAndroidOsAsyncTask ADAsyncTask;

#endif

#pragma pop_macro("INCLUDE_ALL_AsyncTask")