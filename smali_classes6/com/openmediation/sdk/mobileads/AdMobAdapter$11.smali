.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;->loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

.field final synthetic val$extras:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BannerAdCallback;Ljava/util/Map;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    iput-object p4, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->val$extras:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Banner"

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->val$adUnitId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$3000(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 538
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v2, :cond_0

    .line 539
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 540
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$3100(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-static {v0, v3, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 544
    :cond_1
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 545
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 546
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->val$extras:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$3200(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/util/Map;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 548
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 550
    :cond_2
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    invoke-static {v2, v1, v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$3300(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/google/android/gms/ads/AdView;Lcom/openmediation/sdk/mediation/BannerAdCallback;)Lcom/google/android/gms/ads/AdListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 551
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$3400(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->val$adUnitId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$800(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 554
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v2, :cond_3

    .line 555
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$11;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 556
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$3500(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown Error, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-static {v0, v3, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method
