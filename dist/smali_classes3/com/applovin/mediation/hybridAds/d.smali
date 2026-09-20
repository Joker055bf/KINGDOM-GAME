.class public Lcom/applovin/mediation/hybridAds/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/mediation/hybridAds/d$a;,
        Lcom/applovin/mediation/hybridAds/d$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/mediation/hybridAds/d;->a:Lcom/applovin/impl/sdk/p;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/a/c;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V
    .locals 3

    .line 35
    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->assertMainThread()V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/applovin/mediation/hybridAds/d;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object p2

    .line 38
    :goto_0
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c;->getNativeAd()Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    move-result-object v0

    const-string v1, "MaxHybridAdService"

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/applovin/mediation/hybridAds/d;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/mediation/hybridAds/d;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v2, "Showing fullscreen native ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_1
    new-instance v0, Lcom/applovin/mediation/hybridAds/d$b;

    iget-object v1, p0, Lcom/applovin/mediation/hybridAds/d;->a:Lcom/applovin/impl/sdk/p;

    invoke-direct {v0, p1, v1, p3}, Lcom/applovin/mediation/hybridAds/d$b;-><init>(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/sdk/p;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    .line 43
    iget-object p1, p0, Lcom/applovin/mediation/hybridAds/d;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    .line 45
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/applovin/mediation/hybridAds/MaxHybridNativeAdActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c;->q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Lcom/applovin/mediation/hybridAds/d;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/mediation/hybridAds/d;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v2, "Showing fullscreen MREC ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    new-instance v0, Lcom/applovin/mediation/hybridAds/d$a;

    iget-object v1, p0, Lcom/applovin/mediation/hybridAds/d;->a:Lcom/applovin/impl/sdk/p;

    invoke-direct {v0, p1, v1, p3}, Lcom/applovin/mediation/hybridAds/d$a;-><init>(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/sdk/p;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    .line 53
    iget-object p1, p0, Lcom/applovin/mediation/hybridAds/d;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    .line 55
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/applovin/mediation/hybridAds/MaxHybridMRecAdActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 60
    :cond_4
    instance-of p1, p3, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    if-eqz p1, :cond_5

    .line 62
    check-cast p3, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    sget-object p1, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_DISPLAY_FAILED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    invoke-interface {p3, p1}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdDisplayFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_1

    .line 64
    :cond_5
    instance-of p1, p3, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    if-eqz p1, :cond_6

    .line 66
    check-cast p3, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    sget-object p1, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_DISPLAY_FAILED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    invoke-interface {p3, p1}, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;->onAppOpenAdDisplayFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    :goto_1
    return-void

    .line 70
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to display hybrid ad: neither native nor adview ad"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
