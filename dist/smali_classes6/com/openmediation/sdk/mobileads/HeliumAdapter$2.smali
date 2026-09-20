.class Lcom/openmediation/sdk/mobileads/HeliumAdapter$2;
.super Ljava/lang/Object;
.source "HeliumAdapter.java"

# interfaces
.implements Lcom/openmediation/sdk/mobileads/HeliumInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/HeliumAdapter;->initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/HeliumAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/HeliumAdapter;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$2;->this$0:Lcom/openmediation/sdk/mobileads/HeliumAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$2;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailed(Ljava/lang/String;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$2;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$2;->this$0:Lcom/openmediation/sdk/mobileads/HeliumAdapter;

    .line 209
    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->access$200(Lcom/openmediation/sdk/mobileads/HeliumAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interstitial"

    .line 208
    invoke-static {v2, v1, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public initSuccess()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$2;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitSuccess()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/HeliumAdapter$2;->this$0:Lcom/openmediation/sdk/mobileads/HeliumAdapter;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/HeliumAdapter;->access$000(Lcom/openmediation/sdk/mobileads/HeliumAdapter;)V

    return-void
.end method
