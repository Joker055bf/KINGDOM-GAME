.class public interface abstract Lcom/openmediation/sdk/mediation/SplashAdApi;
.super Ljava/lang/Object;


# virtual methods
.method public abstract destroySplashAd(Ljava/lang/String;)V
.end method

.method public abstract initSplashAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/SplashAdCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract isSplashAdAvailable(Ljava/lang/String;)Z
.end method

.method public abstract loadSplashAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openmediation/sdk/mediation/SplashAdCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showSplashAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
.end method
