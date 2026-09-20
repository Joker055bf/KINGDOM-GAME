.class public Lcom/openmediation/sdk/mobileads/AdMobAdapter;
.super Lcom/openmediation/sdk/mediation/CustomAdsAdapter;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;
    }
.end annotation


# instance fields
.field private final mBannerAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/AdView;",
            ">;"
        }
    .end annotation
.end field

.field private final mBnInitCallbacks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/BannerAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitState:Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

.field private final mInterstitialAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsInitCallbacks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/InterstitialAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mNaInitCallbacks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/NativeAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mRewardedAds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/rewarded/RewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private final mRvInitCallbacks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/mediation/RewardedVideoCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;-><init>()V

    .line 67
    sget-object v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;->NOT_INIT:Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mInitState:Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mRewardedAds:Ljava/util/concurrent/ConcurrentMap;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mInterstitialAds:Ljava/util/concurrent/ConcurrentMap;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mRvInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mIsInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mBnInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mNaInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mInitState:Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->showAdMobVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mRewardedAds:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mIsInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mRvInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->createInterstitialListener(Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->showAdMobInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mBnInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->initSDK()V

    return-void
.end method

.method static synthetic access$3000(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/util/Map;)Lcom/google/android/gms/ads/AdSize;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->getAdSize(Ljava/util/Map;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/google/android/gms/ads/AdView;Lcom/openmediation/sdk/mediation/BannerAdCallback;)Lcom/google/android/gms/ads/AdListener;
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->createBannerAdListener(Lcom/google/android/gms/ads/AdView;Lcom/openmediation/sdk/mediation/BannerAdCallback;)Lcom/google/android/gms/ads/AdListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mNaInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/openmediation/sdk/mediation/NativeAdCallback;)Lcom/google/android/gms/ads/AdListener;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->createNativeAdListener(Lcom/openmediation/sdk/mediation/NativeAdCallback;)Lcom/google/android/gms/ads/AdListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mInterstitialAds:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->createAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->createRvLoadListener(Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    move-result-object p0

    return-object p0
.end method

.method private createAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 4

    .line 111
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mUserConsent:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mUSPrivacyLimit:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 113
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 114
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mUserConsent:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mUserConsent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "npa"

    const-string v3, "1"

    .line 115
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mUSPrivacyLimit:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mUSPrivacyLimit:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "rdp"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    :cond_2
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 122
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method private createBannerAdListener(Lcom/google/android/gms/ads/AdView;Lcom/openmediation/sdk/mediation/BannerAdCallback;)Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 926
    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$17;

    invoke-direct {v0, p0, p2, p1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$17;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/openmediation/sdk/mediation/BannerAdCallback;Lcom/google/android/gms/ads/AdView;)V

    return-object v0
.end method

.method private createInterstitialListener(Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
    .locals 1

    .line 860
    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$15;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    return-object v0
.end method

.method private createIsCallback(Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1

    .line 883
    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$16;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$16;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    return-object v0
.end method

.method private createNativeAdListener(Lcom/openmediation/sdk/mediation/NativeAdCallback;)Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 979
    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$18;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$18;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    return-object v0
.end method

.method private createRvCallback(Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1

    .line 313
    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$6;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$6;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    return-object v0
.end method

.method private createRvLoadListener(Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
    .locals 1

    .line 292
    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$5;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    return-object v0
.end method

.method private getAdSize(Ljava/util/Map;)Lcom/google/android/gms/ads/AdSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/ads/AdSize;"
        }
    .end annotation

    .line 1008
    invoke-static {p1}, Lcom/openmediation/sdk/mediation/MediationUtil;->getBannerDesc(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 1009
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "LEADERBOARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "SMART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "RECTANGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1017
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 1011
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 1015
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    .line 1013
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x171242b1 -> :sswitch_2
        0x4b59da9 -> :sswitch_1
        0x1aa2fb5d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized initSDK()V
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    sget-object v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;->INIT_PENDING:Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mInitState:Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    .line 127
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    .line 128
    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->onInitSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onInitSuccess()V
    .locals 2

    .line 132
    sget-object v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    iput-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mInitState:Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    .line 133
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mIsInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    .line 134
    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitSuccess()V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mIsInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 137
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mRvInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    .line 138
    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitSuccess()V

    goto :goto_1

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mRvInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 141
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mBnInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mediation/BannerAdCallback;

    .line 142
    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitSuccess()V

    goto :goto_2

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mBnInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 145
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mNaInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mediation/NativeAdCallback;

    .line 146
    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/NativeAdCallback;->onNativeAdInitSuccess()V

    goto :goto_3

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mNaInitCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 150
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->getInstance()Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->onInitSuccess()V

    return-void
.end method

.method private showAdMobInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 3

    .line 453
    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Interstitial"

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    .line 456
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 461
    :cond_1
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    .line 463
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    const-string p2, "Ad Not Ready"

    invoke-static {v2, p1, p2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    return-void

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mInterstitialAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_4

    .line 470
    invoke-direct {p0, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->createIsCallback(Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 471
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 473
    :cond_4
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mInterstitialAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private showAdMobVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 3

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Rewarded Video"

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    .line 250
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 255
    :cond_1
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Ad Not Ready"

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    .line 257
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_2
    return-void

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mRewardedAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    .line 265
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_4
    return-void

    .line 270
    :cond_5
    invoke-direct {p0, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->createRvCallback(Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 271
    new-instance v1, Lcom/openmediation/sdk/mobileads/AdMobAdapter$4;

    invoke-direct {v1, p0, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$4;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    .line 280
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mRewardedAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public destroyBannerAd(Ljava/lang/String;)V
    .locals 1

    .line 565
    invoke-super {p0, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->destroyBannerAd(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 570
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mBannerAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/AdView;

    if-eqz p1, :cond_1

    .line 572
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public destroyNativeAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V
    .locals 0

    .line 681
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->destroyNativeAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V

    if-eqz p2, :cond_3

    .line 682
    invoke-virtual {p2}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->getAdnNativeAd()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;

    if-nez p1, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    invoke-virtual {p2}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->getAdnNativeAd()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;

    if-nez p1, :cond_1

    return-void

    .line 690
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->getAdMobNativeAd()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 691
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->getAdMobNativeAd()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    .line 693
    :cond_2
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->getUnifiedNativeAdView()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 694
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->getUnifiedNativeAdView()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->removeAllViews()V

    .line 695
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->getUnifiedNativeAdView()Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public destroySplashAd(Ljava/lang/String;)V
    .locals 1

    .line 855
    invoke-super {p0, p1}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->destroySplashAd(Ljava/lang/String;)V

    .line 856
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->getInstance()Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->destroyAd(Ljava/lang/String;)V

    return-void
.end method

.method public getAdNetworkId()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.5.5"

    return-object v0
.end method

.method public getMediationVersion()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getVersion()Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initBannerAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/BannerAdCallback;",
            ")V"
        }
    .end annotation

    .line 486
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initBannerAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    .line 487
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$10;

    invoke-direct {v0, p0, p2, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$10;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/InterstitialAdCallback;",
            ")V"
        }
    .end annotation

    .line 359
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 360
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;

    invoke-direct {v0, p0, p2, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initNativeAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/NativeAdCallback;",
            ")V"
        }
    .end annotation

    .line 580
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initNativeAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    .line 581
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$12;

    invoke-direct {v0, p0, p2, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$12;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/RewardedVideoCallback;",
            ")V"
        }
    .end annotation

    .line 155
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 156
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$1;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initSplashAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/SplashAdCallback;",
            ")V"
        }
    .end annotation

    .line 781
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initSplashAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    .line 782
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;

    invoke-direct {p2, p0, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 478
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mInterstitialAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isRewardedVideoAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mRewardedAds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSplashAdAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 836
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->getInstance()Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->isAdAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/BannerAdCallback;",
            ")V"
        }
    .end annotation

    .line 531
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    .line 532
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;

    invoke-direct {v0, p0, p2, p4, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BannerAdCallback;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/InterstitialAdCallback;",
            ")V"
        }
    .end annotation

    .line 404
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 405
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;

    invoke-direct {p3, p0, p2, p4}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$8;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadNativeAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/NativeAdCallback;",
            ")V"
        }
    .end annotation

    .line 625
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadNativeAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    .line 626
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;

    invoke-direct {p3, p0, p2, p4}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$13;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/RewardedVideoCallback;",
            ")V"
        }
    .end annotation

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    .line 201
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;

    invoke-direct {p3, p0, p2, p4}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadSplashAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/SplashAdCallback;",
            ")V"
        }
    .end annotation

    .line 822
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->loadSplashAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    .line 823
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 824
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const-string p2, "Splash"

    .line 826
    iget-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 831
    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->getInstance()Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mUserConsent:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mUSPrivacyLimit:Ljava/lang/Boolean;

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    return-void
.end method

.method public registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .locals 4

    .line 703
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V

    if-eqz p3, :cond_9

    .line 704
    invoke-virtual {p3}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->getAdnNativeAd()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 707
    :cond_0
    invoke-virtual {p3}, Lcom/openmediation/sdk/mediation/AdnAdInfo;->getAdnNativeAd()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;

    if-nez p1, :cond_1

    return-void

    .line 711
    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->getAdMobNativeAd()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object p3

    if-nez p3, :cond_2

    return-void

    .line 716
    :cond_2
    :try_start_0
    new-instance p3, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 717
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/google/android/gms/ads/nativead/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 718
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getTitleView()Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 719
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getTitleView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 721
    :cond_3
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getDescView()Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 722
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getDescView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 724
    :cond_4
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 725
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 727
    :cond_5
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getMediaView()Lcom/openmediation/sdk/nativead/MediaView;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 728
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getMediaView()Lcom/openmediation/sdk/nativead/MediaView;

    move-result-object p4

    invoke-virtual {p4}, Lcom/openmediation/sdk/nativead/MediaView;->removeAllViews()V

    .line 729
    new-instance p4, Lcom/google/android/gms/ads/nativead/MediaView;

    .line 730
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/google/android/gms/ads/nativead/MediaView;-><init>(Landroid/content/Context;)V

    .line 731
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getMediaView()Lcom/openmediation/sdk/nativead/MediaView;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/openmediation/sdk/nativead/MediaView;->addView(Landroid/view/View;)V

    .line 732
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 734
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 735
    invoke-virtual {p4, v0}, Lcom/google/android/gms/ads/nativead/MediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    invoke-virtual {p3, p4}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    .line 739
    :cond_6
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->getAdMobNativeAd()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 740
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->getAdMobNativeAd()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 741
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object p4

    invoke-virtual {p4}, Lcom/openmediation/sdk/nativead/AdIconView;->removeAllViews()V

    .line 742
    new-instance p4, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 743
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/openmediation/sdk/nativead/AdIconView;->addView(Landroid/view/View;)V

    .line 744
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->getAdMobNativeAd()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 745
    invoke-virtual {p4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 746
    invoke-virtual {p4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput v1, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 747
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setIconView(Landroid/view/View;)V

    .line 750
    :cond_7
    new-instance p4, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 751
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x32

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 752
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 753
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xff

    const/16 v1, 0xea

    .line 754
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v1, 0x11

    .line 755
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "Ad"

    .line 756
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 757
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0xae

    const/16 v2, 0xc9

    const/16 v3, 0x2d

    .line 758
    invoke-static {v0, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 759
    invoke-virtual {p3, p4}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setAdvertiserView(Landroid/view/View;)V

    .line 760
    invoke-virtual {p1}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->getAdMobNativeAd()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 762
    invoke-virtual {p4}, Landroid/widget/TextView;->bringToFront()V

    .line 763
    invoke-virtual {p3}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getAdChoicesView()Lcom/google/android/gms/ads/nativead/AdChoicesView;

    move-result-object p4

    if-eqz p4, :cond_8

    .line 764
    invoke-virtual {p3}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getAdChoicesView()Lcom/google/android/gms/ads/nativead/AdChoicesView;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/ads/nativead/AdChoicesView;->bringToFront()V

    .line 766
    :cond_8
    invoke-virtual {p1, p3}, Lcom/openmediation/sdk/mobileads/AdMobNativeAdsConfig;->setUnifiedNativeAdView(Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 767
    invoke-virtual {p2}, Lcom/openmediation/sdk/nativead/NativeAdView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_9

    const/4 p1, 0x0

    .line 769
    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/nativead/NativeAdView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 770
    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/nativead/NativeAdView;->removeView(Landroid/view/View;)V

    .line 771
    invoke-virtual {p3, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->addView(Landroid/view/View;)V

    .line 772
    invoke-virtual {p2, p3}, Lcom/openmediation/sdk/nativead/NativeAdView;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 775
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "AdMobAdapter registerNativeAdView error: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/AdLog;->LogE(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public setAgeRestricted(Landroid/content/Context;Z)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setAgeRestricted(Landroid/content/Context;Z)V

    .line 98
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    return-void
.end method

.method public setUserAge(Landroid/content/Context;I)V
    .locals 1

    .line 106
    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->setUserAge(Landroid/content/Context;I)V

    const/16 v0, 0xd

    if-ge p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 107
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->setAgeRestricted(Landroid/content/Context;Z)V

    return-void
.end method

.method public showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 2

    .line 436
    invoke-super {p0, p1, p2, p3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    .line 437
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 2

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/openmediation/sdk/mobileads/AdMobAdapter$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$3;-><init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showSplashAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 2

    .line 841
    invoke-super {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->showSplashAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    .line 842
    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->check(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    const-string p1, "Splash"

    .line 845
    iget-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->mAdapterName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 850
    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->getInstance()Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->showAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    return-void
.end method
