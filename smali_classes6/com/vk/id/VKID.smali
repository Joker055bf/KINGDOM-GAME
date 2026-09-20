.class public final Lcom/vk/id/VKID;
.super Ljava/lang/Object;
.source "VKID.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/VKID$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVKID.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKID.kt\ncom/vk/id/VKID\n+ 2 InternalVKIDLog.kt\ncom/vk/id/logger/InternalVKIDLogKt\n+ 3 VKIDAuthParams.kt\ncom/vk/id/auth/VKIDAuthParamsKt\n+ 4 VKIDRefreshTokenParams.kt\ncom/vk/id/refresh/VKIDRefreshTokenParamsKt\n+ 5 VKIDExchangeTokenParams.kt\ncom/vk/id/exchangetoken/VKIDExchangeTokenParamsKt\n+ 6 VKIDGetUserParams.kt\ncom/vk/id/refreshuser/VKIDGetUserParamsKt\n+ 7 VKIDLogoutParams.kt\ncom/vk/id/logout/VKIDLogoutParamsKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,694:1\n40#2:695\n21#3:696\n21#3:697\n17#4:698\n17#4:699\n13#5:700\n13#5:701\n13#6:702\n13#6:703\n13#7:704\n13#7:705\n1#8:706\n*S KotlinDebug\n*F\n+ 1 VKID.kt\ncom/vk/id/VKID\n*L\n344#1:695\n421#1:696\n449#1:697\n506#1:698\n521#1:699\n546#1:700\n563#1:701\n586#1:702\n601#1:703\n624#1:704\n639#1:705\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 {2\u00020\u0001:\u0001{B\u0011\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010R\u001a\u00020S2\u0008\u0010T\u001a\u0004\u0018\u00010DJ \u0010U\u001a\u00020S2\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020Y2\u0008\u0008\u0002\u0010Z\u001a\u00020[J \u0010U\u001a\u00020S2\u0006\u0010X\u001a\u00020Y2\u0008\u0008\u0002\u0010Z\u001a\u00020[H\u0086@\u00a2\u0006\u0002\u0010\\J \u0010]\u001a\u00020S2\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020^2\u0008\u0008\u0002\u0010Z\u001a\u00020_J \u0010]\u001a\u00020S2\u0006\u0010X\u001a\u00020^2\u0008\u0008\u0002\u0010Z\u001a\u00020_H\u0086@\u00a2\u0006\u0002\u0010`J(\u0010a\u001a\u00020S2\u0006\u0010V\u001a\u00020W2\u0006\u0010b\u001a\u0002082\u0006\u0010X\u001a\u00020c2\u0008\u0008\u0002\u0010Z\u001a\u00020dJ(\u0010a\u001a\u00020S2\u0006\u0010b\u001a\u0002082\u0006\u0010X\u001a\u00020c2\u0008\u0008\u0002\u0010Z\u001a\u00020dH\u0086@\u00a2\u0006\u0002\u0010eJ \u0010f\u001a\u00020S2\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020g2\u0008\u0008\u0002\u0010Z\u001a\u00020hJ \u0010f\u001a\u00020S2\u0006\u0010X\u001a\u00020g2\u0008\u0008\u0002\u0010Z\u001a\u00020hH\u0086@\u00a2\u0006\u0002\u0010iJ \u0010j\u001a\u00020S2\u0006\u0010X\u001a\u00020k2\u0006\u0010V\u001a\u00020W2\u0008\u0008\u0002\u0010Z\u001a\u00020lJ \u0010j\u001a\u00020S2\u0006\u0010X\u001a\u00020k2\u0008\u0008\u0002\u0010Z\u001a\u00020lH\u0086@\u00a2\u0006\u0002\u0010mJ\u0008\u0010r\u001a\u00020SH\u0007J\u0018\u0010v\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010x0wH\u0086@\u00a2\u0006\u0004\u0008y\u0010zR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u00020\"X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\'\u001a\u00020(8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u001c\u0010-\u001a\u00020.8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008/\u0010*\u001a\u0004\u00080\u00101R\u001a\u00102\u001a\u00020&8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00083\u0010*\u001a\u0004\u00084\u00105R\u0014\u00106\u001a\u0008\u0012\u0004\u0012\u00020807X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00109\u001a\u0002088FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008:\u0010*\u001a\u0004\u0008;\u0010<R\u001c\u0010=\u001a\u00020>8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008?\u0010*\u001a\u0004\u0008@\u0010AR$\u0010B\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010D0C8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008E\u0010*\u001a\u0004\u0008F\u0010GR\u001e\u0010H\u001a\u0004\u0018\u00010I8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008J\u0010*\u001a\u0004\u0008K\u0010LR\u001c\u0010M\u001a\u00020N8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008O\u0010*\u001a\u0004\u0008P\u0010QR\u0013\u0010n\u001a\u0004\u0018\u00010o8F\u00a2\u0006\u0006\u001a\u0004\u0008p\u0010qR\u0013\u0010]\u001a\u0004\u0018\u00010s8F\u00a2\u0006\u0006\u001a\u0004\u0008t\u0010u\u00a8\u0006|"
    }
    d2 = {
        "Lcom/vk/id/VKID;",
        "",
        "deps",
        "Lcom/vk/id/internal/di/VKIDDeps;",
        "<init>",
        "(Lcom/vk/id/internal/di/VKIDDeps;)V",
        "requestMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "authProvidersChooser",
        "Lkotlin/Lazy;",
        "Lcom/vk/id/internal/auth/AuthProvidersChooser;",
        "authOptionsCreator",
        "Lcom/vk/id/AuthOptionsCreator;",
        "authCallbacksHolder",
        "Lcom/vk/id/internal/auth/AuthCallbacksHolder;",
        "authResultHandler",
        "Lcom/vk/id/AuthResultHandler;",
        "dispatchers",
        "Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;",
        "vkSilentAuthInfoProvider",
        "Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;",
        "userDataFetcher",
        "Lcom/vk/id/internal/user/UserDataFetcher;",
        "tokenRefresher",
        "Lcom/vk/id/refresh/VKIDTokenRefresher;",
        "tokenExchanger",
        "Lcom/vk/id/exchangetoken/VKIDTokenExchanger;",
        "userRefresher",
        "Lcom/vk/id/refreshuser/VKIDUserRefresher;",
        "loggerOut",
        "Lcom/vk/id/logout/VKIDLoggerOut;",
        "performanceTracker",
        "Lcom/vk/id/tracking/core/PerformanceTracker;",
        "getPerformanceTracker$vkid_release",
        "()Lcom/vk/id/tracking/core/PerformanceTracker;",
        "groupSubscriptionApiServiceInternal",
        "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;",
        "tokenStorage",
        "Lcom/vk/id/storage/InternalVKIDTokenStorage;",
        "getTokenStorage$annotations",
        "()V",
        "getTokenStorage",
        "()Lcom/vk/id/storage/InternalVKIDTokenStorage;",
        "crashReporter",
        "Lcom/vk/id/tracking/core/CrashReporter;",
        "getCrashReporter$annotations",
        "getCrashReporter",
        "()Lcom/vk/id/tracking/core/CrashReporter;",
        "groupSubscriptionApiService",
        "getGroupSubscriptionApiService$annotations",
        "getGroupSubscriptionApiService",
        "()Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;",
        "clientIdProvider",
        "Lkotlin/Function0;",
        "",
        "clientId",
        "getClientId$annotations",
        "getClientId",
        "()Ljava/lang/String;",
        "context",
        "Landroid/content/Context;",
        "getContext$annotations",
        "getContext",
        "()Landroid/content/Context;",
        "internalVKIDLocale",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Ljava/util/Locale;",
        "getInternalVKIDLocale$annotations",
        "getInternalVKIDLocale",
        "()Ljava/util/concurrent/atomic/AtomicReference;",
        "groupSubscriptionLimit",
        "Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;",
        "getGroupSubscriptionLimit$annotations",
        "getGroupSubscriptionLimit",
        "()Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;",
        "prefsStorage",
        "Lcom/vk/id/storage/InternalVKIDPreferencesStorage;",
        "getPrefsStorage$annotations",
        "getPrefsStorage",
        "()Lcom/vk/id/storage/InternalVKIDPreferencesStorage;",
        "setLocale",
        "",
        "locale",
        "authorize",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "callback",
        "Lcom/vk/id/auth/VKIDAuthCallback;",
        "params",
        "Lcom/vk/id/auth/VKIDAuthParams;",
        "(Lcom/vk/id/auth/VKIDAuthCallback;Lcom/vk/id/auth/VKIDAuthParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refreshToken",
        "Lcom/vk/id/refresh/VKIDRefreshTokenCallback;",
        "Lcom/vk/id/refresh/VKIDRefreshTokenParams;",
        "(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "exchangeTokenToV2",
        "v1Token",
        "Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;",
        "Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;",
        "(Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getUserData",
        "Lcom/vk/id/refreshuser/VKIDGetUserCallback;",
        "Lcom/vk/id/refreshuser/VKIDGetUserParams;",
        "(Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "logout",
        "Lcom/vk/id/logout/VKIDLogoutCallback;",
        "Lcom/vk/id/logout/VKIDLogoutParams;",
        "(Lcom/vk/id/logout/VKIDLogoutCallback;Lcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "accessToken",
        "Lcom/vk/id/AccessToken;",
        "getAccessToken",
        "()Lcom/vk/id/AccessToken;",
        "mockAuthorized",
        "Lcom/vk/id/RefreshToken;",
        "getRefreshToken",
        "()Lcom/vk/id/RefreshToken;",
        "fetchUserData",
        "Lkotlin/Result;",
        "Lcom/vk/id/VKIDUser;",
        "fetchUserData-IoAF18A",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "vkid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/vk/id/VKID$Companion;

.field private static volatile _instance:Lcom/vk/id/VKID;

.field private static analyticsDebugTracker:Lcom/vk/id/analytics/LogcatTracker;

.field private static logEngine:Lcom/vk/id/logger/LogEngine;

.field private static logsEnabled:Z


# instance fields
.field private final authCallbacksHolder:Lcom/vk/id/internal/auth/AuthCallbacksHolder;

.field private final authOptionsCreator:Lcom/vk/id/AuthOptionsCreator;

.field private final authProvidersChooser:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/auth/AuthProvidersChooser;",
            ">;"
        }
    .end annotation
