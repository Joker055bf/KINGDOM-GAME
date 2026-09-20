.class public final Lcom/vk/id/VKID$Companion$init$2;
.super Lcom/vk/id/internal/di/VKIDDepsProd;
.source "VKID.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/VKID$Companion;->init$vkid_release(Landroid/content/Context;Lcom/vk/id/network/InternalVKIDApiContract;Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;Lcom/vk/id/internal/store/InternalVKIDPrefsStore;Lcom/vk/id/storage/InternalVKIDPreferencesStorage;Lcom/vk/id/internal/context/InternalVKIDPackageManager;Lcom/vk/id/internal/context/InternalVKIDActivityStarter;Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000g\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0006R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0006R\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020#X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0014\u0010&\u001a\u00020\'X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)\u00a8\u0006*"
    }
    d2 = {
        "com/vk/id/VKID$Companion$init$2",
        "Lcom/vk/id/internal/di/VKIDDepsProd;",
        "api",
        "Lkotlin/Lazy;",
        "Lcom/vk/id/network/InternalVKIDApiContract;",
        "getApi",
        "()Lkotlin/Lazy;",
        "groupSubscriptionApiService",
        "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;",
        "getGroupSubscriptionApiService",
        "vkSilentAuthInfoProvider",
        "Lcom/vk/id/test/TestSilentAuthInfoProvider;",
        "getVkSilentAuthInfoProvider",
        "deviceIdStorage",
        "Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;",
        "getDeviceIdStorage",
        "prefsStore",
        "Lcom/vk/id/internal/store/InternalVKIDPrefsStore;",
        "getPrefsStore",
        "encryptedSharedPreferencesStorage",
        "Lcom/vk/id/storage/InternalVKIDPreferencesStorage;",
        "getEncryptedSharedPreferencesStorage",
        "vkidPackageManager",
        "Lcom/vk/id/internal/context/InternalVKIDPackageManager;",
        "getVkidPackageManager",
        "()Lcom/vk/id/internal/context/InternalVKIDPackageManager;",
        "activityStarter",
        "Lcom/vk/id/internal/context/InternalVKIDActivityStarter;",
        "getActivityStarter",
        "()Lcom/vk/id/internal/context/InternalVKIDActivityStarter;",
        "performanceTracker",
        "Lcom/vk/id/tracking/core/PerformanceTracker;",
        "getPerformanceTracker",
        "()Lcom/vk/id/tracking/core/PerformanceTracker;",
        "crashReporter",
        "Lcom/vk/id/tracking/core/CrashReporter;",
        "getCrashReporter",
        "()Lcom/vk/id/tracking/core/CrashReporter;",
        "trackingTracker",
        "Lcom/vk/id/analytics/VKIDAnalytics$Tracker;",
        "getTrackingTracker",
        "()Lcom/vk/id/analytics/VKIDAnalytics$Tracker;",
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
.field private final activityStarter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

.field private final api:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/network/InternalVKIDApiContract;",
            ">;"
        }
    .end annotation
.end field

.field private final crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

.field private final deviceIdStorage:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final encryptedSharedPreferencesStorage:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/storage/InternalVKIDPreferencesStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final groupSubscriptionApiService:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;",
            ">;"
        }
    .end annotation
.end field

.field private final performanceTracker:Lcom/vk/id/tracking/core/PerformanceTracker;

.field private final prefsStore:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/store/InternalVKIDPrefsStore;",
            ">;"
        }
    .end annotation
.end field

.field private final trackingTracker:Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

.field private final vkSilentAuthInfoProvider:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/test/TestSilentAuthInfoProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final vkidPackageManager:Lcom/vk/id/internal/context/InternalVKIDPackageManager;


