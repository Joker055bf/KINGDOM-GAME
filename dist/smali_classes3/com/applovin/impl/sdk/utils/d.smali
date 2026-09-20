.class public Lcom/applovin/impl/sdk/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/utils/d$a;
    }
.end annotation


# static fields
.field private static a:Z = true

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z

.field private static e:Lcom/applovin/impl/sdk/utils/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/utils/d;->b:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/utils/d;->c:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/applovin/impl/sdk/utils/d;->d:Z

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/applovin/impl/sdk/utils/d;->e:Lcom/applovin/impl/sdk/utils/d$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/d;->b(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .locals 1

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 195
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->checkClassExistence(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;
    .locals 5

    .line 61
    sget-object v0, Lcom/applovin/impl/sdk/utils/d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-boolean v1, Lcom/applovin/impl/sdk/utils/d;->d:Z

    if-eqz v1, :cond_0

    .line 67
    sget-object p0, Lcom/applovin/impl/sdk/utils/d;->e:Lcom/applovin/impl/sdk/utils/d$a;

    monitor-exit v0

    return-object p0

    .line 74
    :cond_0
    sget-object v1, Lcom/applovin/impl/sdk/utils/d;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    .line 76
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 77
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_1

    .line 85
    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/d;->c(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object p0

    .line 90
    monitor-enter v0

    .line 92
    :try_start_1
    sput-boolean v4, Lcom/applovin/impl/sdk/utils/d;->d:Z

    .line 93
    sput-object p0, Lcom/applovin/impl/sdk/utils/d;->e:Lcom/applovin/impl/sdk/utils/d$a;

    .line 95
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 97
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 101
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 97
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 111
    :cond_1
    :try_start_3
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3c

    invoke-virtual {v3, v0, v1, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "DataCollector"

    const-string v0, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }: collection timeout"

    .line 115
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "DataCollector"

    const-string v1, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }"

    .line 121
    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :cond_2
    :goto_1
    sget-object p0, Lcom/applovin/impl/sdk/utils/d;->b:Ljava/lang/Object;

    monitor-enter p0

    .line 133
    :try_start_4
    sget-object v0, Lcom/applovin/impl/sdk/utils/d;->e:Lcom/applovin/impl/sdk/utils/d$a;

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    .line 134
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception p0

    .line 79
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method private static c(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;
    .locals 1

    .line 139
    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/d;->d(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 144
    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/d;->e(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 150
    new-instance v0, Lcom/applovin/impl/sdk/utils/d$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/utils/d$a;-><init>()V

    :cond_1
    return-object v0
.end method

.method private static d(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;
    .locals 5

    .line 162
    invoke-static {}, Lcom/applovin/impl/sdk/utils/d;->a()Z

    move-result v0

    const-string v1, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }"

    const-string v2, "DataCollector"

    if-eqz v0, :cond_1

    .line 166
    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/utils/d$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/utils/d$a;-><init>()V

    .line 168
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    .line 170
    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/utils/d$a;->a(Z)V

    if-eqz v4, :cond_0

    .line 171
    sget-object v4, Lcom/applovin/impl/sdk/utils/d$a$a;->b:Lcom/applovin/impl/sdk/utils/d$a$a;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/applovin/impl/sdk/utils/d$a$a;->c:Lcom/applovin/impl/sdk/utils/d$a$a;

    :goto_0
    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/utils/d$a;->a(Lcom/applovin/impl/sdk/utils/d$a$a;)V

    .line 172
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/utils/d$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 178
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isFireOS(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 180
    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 185
    :cond_1
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isFireOS(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 187
    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;
    .locals 4

    const-string v0, "DataCollector"

    .line 204
    sget-boolean v1, Lcom/applovin/impl/sdk/utils/d;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 209
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 210
    new-instance v1, Lcom/applovin/impl/sdk/utils/d$a;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/utils/d$a;-><init>()V

    const-string v3, "advertising_id"

    .line 212
    invoke-static {p0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/utils/d$a;->a(Ljava/lang/String;)V

    const-string v3, "limit_ad_tracking"

    .line 214
    invoke-static {p0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 215
    :goto_0
    invoke-virtual {v1, p0}, Lcom/applovin/impl/sdk/utils/d$a;->a(Z)V

    if-eqz p0, :cond_1

    .line 216
    sget-object p0, Lcom/applovin/impl/sdk/utils/d$a$a;->b:Lcom/applovin/impl/sdk/utils/d$a$a;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/applovin/impl/sdk/utils/d$a$a;->c:Lcom/applovin/impl/sdk/utils/d$a$a;

    :goto_1
    invoke-virtual {v1, p0}, Lcom/applovin/impl/sdk/utils/d$a;->a(Lcom/applovin/impl/sdk/utils/d$a$a;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    const-string v1, "Unable to collect Fire OS IDFA"

    .line 227
    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v1, "Unable to determine if Fire OS limited ad tracking is turned on"

    .line 223
    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    :cond_2
    :goto_2
    sput-boolean v2, Lcom/applovin/impl/sdk/utils/d;->a:Z

    const/4 p0, 0x0

    return-object p0
.end method