.end field

.field private final authResultHandler:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/AuthResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final clientIdProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

.field private final dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

.field private final groupSubscriptionApiServiceInternal:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;",
            ">;"
        }
    .end annotation
.end field

.field private final groupSubscriptionLimit:Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;

.field private final internalVKIDLocale:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;

.field private final loggerOut:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/logout/VKIDLoggerOut;",
            ">;"
        }
    .end annotation
.end field

.field private final performanceTracker:Lcom/vk/id/tracking/core/PerformanceTracker;

.field private final prefsStorage:Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

.field private final requestMutex:Lkotlinx/coroutines/sync/Mutex;

.field private final tokenExchanger:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/exchangetoken/VKIDTokenExchanger;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenRefresher:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/refresh/VKIDTokenRefresher;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

.field private final userDataFetcher:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/user/UserDataFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private final userRefresher:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/refreshuser/VKIDUserRefresher;",
            ">;"
        }
    .end annotation
.end field

.field private final vkSilentAuthInfoProvider:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-GKvZBhEfLSKVK8XMngGx4O--A0(Lcom/vk/id/VKID;)Lcom/vk/id/AccessToken;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/VKID;->_get_accessToken_$lambda$15(Lcom/vk/id/VKID;)Lcom/vk/id/AccessToken;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5JyT59QD1rSHXh5Vp8Ng345GPBU(Ljava/lang/Throwable;)Lcom/vk/id/AccessToken;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/VKID;->_get_accessToken_$lambda$14(Ljava/lang/Throwable;)Lcom/vk/id/AccessToken;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5ka7Rve-dx6d_qjqmBxvgBqGC_I(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/VKID;->_init_$lambda$1(Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HuhgqPIEElRuWvxfL___mcLj_aI(Ljava/lang/Throwable;)Lcom/vk/id/RefreshToken;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/VKID;->_get_refreshToken_$lambda$16(Ljava/lang/Throwable;)Lcom/vk/id/RefreshToken;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IArDIRE_wk96fDwVwKPZoqNmvDE(Lcom/vk/id/internal/di/VKIDDeps;Lcom/vk/id/VKID;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/VKID;->_init_$lambda$3(Lcom/vk/id/internal/di/VKIDDeps;Lcom/vk/id/VKID;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KCN2a7cXFm6eZvmvXpgnNa_N6kE(Lcom/vk/id/VKID;)Lcom/vk/id/RefreshToken;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/VKID;->_get_refreshToken_$lambda$17(Lcom/vk/id/VKID;)Lcom/vk/id/RefreshToken;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yH26dmRW_aSFIeOuSmSvx6BXGVg(Lcom/vk/id/internal/di/VKIDDeps;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/VKID;->_init_$lambda$0(Lcom/vk/id/internal/di/VKIDDeps;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/VKID$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/VKID$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/VKID;->Companion:Lcom/vk/id/VKID$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/VKID;->$stable:I

    .line 259
    new-instance v0, Lcom/vk/id/logger/InternalVKIDAndroidLogcatLogEngine;

    invoke-direct {v0}, Lcom/vk/id/logger/InternalVKIDAndroidLogcatLogEngine;-><init>()V

    check-cast v0, Lcom/vk/id/logger/LogEngine;

    sput-object v0, Lcom/vk/id/VKID;->logEngine:Lcom/vk/id/logger/LogEngine;

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/di/VKIDDeps;)V
    .locals 4
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    const-string v0, "deps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 343
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->requestMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 695
    sget-object v0, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string v1, "getSimpleName(...)"

    const-string v3, "VKID"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object v0

    .line 344
    iput-object v0, p0, Lcom/vk/id/VKID;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    .line 379
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vk/id/VKID;->internalVKIDLocale:Ljava/util/concurrent/atomic/AtomicReference;

    .line 302
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getAuthProvidersChooser()Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->authProvidersChooser:Lkotlin/Lazy;

    .line 303
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getAuthOptionsCreator()Lcom/vk/id/AuthOptionsCreator;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->authOptionsCreator:Lcom/vk/id/AuthOptionsCreator;

    .line 304
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getAuthCallbacksHolder()Lcom/vk/id/internal/auth/AuthCallbacksHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->authCallbacksHolder:Lcom/vk/id/internal/auth/AuthCallbacksHolder;

    .line 305
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getAuthResultHandler()Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->authResultHandler:Lkotlin/Lazy;

    .line 306
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getDispatchers()Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    .line 307
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getVkSilentAuthInfoProvider()Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->vkSilentAuthInfoProvider:Lkotlin/Lazy;

    .line 308
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getUserDataFetcher()Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->userDataFetcher:Lkotlin/Lazy;

    .line 309
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getTokenRefresher()Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->tokenRefresher:Lkotlin/Lazy;

    .line 310
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getTokenExchanger()Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->tokenExchanger:Lkotlin/Lazy;

    .line 311
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getUserRefresher()Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->userRefresher:Lkotlin/Lazy;

    .line 312
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getLoggerOut()Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->loggerOut:Lkotlin/Lazy;

    .line 313
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getTokenStorage()Lcom/vk/id/storage/InternalVKIDTokenStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    .line 314
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getCrashReporter()Lcom/vk/id/tracking/core/CrashReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/VKID;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    .line 315
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getPerformanceTracker()Lcom/vk/id/tracking/core/PerformanceTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/id/VKID;->performanceTracker:Lcom/vk/id/tracking/core/PerformanceTracker;

    .line 316
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getGroupSubscriptionApiService()Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/id/VKID;->groupSubscriptionApiServiceInternal:Lkotlin/Lazy;

    .line 317
    new-instance v1, Lcom/vk/id/VKID$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/vk/id/VKID$$ExternalSyntheticLambda2;-><init>(Lcom/vk/id/internal/di/VKIDDeps;)V

    iput-object v1, p0, Lcom/vk/id/VKID;->clientIdProvider:Lkotlin/jvm/functions/Function0;

    .line 318
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/id/VKID;->context:Landroid/content/Context;

    .line 319
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getGroupSubscriptionLimit()Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/id/VKID;->groupSubscriptionLimit:Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;

    .line 320
    invoke-interface {p1}, Lcom/vk/id/internal/di/VKIDDeps;->getEncryptedSharedPreferencesStorage()Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

    iput-object v1, p0, Lcom/vk/id/VKID;->prefsStorage:Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

    .line 322
    new-instance v1, Lcom/vk/id/VKID$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/vk/id/VKID$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Lcom/vk/id/VKID$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p0}, Lcom/vk/id/VKID$$ExternalSyntheticLambda4;-><init>(Lcom/vk/id/internal/di/VKIDDeps;Lcom/vk/id/VKID;)V

    invoke-interface {v0, v1, v2}, Lcom/vk/id/tracking/core/CrashReporter;->runReportingCrashes(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method private static final _get_accessToken_$lambda$14(Ljava/lang/Throwable;)Lcom/vk/id/AccessToken;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final _get_accessToken_$lambda$15(Lcom/vk/id/VKID;)Lcom/vk/id/AccessToken;
    .locals 0

    .line 656
    iget-object p0, p0, Lcom/vk/id/VKID;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    invoke-virtual {p0}, Lcom/vk/id/storage/InternalVKIDTokenStorage;->getAccessToken$vkid_release()Lcom/vk/id/AccessToken;

    move-result-object p0

    return-object p0
.end method

.method private static final _get_refreshToken_$lambda$16(Ljava/lang/Throwable;)Lcom/vk/id/RefreshToken;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final _get_refreshToken_$lambda$17(Lcom/vk/id/VKID;)Lcom/vk/id/RefreshToken;
    .locals 0

    .line 679
    iget-object p0, p0, Lcom/vk/id/VKID;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    invoke-virtual {p0}, Lcom/vk/id/storage/InternalVKIDTokenStorage;->getRefreshToken$vkid_release()Lcom/vk/id/RefreshToken;

    move-result-object p0

    return-object p0
.end method

.method private static final _init_$lambda$0(Lcom/vk/id/internal/di/VKIDDeps;)Ljava/lang/String;
    .locals 0

    .line 317
    invoke-interface {p0}, Lcom/vk/id/internal/di/VKIDDeps;->getServiceCredentials()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/id/internal/auth/ServiceCredentials;

    invoke-virtual {p0}, Lcom/vk/id/internal/auth/ServiceCredentials;->getClientID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final _init_$lambda$1(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$3(Lcom/vk/id/internal/di/VKIDDeps;Lcom/vk/id/VKID;)Lkotlin/Unit;
    .locals 12

    .line 323
    sget-object v0, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    invoke-interface {p0}, Lcom/vk/id/internal/di/VKIDDeps;->getStatTracker()Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;->addTracker(Lcom/vk/id/analytics/VKIDAnalytics$Tracker;)V

    .line 324
    sget-object v0, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    invoke-interface {p0}, Lcom/vk/id/internal/di/VKIDDeps;->getTrackingTracker()Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;->addTracker(Lcom/vk/id/analytics/VKIDAnalytics$Tracker;)V

    .line 326
    iget-object p1, p1, Lcom/vk/id/VKID;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    .line 330
    sget-object v0, Lcom/vk/id/BuildConfig;->CI_BUILD_NUMBER:Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n                    |VKID initialized\n                    |Version name: 2.7.1\n                    |CI build: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \n                "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 331
    invoke-static {v0, v1, v2, v1}, Lkotlin/text/StringsKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-interface {p1, v0}, Lcom/vk/id/logger/InternalVKIDLogger;->info(Ljava/lang/String;)V

    .line 333
    invoke-interface {p0}, Lcom/vk/id/internal/di/VKIDDeps;->getGroupSubscriptionLimit()Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;->getMaxSubscriptionsToShow()I

    move-result v0

    invoke-virtual {p1}, Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;->getPeriodInDays()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v5, v1

    .line 334
    sget-object p1, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    .line 336
    new-instance v1, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v7, "wrapper_sdk_type"

    invoke-interface {p0}, Lcom/vk/id/internal/di/VKIDDeps;->isFlutter()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "flutter"

    goto :goto_0

    :cond_1
    const-string v3, "none"

    :goto_0
    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 337
    new-instance v1, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v4, "limit_settings"

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v2

    const-string v1, "vkid_sdk_init"

    .line 334
    invoke-virtual {p1, v1, v0}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;->trackEvent(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V

    .line 339
    sget-object p1, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-interface {p0}, Lcom/vk/id/internal/di/VKIDDeps;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/vk/id/captcha/api/VKCaptcha;->init(Landroid/content/Context;)V

    .line 340
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$getAnalyticsDebugTracker$cp()Lcom/vk/id/analytics/LogcatTracker;
    .locals 1

    .line 75
    sget-object v0, Lcom/vk/id/VKID;->analyticsDebugTracker:Lcom/vk/id/analytics/LogcatTracker;

    return-object v0
.end method

.method public static final synthetic access$getAuthCallbacksHolder$p(Lcom/vk/id/VKID;)Lcom/vk/id/internal/auth/AuthCallbacksHolder;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/vk/id/VKID;->authCallbacksHolder:Lcom/vk/id/internal/auth/AuthCallbacksHolder;

    return-object p0
.end method

.method public static final synthetic access$getAuthOptionsCreator$p(Lcom/vk/id/VKID;)Lcom/vk/id/AuthOptionsCreator;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/vk/id/VKID;->authOptionsCreator:Lcom/vk/id/AuthOptionsCreator;

    return-object p0
.end method

.method public static final synthetic access$getAuthProvidersChooser$p(Lcom/vk/id/VKID;)Lkotlin/Lazy;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/vk/id/VKID;->authProvidersChooser:Lkotlin/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getAuthResultHandler$p(Lcom/vk/id/VKID;)Lkotlin/Lazy;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/vk/id/VKID;->authResultHandler:Lkotlin/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getDispatchers$p(Lcom/vk/id/VKID;)Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/vk/id/VKID;->dispatchers:Lcom/vk/id/internal/concurrent/VKIDCoroutinesDispatchers;

    return-object p0
.end method

.method public static final synthetic access$getLogEngine$cp()Lcom/vk/id/logger/LogEngine;
    .locals 1

    .line 75
    sget-object v0, Lcom/vk/id/VKID;->logEngine:Lcom/vk/id/logger/LogEngine;

    return-object v0
.end method

.method public static final synthetic access$getLoggerOut$p(Lcom/vk/id/VKID;)Lkotlin/Lazy;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/vk/id/VKID;->loggerOut:Lkotlin/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getLogsEnabled$cp()Z
    .locals 1

    .line 75
    sget-boolean v0, Lcom/vk/id/VKID;->logsEnabled:Z

    return v0
.end method

.method public static final synthetic access$getRequestMutex$p(Lcom/vk/id/VKID;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/vk/id/VKID;->requestMutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$getTokenExchanger$p(Lcom/vk/id/VKID;)Lkotlin/Lazy;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/vk/id/VKID;->tokenExchanger:Lkotlin/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getTokenRefresher$p(Lcom/vk/id/VKID;)Lkotlin/Lazy;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/vk/id/VKID;->tokenRefresher:Lkotlin/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getUserDataFetcher$p(Lcom/vk/id/VKID;)Lkotlin/Lazy;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/vk/id/VKID;->userDataFetcher:Lkotlin/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getUserRefresher$p(Lcom/vk/id/VKID;)Lkotlin/Lazy;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/vk/id/VKID;->userRefresher:Lkotlin/Lazy;

    return-object p0
.end method

.method public static final synthetic access$get_instance$cp()Lcom/vk/id/VKID;
    .locals 1

    .line 75
    sget-object v0, Lcom/vk/id/VKID;->_instance:Lcom/vk/id/VKID;

    return-object v0
.end method

.method public static final synthetic access$setAnalyticsDebugTracker$cp(Lcom/vk/id/analytics/LogcatTracker;)V
    .locals 0

    .line 75
    sput-object p0, Lcom/vk/id/VKID;->analyticsDebugTracker:Lcom/vk/id/analytics/LogcatTracker;

    return-void
.end method

.method public static final synthetic access$setLogEngine$cp(Lcom/vk/id/logger/LogEngine;)V
    .locals 0

    .line 75
    sput-object p0, Lcom/vk/id/VKID;->logEngine:Lcom/vk/id/logger/LogEngine;

    return-void
.end method

.method public static final synthetic access$setLogsEnabled$cp(Z)V
    .locals 0

    .line 75
    sput-boolean p0, Lcom/vk/id/VKID;->logsEnabled:Z

    return-void
.end method

.method public static final synthetic access$set_instance$cp(Lcom/vk/id/VKID;)V
    .locals 0

    .line 75
    sput-object p0, Lcom/vk/id/VKID;->_instance:Lcom/vk/id/VKID;

    return-void
.end method

.method public static synthetic authorize$default(Lcom/vk/id/VKID;Lcom/vk/id/auth/VKIDAuthCallback;Lcom/vk/id/auth/VKIDAuthParams;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 697
    new-instance p2, Lcom/vk/id/auth/VKIDAuthParams$Builder;

    invoke-direct {p2}, Lcom/vk/id/auth/VKIDAuthParams$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->build()Lcom/vk/id/auth/VKIDAuthParams;

    move-result-object p2

    .line 447
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/id/VKID;->authorize(Lcom/vk/id/auth/VKIDAuthCallback;Lcom/vk/id/auth/VKIDAuthParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic authorize$default(Lcom/vk/id/VKID;Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/auth/VKIDAuthCallback;Lcom/vk/id/auth/VKIDAuthParams;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 696
    new-instance p3, Lcom/vk/id/auth/VKIDAuthParams$Builder;

    invoke-direct {p3}, Lcom/vk/id/auth/VKIDAuthParams$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->build()Lcom/vk/id/auth/VKIDAuthParams;

    move-result-object p3

    .line 418
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/id/VKID;->authorize(Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/auth/VKIDAuthCallback;Lcom/vk/id/auth/VKIDAuthParams;)V

    return-void
.end method

.method public static synthetic exchangeTokenToV2$default(Lcom/vk/id/VKID;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 701
    new-instance p3, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;

    invoke-direct {p3}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;->build()Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;

    move-result-object p3

    .line 560
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vk/id/VKID;->exchangeTokenToV2(Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic exchangeTokenToV2$default(Lcom/vk/id/VKID;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 700
    new-instance p4, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;

    invoke-direct {p4}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;-><init>()V

    invoke-virtual {p4}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;->build()Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;

    move-result-object p4

    .line 542
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vk/id/VKID;->exchangeTokenToV2(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;)V

    return-void
.end method

.method public static synthetic getClientId$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getContext$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getCrashReporter$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getGroupSubscriptionApiService$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getGroupSubscriptionLimit$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getInternalVKIDLocale$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getPrefsStorage$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getTokenStorage$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getUserData$default(Lcom/vk/id/VKID;Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 703
    new-instance p2, Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;

    invoke-direct {p2}, Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;->build()Lcom/vk/id/refreshuser/VKIDGetUserParams;

    move-result-object p2

    .line 599
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/id/VKID;->getUserData(Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getUserData$default(Lcom/vk/id/VKID;Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 702
    new-instance p3, Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;

    invoke-direct {p3}, Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;->build()Lcom/vk/id/refreshuser/VKIDGetUserParams;

    move-result-object p3

    .line 583
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/id/VKID;->getUserData(Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;)V

    return-void
.end method

.method public static synthetic logout$default(Lcom/vk/id/VKID;Lcom/vk/id/logout/VKIDLogoutCallback;Lcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 705
    new-instance p2, Lcom/vk/id/logout/VKIDLogoutParams$Builder;

    invoke-direct {p2}, Lcom/vk/id/logout/VKIDLogoutParams$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/vk/id/logout/VKIDLogoutParams$Builder;->build()Lcom/vk/id/logout/VKIDLogoutParams;

    move-result-object p2

    .line 637
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/id/VKID;->logout(Lcom/vk/id/logout/VKIDLogoutCallback;Lcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic logout$default(Lcom/vk/id/VKID;Lcom/vk/id/logout/VKIDLogoutCallback;Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/logout/VKIDLogoutParams;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 704
    new-instance p3, Lcom/vk/id/logout/VKIDLogoutParams$Builder;

    invoke-direct {p3}, Lcom/vk/id/logout/VKIDLogoutParams$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/vk/id/logout/VKIDLogoutParams$Builder;->build()Lcom/vk/id/logout/VKIDLogoutParams;

    move-result-object p3

    .line 621
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/id/VKID;->logout(Lcom/vk/id/logout/VKIDLogoutCallback;Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/logout/VKIDLogoutParams;)V

    return-void
.end method

.method public static synthetic refreshToken$default(Lcom/vk/id/VKID;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 699
    new-instance p2, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;

    invoke-direct {p2}, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->build()Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    move-result-object p2

    .line 519
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/id/VKID;->refreshToken(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic refreshToken$default(Lcom/vk/id/VKID;Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 698
    new-instance p3, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;

    invoke-direct {p3}, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->build()Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    move-result-object p3

    .line 503
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/id/VKID;->refreshToken(Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;)V

    return-void
.end method


# virtual methods
.method public final authorize(Lcom/vk/id/auth/VKIDAuthCallback;Lcom/vk/id/auth/VKIDAuthParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/auth/VKIDAuthCallback;",
            "Lcom/vk/id/auth/VKIDAuthParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/vk/id/VKID;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    new-instance v1, Lcom/vk/id/VKID$authorize$5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vk/id/VKID$authorize$5;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    new-instance v3, Lcom/vk/id/VKID$authorize$6;

    invoke-direct {v3, p2, p0, p1, v2}, Lcom/vk/id/VKID$authorize$6;-><init>(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/VKID;Lcom/vk/id/auth/VKIDAuthCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v3, p3}, Lcom/vk/id/tracking/core/CrashReporter;->runReportingCrashesSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final authorize(Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/auth/VKIDAuthCallback;Lcom/vk/id/auth/VKIDAuthParams;)V
    .locals 6

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Lcom/vk/id/VKID$authorize$2;

    const/4 v3, 0x0

    invoke-direct {p1, p0, p2, p3, v3}, Lcom/vk/id/VKID$authorize$2;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/auth/VKIDAuthCallback;Lcom/vk/id/auth/VKIDAuthParams;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final exchangeTokenToV2(Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;",
            "Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/vk/id/VKID;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    new-instance v1, Lcom/vk/id/VKID$exchangeTokenToV2$5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vk/id/VKID$exchangeTokenToV2$5;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    new-instance v8, Lcom/vk/id/VKID$exchangeTokenToV2$6;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/vk/id/VKID$exchangeTokenToV2$6;-><init>(Lcom/vk/id/VKID;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v8, p4}, Lcom/vk/id/tracking/core/CrashReporter;->runReportingCrashesSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final exchangeTokenToV2(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;)V
    .locals 9

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v1Token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Lcom/vk/id/VKID$exchangeTokenToV2$2;

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/vk/id/VKID$exchangeTokenToV2$2;-><init>(Lcom/vk/id/VKID;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final fetchUserData-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/vk/id/VKIDUser;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/vk/id/VKID$fetchUserData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vk/id/VKID$fetchUserData$1;

    iget v1, v0, Lcom/vk/id/VKID$fetchUserData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/vk/id/VKID$fetchUserData$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/vk/id/VKID$fetchUserData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/VKID$fetchUserData$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/id/VKID$fetchUserData$1;-><init>(Lcom/vk/id/VKID;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/vk/id/VKID$fetchUserData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 688
    iget v2, v0, Lcom/vk/id/VKID$fetchUserData$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 689
    iget-object p1, p0, Lcom/vk/id/VKID;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    new-instance v2, Lcom/vk/id/VKID$fetchUserData$2;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/vk/id/VKID$fetchUserData$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    new-instance v5, Lcom/vk/id/VKID$fetchUserData$3;

    invoke-direct {v5, p0, v4}, Lcom/vk/id/VKID$fetchUserData$3;-><init>(Lcom/vk/id/VKID;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iput v3, v0, Lcom/vk/id/VKID$fetchUserData$1;->label:I

    invoke-interface {p1, v2, v5, v0}, Lcom/vk/id/tracking/core/CrashReporter;->runReportingCrashesSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getAccessToken()Lcom/vk/id/AccessToken;
    .locals 3

    .line 656
    iget-object v0, p0, Lcom/vk/id/VKID;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    new-instance v1, Lcom/vk/id/VKID$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/vk/id/VKID$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/vk/id/VKID$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/vk/id/VKID$$ExternalSyntheticLambda1;-><init>(Lcom/vk/id/VKID;)V

    invoke-interface {v0, v1, v2}, Lcom/vk/id/tracking/core/CrashReporter;->runReportingCrashes(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/AccessToken;

    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/vk/id/VKID;->clientIdProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/vk/id/VKID;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCrashReporter()Lcom/vk/id/tracking/core/CrashReporter;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/vk/id/VKID;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    return-object v0
.end method

.method public final getGroupSubscriptionApiService()Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/vk/id/VKID;->groupSubscriptionApiServiceInternal:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;

    return-object v0
.end method

.method public final getGroupSubscriptionLimit()Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/vk/id/VKID;->groupSubscriptionLimit:Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;

    return-object v0
.end method

.method public final getInternalVKIDLocale()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/vk/id/VKID;->internalVKIDLocale:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public final getPerformanceTracker$vkid_release()Lcom/vk/id/tracking/core/PerformanceTracker;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/vk/id/VKID;->performanceTracker:Lcom/vk/id/tracking/core/PerformanceTracker;

    return-object v0
.end method

.method public final getPrefsStorage()Lcom/vk/id/storage/InternalVKIDPreferencesStorage;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/vk/id/VKID;->prefsStorage:Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

    return-object v0
.end method

.method public final getRefreshToken()Lcom/vk/id/RefreshToken;
    .locals 3

    .line 679
    iget-object v0, p0, Lcom/vk/id/VKID;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    new-instance v1, Lcom/vk/id/VKID$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/vk/id/VKID$$ExternalSyntheticLambda5;-><init>()V

    new-instance v2, Lcom/vk/id/VKID$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/vk/id/VKID$$ExternalSyntheticLambda6;-><init>(Lcom/vk/id/VKID;)V

    invoke-interface {v0, v1, v2}, Lcom/vk/id/tracking/core/CrashReporter;->runReportingCrashes(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/RefreshToken;

    return-object v0
.end method

.method public final getTokenStorage()Lcom/vk/id/storage/InternalVKIDTokenStorage;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/vk/id/VKID;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    return-object v0
.end method

.method public final getUserData(Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/refreshuser/VKIDGetUserCallback;",
            "Lcom/vk/id/refreshuser/VKIDGetUserParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/vk/id/VKID;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    new-instance v1, Lcom/vk/id/VKID$getUserData$5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vk/id/VKID$getUserData$5;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    new-instance v3, Lcom/vk/id/VKID$getUserData$6;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/vk/id/VKID$getUserData$6;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v3, p3}, Lcom/vk/id/tracking/core/CrashReporter;->runReportingCrashesSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getUserData(Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;)V
    .locals 6

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Lcom/vk/id/VKID$getUserData$2;

    const/4 v3, 0x0

    invoke-direct {p1, p0, p2, p3, v3}, Lcom/vk/id/VKID$getUserData$2;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final logout(Lcom/vk/id/logout/VKIDLogoutCallback;Lcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/logout/VKIDLogoutCallback;",
            "Lcom/vk/id/logout/VKIDLogoutParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/vk/id/VKID;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    new-instance v1, Lcom/vk/id/VKID$logout$5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vk/id/VKID$logout$5;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    new-instance v3, Lcom/vk/id/VKID$logout$6;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/vk/id/VKID$logout$6;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/logout/VKIDLogoutCallback;Lcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v3, p3}, Lcom/vk/id/tracking/core/CrashReporter;->runReportingCrashesSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final logout(Lcom/vk/id/logout/VKIDLogoutCallback;Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/logout/VKIDLogoutParams;)V
    .locals 6

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p2, Lcom/vk/id/VKID$logout$2;

    const/4 v3, 0x0

    invoke-direct {p2, p0, p1, p3, v3}, Lcom/vk/id/VKID$logout$2;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/logout/VKIDLogoutCallback;Lcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final mockAuthorized()V
    .locals 22
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    move-object/from16 v0, p0

    .line 660
    iget-object v1, v0, Lcom/vk/id/VKID;->tokenStorage:Lcom/vk/id/storage/InternalVKIDTokenStorage;

    new-instance v11, Lcom/vk/id/AccessToken;

    const-string v3, ""

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    .line 665
    new-instance v9, Lcom/vk/id/VKIDUser;

    const-string v13, ""

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7c

    const/16 v21, 0x0

    move-object v12, v9

    invoke-direct/range {v12 .. v21}, Lcom/vk/id/VKIDUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v10, 0x0

    move-object v2, v11

    .line 660
    invoke-direct/range {v2 .. v10}, Lcom/vk/id/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/vk/id/VKIDUser;Ljava/util/Set;)V

    invoke-virtual {v1, v11}, Lcom/vk/id/storage/InternalVKIDTokenStorage;->setAccessToken$vkid_release(Lcom/vk/id/AccessToken;)V

    return-void
.end method

.method public final refreshToken(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/refresh/VKIDRefreshTokenCallback;",
            "Lcom/vk/id/refresh/VKIDRefreshTokenParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/vk/id/VKID;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    new-instance v1, Lcom/vk/id/VKID$refreshToken$5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vk/id/VKID$refreshToken$5;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    new-instance v3, Lcom/vk/id/VKID$refreshToken$6;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/vk/id/VKID$refreshToken$6;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v3, p3}, Lcom/vk/id/tracking/core/CrashReporter;->runReportingCrashesSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final refreshToken(Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;)V
    .locals 6

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Lcom/vk/id/VKID$refreshToken$2;

    const/4 v3, 0x0

    invoke-direct {p1, p0, p2, p3, v3}, Lcom/vk/id/VKID$refreshToken$2;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/vk/id/VKID;->internalVKIDLocale:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
