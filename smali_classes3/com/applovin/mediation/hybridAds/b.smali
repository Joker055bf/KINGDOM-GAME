.class public Lcom/applovin/mediation/hybridAds/b;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/hybridAds/a$a;


# instance fields
.field protected a:Lcom/applovin/mediation/hybridAds/a;

.field protected b:Lcom/applovin/mediation/hybridAds/c;

.field private c:Lcom/applovin/impl/sdk/p;

.field private d:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Lcom/applovin/mediation/hybridAds/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/mediation/hybridAds/c;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/applovin/mediation/hybridAds/b;->b:Lcom/applovin/mediation/hybridAds/c;

    return-void
.end method


# virtual methods
.method protected a(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/sdk/p;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V
    .locals 0

    .line 36
    iput-object p2, p0, Lcom/applovin/mediation/hybridAds/b;->c:Lcom/applovin/impl/sdk/p;

    .line 37
    iput-object p3, p0, Lcom/applovin/mediation/hybridAds/b;->d:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    .line 39
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c;->p()Lcom/applovin/mediation/hybridAds/c;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/mediation/hybridAds/b;->b:Lcom/applovin/mediation/hybridAds/c;

    return-void
.end method

.method public a(Lcom/applovin/mediation/hybridAds/a;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/applovin/mediation/hybridAds/b;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/applovin/mediation/hybridAds/b;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/hybridAds/b;->requestWindowFeature(I)Z

    .line 48
    invoke-virtual {p0}, Lcom/applovin/mediation/hybridAds/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 49
    invoke-virtual {p0}, Lcom/applovin/mediation/hybridAds/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 50
    invoke-virtual {p0}, Lcom/applovin/mediation/hybridAds/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x1020002

    .line 52
    invoke-virtual {p0, v0}, Lcom/applovin/mediation/hybridAds/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 53
    iget-object v1, p0, Lcom/applovin/mediation/hybridAds/b;->b:Lcom/applovin/mediation/hybridAds/c;

    invoke-virtual {v1}, Lcom/applovin/mediation/hybridAds/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 56
    iget-object v1, p0, Lcom/applovin/mediation/hybridAds/b;->c:Lcom/applovin/impl/sdk/p;

    if-eqz v1, :cond_0

    sget-object p1, Lcom/applovin/impl/sdk/c/b;->cR:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, p1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 57
    :cond_0
    invoke-static {p1, p0}, Lcom/applovin/impl/sdk/utils/b;->a(ZLandroid/app/Activity;)V

    .line 59
    new-instance p1, Lcom/applovin/mediation/hybridAds/a;

    iget-object v1, p0, Lcom/applovin/mediation/hybridAds/b;->b:Lcom/applovin/mediation/hybridAds/c;

    invoke-direct {p1, v1, p0}, Lcom/applovin/mediation/hybridAds/a;-><init>(Lcom/applovin/mediation/hybridAds/c;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/applovin/mediation/hybridAds/b;->a:Lcom/applovin/mediation/hybridAds/a;

    .line 60
    invoke-virtual {p1, p0}, Lcom/applovin/mediation/hybridAds/a;->setListener(Lcom/applovin/mediation/hybridAds/a$a;)V

    .line 61
    iget-object p1, p0, Lcom/applovin/mediation/hybridAds/b;->a:Lcom/applovin/mediation/hybridAds/a;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/applovin/mediation/hybridAds/a;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/applovin/mediation/hybridAds/b;->a:Lcom/applovin/mediation/hybridAds/a;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    iget-object p1, p0, Lcom/applovin/mediation/hybridAds/b;->a:Lcom/applovin/mediation/hybridAds/a;

    iget-object v0, p0, Lcom/applovin/mediation/hybridAds/b;->b:Lcom/applovin/mediation/hybridAds/c;

    invoke-virtual {v0}, Lcom/applovin/mediation/hybridAds/c;->f()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/r;->a(Landroid/view/View;J)V

    .line 68
    iget-object p1, p0, Lcom/applovin/mediation/hybridAds/b;->d:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    if-nez p1, :cond_1

    return-void

    .line 70
    :cond_1
    instance-of v0, p1, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    if-eqz v0, :cond_2

    .line 72
    check-cast p1, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdDisplayed()V

    goto :goto_0

    .line 74
    :cond_2
    instance-of v0, p1, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    if-eqz v0, :cond_3

    .line 76
    check-cast p1, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;->onAppOpenAdDisplayed()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/applovin/mediation/hybridAds/b;->d:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    if-eqz v0, :cond_1

    .line 96
    instance-of v1, v0, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdHidden()V

    goto :goto_0

    .line 100
    :cond_0
    instance-of v1, v0, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    if-eqz v1, :cond_1

    .line 102
    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxAppOpenAdapterListener;->onAppOpenAdHidden()V

    .line 106
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
