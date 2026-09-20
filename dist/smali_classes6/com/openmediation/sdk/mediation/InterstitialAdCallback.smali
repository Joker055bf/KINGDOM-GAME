.class public interface abstract Lcom/openmediation/sdk/mediation/InterstitialAdCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/mediation/BidCallback;
.implements Lcom/openmediation/sdk/mediation/OnAdExpiredCallback;


# virtual methods
.method public abstract onInterstitialAdClicked()V
.end method

.method public abstract onInterstitialAdClosed()V
.end method

.method public abstract onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onInterstitialAdInitSuccess()V
.end method

.method public abstract onInterstitialAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onInterstitialAdLoadSuccess()V
.end method

.method public abstract onInterstitialAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onInterstitialAdShowSuccess()V
.end method
