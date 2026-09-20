.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;->loadRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "Rewarded Video"

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->val$adUnitId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$600(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v2, :cond_0

    .line 208
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 209
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$700(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-static {v0, v3, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadCheckError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadSuccess()V

    return-void

    .line 217
    :cond_2
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->val$adUnitId:Ljava/lang/String;

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$800(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iget-object v5, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->val$adUnitId:Ljava/lang/String;

    iget-object v6, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    invoke-static {v4, v5, v6}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$900(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 219
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v2, :cond_3

    .line 220
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$2;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 221
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$1000(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

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

    .line 220
    invoke-static {v0, v3, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_3
    :goto_0
    return-void
.end method
