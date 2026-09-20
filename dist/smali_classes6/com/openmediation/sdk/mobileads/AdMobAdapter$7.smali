.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;->initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

.field final synthetic val$dataMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$dataMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Interstitial"

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$1600(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 366
    sget-object v1, Lcom/openmediation/sdk/mobileads/AdMobAdapter$19;->$SwitchMap$com$openmediation$sdk$mobileads$AdMobAdapter$InitState:[I

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$100(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const-string v3, "pid"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 379
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v1, :cond_5

    .line 380
    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitSuccess()V

    goto/16 :goto_0

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$dataMap:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v1, :cond_5

    .line 375
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$1700(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$dataMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$dataMap:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v1, :cond_3

    .line 369
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$1700(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$dataMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_3
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$300(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)V

    goto :goto_0

    .line 387
    :cond_4
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v2, :cond_5

    .line 388
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 389
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$1800(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-static {v0, v3, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 393
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v2, :cond_5

    .line 394
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$7;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 395
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$1900(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

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

    .line 394
    invoke-static {v0, v3, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_5
    :goto_0
    return-void
.end method
