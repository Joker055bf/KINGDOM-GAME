.class public Lcom/openmediation/sdk/splash/SplashAd;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isReady(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getInstance()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->isReady(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadAd(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getInstance()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->load(Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static loadAd(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getInstance()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->load(Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static setLoadTimeout(Ljava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getInstance()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->setLoadTimeout(Ljava/lang/String;J)V

    return-void
.end method

.method public static setSize(Ljava/lang/String;II)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getInstance()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->setSize(Ljava/lang/String;II)V

    return-void
.end method

.method public static setSplashAdListener(Ljava/lang/String;Lcom/openmediation/sdk/splash/SplashAdListener;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getInstance()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->setSplashAdListener(Ljava/lang/String;Lcom/openmediation/sdk/splash/SplashAdListener;)V

    return-void
.end method

.method public static showAd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getInstance()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->show(Ljava/lang/String;)V

    return-void
.end method

.method public static showAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getInstance()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->show(Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static showAd(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getInstance()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->show(Ljava/lang/String;)V

    return-void
.end method

.method public static showAd(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->getInstance()Lcom/openmediation/sdk/core/imp/splash/SpAdManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/openmediation/sdk/core/imp/splash/SpAdManager;->show(Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void
.end method
