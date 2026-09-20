.class public Lcom/applovin/impl/mediation/MediationServiceImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/ads/a$a;
.implements Lcom/applovin/mediation/MaxAdListener;
.implements Lcom/applovin/mediation/MaxAdRevenueListener;
.implements Lcom/applovin/mediation/MaxAdViewAdListener;
.implements Lcom/applovin/mediation/MaxRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/MediationServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/MediationServiceImpl;

.field private final b:Lcom/applovin/impl/mediation/a/a;

.field private c:Lcom/applovin/impl/mediation/ads/a$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    .line 694
    iput-object p3, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/MediationServiceImpl$a;)Lcom/applovin/impl/mediation/ads/a$a;
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxAd;Landroid/os/Bundle;)V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/mediation/a/a;->a(Landroid/os/Bundle;)V

    .line 718
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/a/a;->x()V

    .line 720
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-static {p2, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;)V

    .line 721
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;Landroid/os/Bundle;)V
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, p3}, Lcom/applovin/impl/mediation/a/a;->a(Landroid/os/Bundle;)V

    .line 851
    iget-object p3, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {p3, v0, p2, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/mediation/MaxError;Lcom/applovin/mediation/MaxAdListener;)V

    .line 854
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    sget-object p3, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-eq p2, p3, :cond_0

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    sget-object p3, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p2, p3, :cond_1

    :cond_0
    instance-of p2, p1, Lcom/applovin/impl/mediation/a/c;

    if-eqz p2, :cond_1

    .line 856
    check-cast p1, Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c;->M()V

    :cond_1
    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;Landroid/os/Bundle;)V
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, p3}, Lcom/applovin/impl/mediation/a/a;->a(Landroid/os/Bundle;)V

    .line 882
    iget-object p3, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {p3, p1, p2}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;)V

    .line 885
    new-instance p2, Lcom/applovin/impl/mediation/c/g;

    check-cast p1, Lcom/applovin/impl/mediation/a/c;

    iget-object p3, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p3}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/p;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/applovin/impl/mediation/c/g;-><init>(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/sdk/p;)V

    .line 886
    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    sget-object p3, Lcom/applovin/impl/sdk/e/o$a;->t:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method

.method public b(Lcom/applovin/mediation/MaxAd;Landroid/os/Bundle;)V
    .locals 3

    .line 741
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/mediation/a/a;->a(Landroid/os/Bundle;)V

    .line 743
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    const-string v0, "MediationService"

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/y;

    move-result-object p2

    const-string v1, "Scheduling impression for ad via callback..."

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    iget-object v2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-virtual {p2, v1, v2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->processCallbackAdImpressionPostback(Lcom/applovin/impl/mediation/a/a;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 746
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->P()Lcom/applovin/impl/sdk/d/g;

    move-result-object p2

    sget-object v1, Lcom/applovin/impl/sdk/d/f;->c:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p2, v1}, Lcom/applovin/impl/sdk/d/g;->a(Lcom/applovin/impl/sdk/d/f;)J

    .line 747
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->P()Lcom/applovin/impl/sdk/d/g;

    move-result-object p2

    sget-object v1, Lcom/applovin/impl/sdk/d/f;->f:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p2, v1}, Lcom/applovin/impl/sdk/d/g;->a(Lcom/applovin/impl/sdk/d/f;)J

    .line 750
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    move-result p2

    const-string v1, "DID_DISPLAY"

    if-eqz p2, :cond_3

    .line 752
    move-object p2, p1

    check-cast p2, Lcom/applovin/impl/mediation/a/c;

    .line 753
    invoke-virtual {p2}, Lcom/applovin/impl/mediation/a/c;->S()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 755
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->ab()Lcom/applovin/impl/sdk/m;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/sdk/m;->a(Lcom/applovin/impl/mediation/a/a;Ljava/lang/String;)V

    .line 756
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->Z()Lcom/applovin/impl/sdk/w;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/w;->a(Ljava/lang/Object;)V

    .line 757
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/k;->b(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    goto :goto_1

    .line 761
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/y;

    move-result-object p1

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/a/c;->o()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p2, " for hybrid ad"

    goto :goto_0

    :cond_2
    const-string p2, ""

    :goto_0
    const-string v1, "Received ad display callback before attempting show"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 766
    :cond_3
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->ab()Lcom/applovin/impl/sdk/m;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/sdk/m;->a(Lcom/applovin/impl/mediation/a/a;Ljava/lang/String;)V

    .line 767
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/k;->b(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public c(Lcom/applovin/mediation/MaxAd;Landroid/os/Bundle;)V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/mediation/a/a;->a(Landroid/os/Bundle;)V

    .line 801
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;)Lcom/applovin/impl/sdk/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->ab()Lcom/applovin/impl/sdk/m;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/mediation/a/a;

    const-string v1, "DID_HIDE"

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/sdk/m;->a(Lcom/applovin/impl/mediation/a/a;Ljava/lang/String;)V

    .line 805
    instance-of p2, p1, Lcom/applovin/impl/mediation/a/c;

    if-eqz p2, :cond_0

    .line 807
    move-object p2, p1

    check-cast p2, Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/a/c;->H()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 810
    :goto_0
    new-instance p2, Lcom/applovin/impl/mediation/MediationServiceImpl$a$1;

    invoke-direct {p2, p0, p1}, Lcom/applovin/impl/mediation/MediationServiceImpl$a$1;-><init>(Lcom/applovin/impl/mediation/MediationServiceImpl$a;Lcom/applovin/mediation/MaxAd;)V

    invoke-static {p2, v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public d(Lcom/applovin/mediation/MaxAd;Landroid/os/Bundle;)V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/mediation/a/a;->a(Landroid/os/Bundle;)V

    .line 837
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {p2, v0, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->a(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 838
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/k;->d(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public e(Lcom/applovin/mediation/MaxAd;Landroid/os/Bundle;)V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/mediation/a/a;->a(Landroid/os/Bundle;)V

    .line 906
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/k;->g(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public f(Lcom/applovin/mediation/MaxAd;Landroid/os/Bundle;)V
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/mediation/a/a;->a(Landroid/os/Bundle;)V

    .line 920
    iget-object p2, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/k;->h(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    .line 829
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->d(Lcom/applovin/mediation/MaxAd;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAdCollapsed(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    .line 912
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->f(Lcom/applovin/mediation/MaxAd;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V
    .locals 1

    const/4 v0, 0x0

    .line 844
    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    .line 735
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b(Lcom/applovin/mediation/MaxAd;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAdExpanded(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    .line 898
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->e(Lcom/applovin/mediation/MaxAd;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    .line 792
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c(Lcom/applovin/mediation/MaxAd;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 2

    .line 727
    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->x()V

    .line 728
    iget-object p1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lcom/applovin/impl/mediation/a/a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {p1, v0, p2, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->b(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/mediation/MaxError;Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    .line 711
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a(Lcom/applovin/mediation/MaxAd;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAdRequestStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdRevenuePaid(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onRewardedVideoCompleted(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/k;->f(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onRewardedVideoStarted(Lcom/applovin/mediation/MaxAd;)V
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/k;->e(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onUserRewarded(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;)V
    .locals 1

    const/4 v0, 0x0

    .line 875
    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/impl/mediation/MediationServiceImpl$a;->a(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;Landroid/os/Bundle;)V

    return-void
.end method
