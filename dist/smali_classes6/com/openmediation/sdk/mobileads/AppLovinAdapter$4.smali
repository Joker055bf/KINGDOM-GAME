.class Lcom/openmediation/sdk/mobileads/AppLovinAdapter$4;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->loadInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Ljava/lang/String;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$4;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$4;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$4;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$4;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->access$300(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$4;->val$adUnitId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$4;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 288
    invoke-interface {p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadSuccess()V

    :cond_0
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$4;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v0, :cond_0

    .line 296
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$4;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    .line 297
    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->access$400(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Interstitial"

    .line 296
    invoke-static {v3, v1, p1, v2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method
