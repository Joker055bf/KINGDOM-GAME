.class public interface abstract Lcom/openmediation/sdk/mediation/NativeAdApi;
.super Ljava/lang/Object;


# virtual methods
.method public abstract destroyNativeAd(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract destroyNativeAd(Ljava/lang/String;Lcom/openmediation/sdk/mediation/AdnAdInfo;)V
.end method

.method public abstract initNativeAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/NativeAdCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract loadNativeAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/NativeAdCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/AdnAdInfo;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
.end method

.method public abstract registerNativeAdView(Ljava/lang/String;Lcom/openmediation/sdk/nativead/NativeAdView;Lcom/openmediation/sdk/mediation/NativeAdCallback;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
