.class public Lcom/openmediation/sdk/core/ListenerWrapper;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListenerWrapper: "


# instance fields
.field private mBnListener:Lcom/openmediation/sdk/banner/BannerAdListener;

.field private mCpListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/openmediation/sdk/promotion/PromotionAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/openmediation/sdk/interstitial/InterstitialAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediationIsListener:Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

.field private mMediationRvListener:Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

.field private mNaListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/openmediation/sdk/nativead/NativeAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlacementId:Ljava/lang/String;

.field private mRvListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/openmediation/sdk/video/RewardedVideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSplashAdListener:Lcom/openmediation/sdk/splash/SplashAdListener;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mRvListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mIsListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mCpListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mNaListeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mRvListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/core/ListenerWrapper;)Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationRvListener:Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mIsListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/core/ListenerWrapper;)Lcom/openmediation/sdk/mediation/MediationInterstitialListener;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationIsListener:Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mCpListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$600(Lcom/openmediation/sdk/core/ListenerWrapper;)Lcom/openmediation/sdk/splash/SplashAdListener;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mSplashAdListener:Lcom/openmediation/sdk/splash/SplashAdListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/openmediation/sdk/core/ListenerWrapper;)Lcom/openmediation/sdk/banner/BannerAdListener;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mBnListener:Lcom/openmediation/sdk/banner/BannerAdListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/openmediation/sdk/core/ListenerWrapper;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mNaListeners:Ljava/util/Set;

    return-object p0
.end method

