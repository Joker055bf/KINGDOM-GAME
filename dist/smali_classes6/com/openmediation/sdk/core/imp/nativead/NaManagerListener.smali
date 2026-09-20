.class public interface abstract Lcom/openmediation/sdk/core/imp/nativead/NaManagerListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/core/BaseInsBidCallback;
.implements Lcom/openmediation/sdk/core/BaseInsExpiredCallback;


# virtual methods
.method public abstract onNativeAdAdClicked(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;)V
.end method

.method public abstract onNativeAdImpression(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;)V
.end method

.method public abstract onNativeAdInitFailed(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onNativeAdInitSuccess(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;)V
.end method

.method public abstract onNativeAdLoadFailed(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onNativeAdLoadSuccess(Lcom/openmediation/sdk/core/imp/nativead/NaInstance;Lcom/openmediation/sdk/nativead/AdInfo;)V
.end method
