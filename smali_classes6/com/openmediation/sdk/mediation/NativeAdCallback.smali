.class public interface abstract Lcom/openmediation/sdk/mediation/NativeAdCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/mediation/BidCallback;
.implements Lcom/openmediation/sdk/mediation/OnAdExpiredCallback;


# virtual methods
.method public abstract onNativeAdAdClicked()V
.end method

.method public abstract onNativeAdImpression()V
.end method

.method public abstract onNativeAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onNativeAdInitSuccess()V
.end method

.method public abstract onNativeAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onNativeAdLoadSuccess(Lcom/openmediation/sdk/mediation/AdnAdInfo;)V
.end method
