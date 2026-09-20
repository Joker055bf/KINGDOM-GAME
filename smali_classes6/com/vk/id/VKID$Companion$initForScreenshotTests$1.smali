.class public final Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;
.super Lcom/vk/id/internal/di/VKIDDepsProd;
.source "VKID.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/VKID$Companion;->initForScreenshotTests(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\nR\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0006\u00a8\u0006\u0018"
    }
    d2 = {
        "com/vk/id/VKID$Companion$initForScreenshotTests$1",
        "Lcom/vk/id/internal/di/VKIDDepsProd;",
        "serviceCredentials",
        "Lkotlin/Lazy;",
        "Lcom/vk/id/internal/auth/ServiceCredentials;",
        "getServiceCredentials",
        "()Lkotlin/Lazy;",
        "statTracker",
        "Lcom/vk/id/analytics/VKIDAnalytics$Tracker;",
        "getStatTracker",
        "()Lcom/vk/id/analytics/VKIDAnalytics$Tracker;",
        "crashReporter",
        "Lcom/vk/id/tracking/core/CrashReporter;",
        "getCrashReporter",
        "()Lcom/vk/id/tracking/core/CrashReporter;",
        "performanceTracker",
        "Lcom/vk/id/tracking/core/PerformanceTracker;",
        "getPerformanceTracker",
        "()Lcom/vk/id/tracking/core/PerformanceTracker;",
        "trackingTracker",
        "getTrackingTracker",
        "encryptedSharedPreferencesStorage",
        "Lcom/vk/id/storage/InternalVKIDPreferencesStorage;",
        "getEncryptedSharedPreferencesStorage",
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


# instance fields
.field private final crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

.field private final encryptedSharedPreferencesStorage:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/storage/InternalVKIDPreferencesStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final performanceTracker:Lcom/vk/id/tracking/core/PerformanceTracker;

.field private final serviceCredentials:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/auth/ServiceCredentials;",
            ">;"
        }
    .end annotation
.end field

.field private final statTracker:Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

.field private final trackingTracker:Lcom/vk/id/analytics/VKIDAnalytics$Tracker;


# direct methods
.method public static synthetic $r8$lambda$945syhyPMJ7NdK7OuK3tMF3IQxg()Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$encryptedSharedPreferencesStorage$1$1;
    .locals 1

    invoke-static {}, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->encryptedSharedPreferencesStorage$lambda$1()Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$encryptedSharedPreferencesStorage$1$1;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$C10Cr2NKoSbmougEDLcguI8lORc()Lcom/vk/id/internal/auth/ServiceCredentials;
    .locals 1

    invoke-static {}, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->serviceCredentials$lambda$0()Lcom/vk/id/internal/auth/ServiceCredentials;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x5c

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 191
    invoke-direct/range {v0 .. v9}, Lcom/vk/id/internal/di/VKIDDepsProd;-><init>(Landroid/content/Context;ZLjava/lang/String;ZZLcom/vk/id/groupsubscription/GroupSubscriptionLimit;Lcom/vk/id/network/InternalVKIDApiContract;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 192
    new-instance p1, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->serviceCredentials:Lkotlin/Lazy;

    .line 199
    new-instance p1, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$statTracker$1;

    invoke-direct {p1}, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$statTracker$1;-><init>()V

    check-cast p1, Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    iput-object p1, p0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->statTracker:Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    .line 206
    new-instance p1, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$crashReporter$1;

    invoke-direct {p1}, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$crashReporter$1;-><init>()V

    check-cast p1, Lcom/vk/id/tracking/core/CrashReporter;

    iput-object p1, p0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    .line 218
    new-instance p1, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$performanceTracker$1;

    invoke-direct {p1}, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$performanceTracker$1;-><init>()V

    check-cast p1, Lcom/vk/id/tracking/core/PerformanceTracker;

    iput-object p1, p0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->performanceTracker:Lcom/vk/id/tracking/core/PerformanceTracker;

    .line 224
    new-instance p1, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$trackingTracker$1;

    invoke-direct {p1}, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$trackingTracker$1;-><init>()V

    check-cast p1, Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    iput-object p1, p0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->trackingTracker:Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    .line 231
    new-instance p1, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->encryptedSharedPreferencesStorage:Lkotlin/Lazy;

    return-void
.end method

.method private static final encryptedSharedPreferencesStorage$lambda$1()Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$encryptedSharedPreferencesStorage$1$1;
    .locals 1

    .line 232
    new-instance v0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$encryptedSharedPreferencesStorage$1$1;

    invoke-direct {v0}, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1$encryptedSharedPreferencesStorage$1$1;-><init>()V

    return-object v0
.end method

.method private static final serviceCredentials$lambda$0()Lcom/vk/id/internal/auth/ServiceCredentials;
    .locals 2

    .line 193
    new-instance v0, Lcom/vk/id/internal/auth/ServiceCredentials;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Lcom/vk/id/internal/auth/ServiceCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCrashReporter()Lcom/vk/id/tracking/core/CrashReporter;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    return-object v0
.end method

.method public getEncryptedSharedPreferencesStorage()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/vk/id/storage/InternalVKIDPreferencesStorage;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->encryptedSharedPreferencesStorage:Lkotlin/Lazy;

    return-object v0
.end method

.method public getPerformanceTracker()Lcom/vk/id/tracking/core/PerformanceTracker;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->performanceTracker:Lcom/vk/id/tracking/core/PerformanceTracker;

    return-object v0
.end method

.method public getServiceCredentials()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/auth/ServiceCredentials;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->serviceCredentials:Lkotlin/Lazy;

    return-object v0
.end method

.method public getStatTracker()Lcom/vk/id/analytics/VKIDAnalytics$Tracker;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->statTracker:Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    return-object v0
.end method

.method public getTrackingTracker()Lcom/vk/id/analytics/VKIDAnalytics$Tracker;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$initForScreenshotTests$1;->trackingTracker:Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    return-object v0
.end method