# direct methods
.method public static synthetic $r8$lambda$0Y2R_aA6hkZoUCzny9sAgsd7AE8(Lcom/vk/id/internal/store/InternalVKIDPrefsStore;Lcom/vk/id/VKID$Companion$init$2;)Lcom/vk/id/internal/store/InternalVKIDPrefsStore;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/VKID$Companion$init$2;->prefsStore$lambda$4(Lcom/vk/id/internal/store/InternalVKIDPrefsStore;Lcom/vk/id/VKID$Companion$init$2;)Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DP1ByEo1LotUWV2fSS1SLxj6fyA(Lcom/vk/id/network/InternalVKIDApiContract;Lcom/vk/id/VKID$Companion$init$2;)Lcom/vk/id/network/InternalVKIDApiContract;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/VKID$Companion$init$2;->api$lambda$0(Lcom/vk/id/network/InternalVKIDApiContract;Lcom/vk/id/VKID$Companion$init$2;)Lcom/vk/id/network/InternalVKIDApiContract;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K5yEwDEIiefnPbOvsDhTA0M4ATs(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;)Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/VKID$Companion$init$2;->groupSubscriptionApiService$lambda$1(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;)Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QVeQtCoek5qUKWbcKuUqJ1M1_GI()Lcom/vk/id/test/TestSilentAuthInfoProvider;
    .locals 1

    invoke-static {}, Lcom/vk/id/VKID$Companion$init$2;->vkSilentAuthInfoProvider$lambda$2()Lcom/vk/id/test/TestSilentAuthInfoProvider;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$kI66c_W6DvX1Pz6npt-hEWK2VSQ(Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;Lcom/vk/id/VKID$Companion$init$2;)Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/VKID$Companion$init$2;->deviceIdStorage$lambda$3(Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;Lcom/vk/id/VKID$Companion$init$2;)Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zzP1R5eSEm8RHNV5EoK2qzaLgRM(Lcom/vk/id/storage/InternalVKIDPreferencesStorage;Lcom/vk/id/VKID$Companion$init$2;)Lcom/vk/id/storage/InternalVKIDPreferencesStorage;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/VKID$Companion$init$2;->encryptedSharedPreferencesStorage$lambda$5(Lcom/vk/id/storage/InternalVKIDPreferencesStorage;Lcom/vk/id/VKID$Companion$init$2;)Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Lcom/vk/id/internal/context/InternalVKIDActivityStarter;Landroid/content/Context;Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;Lcom/vk/id/network/InternalVKIDApiContract;Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;Lcom/vk/id/internal/store/InternalVKIDPrefsStore;Lcom/vk/id/storage/InternalVKIDPreferencesStorage;)V
    .locals 11

    move-object v10, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x5c

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v6, p4

    .line 147
    invoke-direct/range {v0 .. v9}, Lcom/vk/id/internal/di/VKIDDepsProd;-><init>(Landroid/content/Context;ZLjava/lang/String;ZZLcom/vk/id/groupsubscription/GroupSubscriptionLimit;Lcom/vk/id/network/InternalVKIDApiContract;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 148
    new-instance v0, Lcom/vk/id/VKID$Companion$init$2$$ExternalSyntheticLambda0;

    move-object/from16 v1, p5

    invoke-direct {v0, v1, p0}, Lcom/vk/id/VKID$Companion$init$2$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/network/InternalVKIDApiContract;Lcom/vk/id/VKID$Companion$init$2;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v10, Lcom/vk/id/VKID$Companion$init$2;->api:Lkotlin/Lazy;

    .line 152
    new-instance v0, Lcom/vk/id/VKID$Companion$init$2$$ExternalSyntheticLambda1;

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/vk/id/VKID$Companion$init$2$$ExternalSyntheticLambda1;-><init>(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v10, Lcom/vk/id/VKID$Companion$init$2;->groupSubscriptionApiService:Lkotlin/Lazy;

    .line 153
    new-instance v0, Lcom/vk/id/VKID$Companion$init$2$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/vk/id/VKID$Companion$init$2$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v10, Lcom/vk/id/VKID$Companion$init$2;->vkSilentAuthInfoProvider:Lkotlin/Lazy;

    .line 154
    new-instance v0, Lcom/vk/id/VKID$Companion$init$2$$ExternalSyntheticLambda3;

    move-object/from16 v1, p7

    invoke-direct {v0, v1, p0}, Lcom/vk/id/VKID$Companion$init$2$$ExternalSyntheticLambda3;-><init>(Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;Lcom/vk/id/VKID$Companion$init$2;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v10, Lcom/vk/id/VKID$Companion$init$2;->deviceIdStorage:Lkotlin/Lazy;

    .line 155
    new-instance v0, Lcom/vk/id/VKID$Companion$init$2$$ExternalSyntheticLambda4;

    move-object/from16 v1, p8

    invoke-direct {v0, v1, p0}, Lcom/vk/id/VKID$Companion$init$2$$ExternalSyntheticLambda4;-><init>(Lcom/vk/id/internal/store/InternalVKIDPrefsStore;Lcom/vk/id/VKID$Companion$init$2;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v10, Lcom/vk/id/VKID$Companion$init$2;->prefsStore:Lkotlin/Lazy;

    .line 157
    new-instance v0, Lcom/vk/id/VKID$Companion$init$2$$ExternalSyntheticLambda5;

    move-object/from16 v1, p9

    invoke-direct {v0, v1, p0}, Lcom/vk/id/VKID$Companion$init$2$$ExternalSyntheticLambda5;-><init>(Lcom/vk/id/storage/InternalVKIDPreferencesStorage;Lcom/vk/id/VKID$Companion$init$2;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v10, Lcom/vk/id/VKID$Companion$init$2;->encryptedSharedPreferencesStorage:Lkotlin/Lazy;

    if-nez p1, :cond_0

    .line 158
    invoke-super {p0}, Lcom/vk/id/internal/di/VKIDDepsProd;->getVkidPackageManager()Lcom/vk/id/internal/context/InternalVKIDPackageManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, v10, Lcom/vk/id/VKID$Companion$init$2;->vkidPackageManager:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

    if-nez p2, :cond_1

    .line 159
    invoke-super {p0}, Lcom/vk/id/internal/di/VKIDDepsProd;->getActivityStarter()Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, v10, Lcom/vk/id/VKID$Companion$init$2;->activityStarter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

    .line 160
    new-instance v0, Lcom/vk/id/VKID$Companion$init$2$performanceTracker$1;

    invoke-direct {v0}, Lcom/vk/id/VKID$Companion$init$2$performanceTracker$1;-><init>()V

    check-cast v0, Lcom/vk/id/tracking/core/PerformanceTracker;

    iput-object v0, v10, Lcom/vk/id/VKID$Companion$init$2;->performanceTracker:Lcom/vk/id/tracking/core/PerformanceTracker;

    .line 166
    new-instance v0, Lcom/vk/id/VKID$Companion$init$2$crashReporter$1;

    invoke-direct {v0}, Lcom/vk/id/VKID$Companion$init$2$crashReporter$1;-><init>()V

    check-cast v0, Lcom/vk/id/tracking/core/CrashReporter;

    iput-object v0, v10, Lcom/vk/id/VKID$Companion$init$2;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    .line 178
    new-instance v0, Lcom/vk/id/VKID$Companion$init$2$trackingTracker$1;

    invoke-direct {v0}, Lcom/vk/id/VKID$Companion$init$2$trackingTracker$1;-><init>()V

    check-cast v0, Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    iput-object v0, v10, Lcom/vk/id/VKID$Companion$init$2;->trackingTracker:Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    return-void
.end method

.method private static final api$lambda$0(Lcom/vk/id/network/InternalVKIDApiContract;Lcom/vk/id/VKID$Companion$init$2;)Lcom/vk/id/network/InternalVKIDApiContract;
    .locals 0

    if-nez p0, :cond_0

    .line 149
    invoke-super {p1}, Lcom/vk/id/internal/di/VKIDDepsProd;->getApi()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/id/network/InternalVKIDApiContract;

    :cond_0
    return-object p0
.end method

.method private static final deviceIdStorage$lambda$3(Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;Lcom/vk/id/VKID$Companion$init$2;)Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;
    .locals 0

    if-nez p0, :cond_0

    .line 154
    invoke-super {p1}, Lcom/vk/id/internal/di/VKIDDepsProd;->getDeviceIdStorage()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;

    :cond_0
    return-object p0
.end method

.method private static final encryptedSharedPreferencesStorage$lambda$5(Lcom/vk/id/storage/InternalVKIDPreferencesStorage;Lcom/vk/id/VKID$Companion$init$2;)Lcom/vk/id/storage/InternalVKIDPreferencesStorage;
    .locals 0

    if-nez p0, :cond_0

    .line 157
    invoke-super {p1}, Lcom/vk/id/internal/di/VKIDDepsProd;->getEncryptedSharedPreferencesStorage()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

    :cond_0
    return-object p0
.end method

.method private static final groupSubscriptionApiService$lambda$1(Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;)Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;
    .locals 0

    return-object p0
.end method

.method private static final prefsStore$lambda$4(Lcom/vk/id/internal/store/InternalVKIDPrefsStore;Lcom/vk/id/VKID$Companion$init$2;)Lcom/vk/id/internal/store/InternalVKIDPrefsStore;
    .locals 0

    if-nez p0, :cond_0

    .line 155
    invoke-super {p1}, Lcom/vk/id/internal/di/VKIDDepsProd;->getPrefsStore()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    :cond_0
    return-object p0
.end method

.method private static final vkSilentAuthInfoProvider$lambda$2()Lcom/vk/id/test/TestSilentAuthInfoProvider;
    .locals 1

    .line 153
    new-instance v0, Lcom/vk/id/test/TestSilentAuthInfoProvider;

    invoke-direct {v0}, Lcom/vk/id/test/TestSilentAuthInfoProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getActivityStarter()Lcom/vk/id/internal/context/InternalVKIDActivityStarter;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$init$2;->activityStarter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

    return-object v0
.end method

.method public getApi()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/vk/id/network/InternalVKIDApiContract;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$init$2;->api:Lkotlin/Lazy;

    return-object v0
.end method

.method public getCrashReporter()Lcom/vk/id/tracking/core/CrashReporter;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$init$2;->crashReporter:Lcom/vk/id/tracking/core/CrashReporter;

    return-object v0
.end method

.method public getDeviceIdStorage()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$init$2;->deviceIdStorage:Lkotlin/Lazy;

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

    .line 156
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$init$2;->encryptedSharedPreferencesStorage:Lkotlin/Lazy;

    return-object v0
.end method

.method public getGroupSubscriptionApiService()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApiContract;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$init$2;->groupSubscriptionApiService:Lkotlin/Lazy;

    return-object v0
.end method

.method public getPerformanceTracker()Lcom/vk/id/tracking/core/PerformanceTracker;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$init$2;->performanceTracker:Lcom/vk/id/tracking/core/PerformanceTracker;

    return-object v0
.end method

.method public getPrefsStore()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/store/InternalVKIDPrefsStore;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$init$2;->prefsStore:Lkotlin/Lazy;

    return-object v0
.end method

.method public getTrackingTracker()Lcom/vk/id/analytics/VKIDAnalytics$Tracker;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$init$2;->trackingTracker:Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    return-object v0
.end method

.method public getVkSilentAuthInfoProvider()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/vk/id/test/TestSilentAuthInfoProvider;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$init$2;->vkSilentAuthInfoProvider:Lkotlin/Lazy;

    return-object v0
.end method

.method public getVkidPackageManager()Lcom/vk/id/internal/context/InternalVKIDPackageManager;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/vk/id/VKID$Companion$init$2;->vkidPackageManager:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

    return-object v0
.end method
