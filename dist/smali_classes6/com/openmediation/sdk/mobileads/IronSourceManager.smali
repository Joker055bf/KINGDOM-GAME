.class Lcom/openmediation/sdk/mobileads/IronSourceManager;
.super Ljava/lang/Object;
.source "IronSourceManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;
.implements Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialListener;


# static fields
.field private static final MEDIATION_NAME:Ljava/lang/String; = "OpenMediation"

.field private static final instance:Lcom/openmediation/sdk/mobileads/IronSourceManager;


# instance fields
.field private availableInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/openmediation/sdk/mobileads/IronSourceAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private availableStates:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;",
            ">;"
        }
    .end annotation
.end field

.field private mLastIsAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/openmediation/sdk/mobileads/IronSourceAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMediationIsInsId:Ljava/lang/String;

.field private mLastMediationVideoInsId:Ljava/lang/String;

.field private mLastVideoAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/openmediation/sdk/mobileads/IronSourceAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/openmediation/sdk/mobileads/IronSourceManager;

    invoke-direct {v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;-><init>()V

    sput-object v0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->instance:Lcom/openmediation/sdk/mobileads/IronSourceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableStates:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V

    .line 53
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V

    .line 56
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 57
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    return-void
.end method

.method private canLoadInstance(Ljava/lang/String;)Z
    .locals 1

    .line 130
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->isAdapterRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->isRegisteredAdapterCanLoad(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private changeInstanceState(Ljava/lang/String;Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager change state to %s : %s"

    .line 236
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static getInstance()Lcom/openmediation/sdk/mobileads/IronSourceManager;
    .locals 1

    .line 46
    sget-object v0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->instance:Lcom/openmediation/sdk/mobileads/IronSourceManager;

    return-object v0
.end method

.method private isAdapterRegistered(Ljava/lang/String;)Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isRegisteredAdapterCanLoad(Ljava/lang/String;)Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-nez v0, :cond_1

    return v1

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;

    if-eqz p1, :cond_3

    .line 148
    sget-object v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;->CAN_LOAD:Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 257
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    const-string v1, "OM-IronSource"

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerAdapter(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/openmediation/sdk/mobileads/IronSourceAdapter;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, "registerAdapter - weakAdapter is null"

    .line 184
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    return-void

    .line 187
    :cond_0
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-nez v0, :cond_1

    const-string p1, "registerAdapter - ironSourceMediationAdapter is null"

    .line 189
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method initIronSourceSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;)V"
        }
    .end annotation

    const-string v0, "OpenMediation"

    .line 61
    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setMediationType(Ljava/lang/String;)V

    .line 62
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 63
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceSetting;->isMediationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, p2, p3}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, p2, p3}, Lcom/ironsource/mediationsdk/IronSource;->initISDemandOnly(Landroid/content/Context;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    :cond_1
    :goto_0
    return-void
.end method

.method isInterstitialReady(Ljava/lang/String;)Z
    .locals 1

    .line 175
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceSetting;->isMediationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isInterstitialReady()Z

    move-result p1

    return p1

    .line 178
    :cond_0
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isISDemandOnlyInterstitialReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method isRewardedVideoReady(Ljava/lang/String;)Z
    .locals 1

    .line 168
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceSetting;->isMediationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isRewardedVideoAvailable()Z

    move-result p1

    return p1

    .line 171
    :cond_0
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isISDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method loadInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/openmediation/sdk/mobileads/IronSourceAdapter;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-nez v0, :cond_1

    const-string p1, "loadInterstitial - ironSourceAdapter is null"

    .line 79
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceSetting;->isMediationMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    .line 86
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    return-void

    .line 90
    :cond_2
    invoke-direct {p0, p2}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->canLoadInstance(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    sget-object v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;->LOCKED:Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;

    invoke-direct {p0, p2, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->changeInstanceState(Ljava/lang/String;Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;)V

    .line 92
    invoke-direct {p0, p2, p3}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->registerAdapter(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 93
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/IronSource;->loadISDemandOnlyInterstitial(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p3, 0x1fe

    const-string v1, "interstitial instance already exists, couldn\'t load another one at the same time!"

    invoke-direct {p1, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p2, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p1, "loadInterstitial- instanceId / weakAdapter is null"

    .line 73
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/openmediation/sdk/mobileads/IronSourceAdapter;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-nez v0, :cond_1

    const-string p1, "loadRewardedVideo - ironSourceMediationAdapter is null"

    .line 109
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceSetting;->isMediationMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    return-void

    .line 119
    :cond_2
    invoke-direct {p0, p2}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->canLoadInstance(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    sget-object v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;->LOCKED:Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;

    invoke-direct {p0, p2, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->changeInstanceState(Ljava/lang/String;Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;)V

    .line 121
    invoke-direct {p0, p2, p3}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->registerAdapter(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 122
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/IronSource;->loadISDemandOnlyRewardedVideo(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_3
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p3, 0x1fe

    const-string v1, "instance already exists, couldn\'t load another one in the same time!"

    invoke-direct {p1, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p2, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p1, "loadRewardedVideo - instanceId / weakAdapter is null"

    .line 103
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdClicked()V
    .locals 2

    const-string v0, "IronSourceManager got onInterstitialAdClicked "

    .line 456
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdClicked(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got interstitial ad clicked for instance %s"

    .line 393
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 2

    const-string v0, "IronSourceManager got onInterstitialAdClosed "

    .line 435
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdClosed(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got interstitial ad closed for instance %s"

    .line 363
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    const-string v0, "IronSourceManager got onInterstitialAdLoadFailed "

    .line 419
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got interstitial Load failed for instance %s"

    .line 333
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;->CAN_LOAD:Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->changeInstanceState(Ljava/lang/String;Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;)V

    .line 335
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, p1, p2}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdOpened()V
    .locals 2

    const-string v0, "IronSourceManager got onInterstitialAdOpened "

    .line 427
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdOpened(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdOpened(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got interstitial ad opened for instance %s"

    .line 348
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdOpened(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdReady()V
    .locals 2

    const-string v0, "IronSourceManager got onInterstitialAdReady "

    .line 411
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdReady(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got interstitial Load success for instance %s"

    .line 319
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;->CAN_LOAD:Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->changeInstanceState(Ljava/lang/String;Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;)V

    .line 321
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    const-string v0, "IronSourceManager got onInterstitialAdShowFailed "

    .line 448
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastIsAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationIsInsId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got interstitial show failed for instance %s"

    .line 378
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0, p1, p2}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .locals 1

    const-string v0, "IronSourceManager got onInterstitialAdShowSucceeded "

    .line 443
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IronSourceManager got onRewardedVideoAdClicked "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 520
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 521
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClicked(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got RV ad clicked for instance %s"

    .line 291
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 2

    const-string v0, "IronSourceManager got onRewardedVideoAdClosed "

    .line 473
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdEnded(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got RV ad closed for instance %s"

    .line 262
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdEnded(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .locals 1

    const-string v0, "IronSourceManager got onRewardedVideoAdEnded "

    .line 498
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got RV Load failed for instance %s"

    .line 221
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;->CAN_LOAD:Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->changeInstanceState(Ljava/lang/String;Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;)V

    .line 224
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1, p2}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdLoadSuccess(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got RV Load success for instance %s"

    .line 206
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;->CAN_LOAD:Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->changeInstanceState(Ljava/lang/String;Lcom/openmediation/sdk/mobileads/IronSourceAdapter$INSTANCE_STATE;)V

    .line 209
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdLoadSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    const-string v0, "IronSourceManager got IronSourceManager got onRewardedVideoAdOpened "

    .line 464
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdStarted(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdOpened(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdOpened(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got RV ad opened for instance %s"

    .line 243
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdOpened(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdStarted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 1

    const-string p1, "IronSourceManager got onRewardedVideoAdRewarded "

    .line 503
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 504
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 505
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdRewarded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdRewarded(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got RV ad rewarded for instance %s"

    .line 305
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdRewarded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IronSourceManager got onRewardedVideoAdShowFailed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IronSourceManager got RV show failed for instance %s"

    .line 277
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->availableInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p1, p2}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .locals 1

    const-string v0, "IronSourceManager got onRewardedVideoAdStarted "

    .line 493
    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .locals 2

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IronSourceManager got onRewardedVideoAvailabilityChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/mobileads/IronSourceManager;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 486
    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 487
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastVideoAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;

    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceManager;->mLastMediationVideoInsId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/mobileads/IronSourceAdapter;->onRewardedVideoAdLoadSuccess(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method showInterstitial(Ljava/lang/String;)V
    .locals 1

    .line 160
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceSetting;->isMediationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showISDemandOnlyInterstitial(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method showRewardedVideo(Ljava/lang/String;)V
    .locals 1

    .line 152
    invoke-static {}, Lcom/openmediation/sdk/mobileads/IronSourceSetting;->isMediationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showISDemandOnlyRewardedVideo(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
