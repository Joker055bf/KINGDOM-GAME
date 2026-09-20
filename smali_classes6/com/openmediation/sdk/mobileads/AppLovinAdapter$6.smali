.class Lcom/openmediation/sdk/mobileads/AppLovinAdapter$6;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->loadBannerAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

.field final synthetic val$appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Lcom/openmediation/sdk/mediation/BannerAdCallback;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$6;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$6;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$6;->val$appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 420
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$6;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz p1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$6;->val$appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    invoke-interface {p1, v0}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadSuccess(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 4

    .line 427
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$6;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v0, :cond_0

    .line 428
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$6;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    .line 429
    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->access$600(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Banner"

    .line 428
    invoke-static {v3, v1, p1, v2}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method
