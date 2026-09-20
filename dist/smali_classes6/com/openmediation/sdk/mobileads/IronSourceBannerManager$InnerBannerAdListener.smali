.class Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;
.super Ljava/lang/Object;
.source "IronSourceBannerManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerBannerAdListener"
.end annotation


# instance fields
.field private mAdCallback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

.field private mAdUnitId:Ljava/lang/String;

.field private mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->this$0:Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->mAdUnitId:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    .line 90
    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BannerAdCallback;Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;-><init>(Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V

    return-void
.end method


# virtual methods
.method public onBannerAdClicked()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdAdClicked()V

    :cond_0
    return-void
.end method

.method public onBannerAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->this$0:Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->access$300(Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->mAdUnitId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Banner"

    const-string v3, "IronSourceAdapter"

    .line 105
    invoke-static {v2, v3, v1, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildLoadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onBannerAdLoaded()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->this$0:Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;->access$300(Lcom/openmediation/sdk/mobileads/IronSourceBannerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->mAdUnitId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->mBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdLoadSuccess(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onBannerAdScreenDismissed()V
    .locals 0

    return-void
.end method

.method public onBannerAdScreenPresented()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/IronSourceBannerManager$InnerBannerAdListener;->mAdCallback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdImpression()V

    :cond_0
    return-void
.end method
