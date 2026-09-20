.class Lcom/openmediation/sdk/mobileads/AdMobSplashManager$2;
.super Ljava/lang/Object;
.source "AdMobSplashManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field final synthetic val$request:Lcom/google/android/gms/ads/AdRequest;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$2;->this$0:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$2;->val$adUnitId:Ljava/lang/String;

    iput-object p4, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$2;->val$request:Lcom/google/android/gms/ads/AdRequest;

    iput-object p5, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$2;->val$loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$2;->val$adUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$2;->val$request:Lcom/google/android/gms/ads/AdRequest;

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$2;->val$loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    return-void
.end method
