.class public Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/ironsource/mediationsdk/ISBannerSize;

.field c:Ljava/lang/String;

.field d:Landroid/app/Activity;

.field e:Z

.field public mListenerWrapper:Lcom/ironsource/mediationsdk/m;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->e:Z

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->d:Landroid/app/Activity;

    if-nez p2, :cond_0

    sget-object p2, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    :cond_0
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->b:Lcom/ironsource/mediationsdk/ISBannerSize;

    new-instance p1, Lcom/ironsource/mediationsdk/m;

    invoke-direct {p1}, Lcom/ironsource/mediationsdk/m;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mListenerWrapper:Lcom/ironsource/mediationsdk/m;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->a:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public getBannerDemandOnlyListener()Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mListenerWrapper:Lcom/ironsource/mediationsdk/m;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/m;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->a:Landroid/view/View;

    return-object v0
.end method

.method public final getListener()Lcom/ironsource/mediationsdk/m;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mListenerWrapper:Lcom/ironsource/mediationsdk/m;

    return-object v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->b:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->e:Z

    return v0
.end method

.method public removeBannerListener()V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mListenerWrapper:Lcom/ironsource/mediationsdk/m;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ironsource/mediationsdk/m;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    return-void
.end method

.method public setBannerDemandOnlyListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;)V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mListenerWrapper:Lcom/ironsource/mediationsdk/m;

    iput-object p1, v0, Lcom/ironsource/mediationsdk/m;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->c:Ljava/lang/String;

    return-void
.end method
