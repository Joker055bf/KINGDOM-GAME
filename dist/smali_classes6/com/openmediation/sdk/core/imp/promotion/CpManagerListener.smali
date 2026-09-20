.class public interface abstract Lcom/openmediation/sdk/core/imp/promotion/CpManagerListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/core/BaseInsBidCallback;
.implements Lcom/openmediation/sdk/core/BaseInsExpiredCallback;


# virtual methods
.method public abstract onPromotionAdClicked(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V
.end method

.method public abstract onPromotionAdHidden(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V
.end method

.method public abstract onPromotionAdInitFailed(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onPromotionAdInitSuccess(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V
.end method

.method public abstract onPromotionAdLoadFailed(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onPromotionAdLoadSuccess(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V
.end method

.method public abstract onPromotionAdShowFailed(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
.end method

.method public abstract onPromotionAdShowSuccess(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V
.end method

.method public abstract onPromotionAdVisible(Lcom/openmediation/sdk/core/imp/promotion/CpInstance;)V
.end method
