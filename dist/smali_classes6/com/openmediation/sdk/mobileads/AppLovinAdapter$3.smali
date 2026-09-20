.class Lcom/openmediation/sdk/mobileads/AppLovinAdapter$3;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$3;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$3;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$3;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$3;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    .line 256
    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->access$200(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interstitial"

    .line 255
    invoke-static {v2, v1, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$3;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitSuccess()V

    :cond_0
    return-void
.end method
