.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;->val$adUnitId:Ljava/lang/String;

    iput-object p4, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;->val$adUnitId:Ljava/lang/String;

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$2400(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 443
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v1, :cond_0

    .line 444
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$9;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 445
    invoke-static {v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$2500(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown Error, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Interstitial"

    .line 444
    invoke-static {v3, v2, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    :goto_0
    return-void
.end method