.method private canSendCallback(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private canSendListCallback(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private canSendListCallback(Ljava/util/Set;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private sendCallback(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addInterstitialListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mIsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNativeAdListener(Lcom/openmediation/sdk/nativead/NativeAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mNaListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPromotionAdListener(Lcom/openmediation/sdk/promotion/PromotionAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mCpListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRewardedVideoListener(Lcom/openmediation/sdk/video/RewardedVideoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mRvListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBannerAdClicked(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBannerAdClicked, placementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mBnListener:Lcom/openmediation/sdk/banner/BannerAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$43;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$43;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onBannerAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBannerAdLoadFailed, placementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mBnListener:Lcom/openmediation/sdk/banner/BannerAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$42;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/ListenerWrapper$42;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onBannerAdLoaded(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBannerAdLoaded, placementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mBnListener:Lcom/openmediation/sdk/banner/BannerAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$41;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/ListenerWrapper$41;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdAvailabilityChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInterstitialAdAvailabilityChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mIsListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$18;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$18;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Z)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdClicked(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInterstitialAdClicked : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mIsListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$27;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$27;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationIsListener:Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$28;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$28;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onInterstitialAdClosed(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInterstitialAdClosed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mIsListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$25;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$25;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationIsListener:Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$26;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$26;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInterstitialAdLoadFailed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationIsListener:Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$20;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$20;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdLoadSuccess()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInterstitialAdLoadSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationIsListener:Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$19;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/core/ListenerWrapper$19;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInterstitialAdShowFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mIsListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/ListenerWrapper$23;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationIsListener:Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$24;

    invoke-direct {v0, p0, p2, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$24;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/error/Error;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onInterstitialAdShowed(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInterstitialAdShowed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mIsListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$21;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$21;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationIsListener:Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$22;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$22;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onNativeAdClicked(Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNativeAdClicked, placementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AdInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mNaListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$47;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/ListenerWrapper$47;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onNativeAdImpression(Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNativeAdImpression, placementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AdInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mNaListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$46;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/ListenerWrapper$46;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onNativeAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNativeAdLoadFailed, placementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mNaListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$45;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/ListenerWrapper$45;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onNativeAdLoaded(Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNativeAdLoaded, placementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mNaListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$44;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/ListenerWrapper$44;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;Lcom/openmediation/sdk/nativead/AdInfo;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPromotionAdAvailabilityChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPromotionAdAvailabilityChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mCpListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$29;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$29;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Z)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPromotionAdClicked(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPromotionAdClicked "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mCpListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$30;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$30;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPromotionAdHidden(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPromotionAdHidden : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mCpListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$33;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$33;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPromotionAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPromotionAdShowFailed, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mCpListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$32;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/ListenerWrapper$32;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPromotionAdShowed(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPromotionAdShowed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mCpListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$31;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$31;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoAdClicked : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mRvListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$8;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$8;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationRvListener:Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$9;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$9;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoAdClosed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mRvListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$10;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$10;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationRvListener:Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$11;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$11;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdEnded(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoAdEnded : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mRvListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$14;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$14;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationRvListener:Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/openmediation/sdk/core/ListenerWrapper$15;

    invoke-direct {p1, p0}, Lcom/openmediation/sdk/core/ListenerWrapper$15;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoAdRewarded : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mRvListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$16;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$16;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationRvListener:Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$17;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$17;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoAdShowFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mRvListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/ListenerWrapper$6;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationRvListener:Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$7;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/error/Error;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdShowed(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoAdShowed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mRvListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$4;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$4;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationRvListener:Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$5;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$5;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdStarted(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoAdStarted : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mRvListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$12;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$12;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/model/Scene;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationRvListener:Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/openmediation/sdk/core/ListenerWrapper$13;

    invoke-direct {p1, p0}, Lcom/openmediation/sdk/core/ListenerWrapper$13;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoAvailabilityChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mRvListeners:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$1;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Z)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoLoadFailed(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoLoadFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationRvListener:Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$3;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$3;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoLoadSuccess()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoLoadSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationRvListener:Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$2;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/core/ListenerWrapper$2;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSplashAdClicked(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ListenerWrapper: onSplashAdClicked : placementId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mSplashAdListener:Lcom/openmediation/sdk/splash/SplashAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$38;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$38;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSplashAdDismissed(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ListenerWrapper: onSplashAdDismissed : placementId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mSplashAdListener:Lcom/openmediation/sdk/splash/SplashAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$40;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$40;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSplashAdFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ListenerWrapper: onSplashAdFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mSplashAdListener:Lcom/openmediation/sdk/splash/SplashAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$35;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/ListenerWrapper$35;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSplashAdLoad(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ListenerWrapper: onSplashAdLoad : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mSplashAdListener:Lcom/openmediation/sdk/splash/SplashAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$34;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$34;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSplashAdShowFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ListenerWrapper: onSplashAdShowFailed : placementId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mSplashAdListener:Lcom/openmediation/sdk/splash/SplashAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$37;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/ListenerWrapper$37;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSplashAdShowed(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ListenerWrapper: onSplashAdShowed : placementId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mSplashAdListener:Lcom/openmediation/sdk/splash/SplashAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$36;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/core/ListenerWrapper$36;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSplashAdTick(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ListenerWrapper: onSplashAdTick : placementId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mSplashAdListener:Lcom/openmediation/sdk/splash/SplashAdListener;

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->canSendListCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/core/ListenerWrapper$39;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/openmediation/sdk/core/ListenerWrapper$39;-><init>(Lcom/openmediation/sdk/core/ListenerWrapper;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->sendCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public removeInterstitialListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mIsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeNativeAdListener(Lcom/openmediation/sdk/nativead/NativeAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mNaListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePromotionAdListener(Lcom/openmediation/sdk/promotion/PromotionAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mCpListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRewardedVideoListener(Lcom/openmediation/sdk/video/RewardedVideoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mRvListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBnListener(Lcom/openmediation/sdk/banner/BannerAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mBnListener:Lcom/openmediation/sdk/banner/BannerAdListener;

    return-void
.end method

.method public setMediationInterstitialListener(Lcom/openmediation/sdk/mediation/MediationInterstitialListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationIsListener:Lcom/openmediation/sdk/mediation/MediationInterstitialListener;

    return-void
.end method

.method public setMediationRewardedVideoListener(Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mMediationRvListener:Lcom/openmediation/sdk/mediation/MediationRewardVideoListener;

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mPlacementId:Ljava/lang/String;

    return-void
.end method

.method public setSplashAdListener(Lcom/openmediation/sdk/splash/SplashAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/ListenerWrapper;->mSplashAdListener:Lcom/openmediation/sdk/splash/SplashAdListener;

    return-void
.end method
