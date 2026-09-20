.class public Lcom/openmediation/sdk/mobileads/AdMobSplashManager;
.super Ljava/lang/Object;
.source "AdMobSplashManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/mobileads/AdMobSplashManager$Holder;
    }
.end annotation


# static fields
.field private static final TIME_LESS:J = 0xdbba00L


# instance fields
.field private final mAdLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/mediation/SplashAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSplashAds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/appopen/AppOpenAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mSplashAds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mAdLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mInitCallbacks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mSplashAds:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mAdLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->showSplashAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    return-void
.end method

.method private createAdRequest(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;
    .locals 3

    .line 152
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    .line 154
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "npa"

    const-string v2, "1"

    .line 156
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 159
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "rdp"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    :cond_2
    const-class p1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 163
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/openmediation/sdk/mobileads/AdMobSplashManager;
    .locals 1

    .line 49
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$Holder;->access$100()Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    move-result-object v0

    return-object v0
.end method

.method private showSplashAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mSplashAds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "AdMobAdapter"

    const-string p2, "Not Ready"

    const-string v0, "Splash"

    .line 171
    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mAdLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance p2, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$4;

    invoke-direct {p2, p0, p3}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$4;-><init>(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    .line 212
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 213
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V

    return-void
.end method

.method private wasLoadTimeLessThanNHoursAgo(J)Z
    .locals 2

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0xdbba00

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addAdCallback(Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public destroyAd(Ljava/lang/String;)V
    .locals 1

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mSplashAds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 112
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mAdLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public isAdAvailable(Ljava/lang/String;)Z
    .locals 6

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mAdLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mSplashAds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mAdLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 145
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mSplashAds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->wasLoadTimeLessThanNHoursAgo(J)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/openmediation/sdk/mediation/SplashAdCallback;",
            ")V"
        }
    .end annotation

    .line 66
    new-instance v5, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;

    invoke-direct {v5, p0, p2, p6}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$1;-><init>(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;Ljava/lang/String;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    .line 99
    invoke-direct {p0, p4, p5}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->createAdRequest(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v4

    .line 100
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$2;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$2;-><init>(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInitSuccess()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mediation/SplashAdCallback;

    .line 60
    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdInitSuccess()V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 1

    .line 117
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->isAdAvailable(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    const-string p1, "AdMobAdapter"

    const-string p2, "SplashAd not ready"

    const-string p3, "Splash"

    .line 119
    invoke-static {p3, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 124
    :cond_1
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$3;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$3;-><init>(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
