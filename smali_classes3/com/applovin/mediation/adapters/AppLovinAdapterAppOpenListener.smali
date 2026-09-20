.class public Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/ad/h;
.implements Lcom/applovin/impl/sdk/ad/i;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# instance fields
.field private final listener:Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

.field private final parentAdapter:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;


# direct methods
.method constructor <init>(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->parentAdapter:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    .line 20
    iput-object p2, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->parentAdapter:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const-string v1, "App open ad clicked"

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    invoke-static {p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getExtraInfo(Lcom/applovin/sdk/AppLovinAd;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;->onAppOpenAdClicked(Landroid/os/Bundle;)V

    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->parentAdapter:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const-string v0, "App open ad shown"

    invoke-virtual {p1, v0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;->onAppOpenAdDisplayed()V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->parentAdapter:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const-string v1, "App open ad hidden"

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    invoke-static {p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->getExtraInfo(Lcom/applovin/sdk/AppLovinAd;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;->onAppOpenAdHidden(Landroid/os/Bundle;)V

    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->parentAdapter:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const-string v1, "App open ad loaded"

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->parentAdapter:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    iput-object p1, v0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->loadedAppOpenAd:Lcom/applovin/sdk/AppLovinAd;

    .line 29
    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;->onAppOpenAdLoaded()V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    .line 36
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinError;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    return-void
.end method

.method public failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->parentAdapter:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App open ad failed to load with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    invoke-static {p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->toMaxError(Lcom/applovin/impl/sdk/AppLovinError;)Lcom/applovin/mediation/adapter/MaxAdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;->onAppOpenAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    return-void
.end method

.method public onAdDisplayFailed(Ljava/lang/String;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->parentAdapter:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App open ad failed to display with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x106d

    invoke-direct {v0, v1, p1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinAdapterAppOpenListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    invoke-interface {p1, v0}, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;->onAppOpenAdDisplayFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    return-void
.end method
