.class public interface abstract Lcom/openmediation/sdk/core/imp/interstitialad/IsManagerListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/core/BaseInsBidCallback;
.implements Lcom/openmediation/sdk/core/BaseInsExpiredCallback;


# virtual methods
.method public abstract onInterstitialAdClicked(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V
.end method

.method public abstract onInterstitialAdClosed(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V
.end method

.method public abstract onInterstitialAdInitFailed(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onInterstitialAdInitSuccess(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V
.end method

.method public abstract onInterstitialAdLoadFailed(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onInterstitialAdLoadSuccess(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V
.end method

.method public abstract onInterstitialAdShowFailed(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onInterstitialAdShowSuccess(Lcom/openmediation/sdk/core/imp/interstitialad/IsInstance;)V
.end method
