.class public Lcom/applovin/mediation/hybridAds/MaxHybridMRecAdActivity;
.super Lcom/applovin/mediation/hybridAds/b;
.source "SourceFile"


# instance fields
.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/applovin/mediation/hybridAds/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/applovin/impl/mediation/a/c;Landroid/view/View;Lcom/applovin/impl/sdk/p;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V
    .locals 0

    .line 21
    invoke-super {p0, p1, p3, p4}, Lcom/applovin/mediation/hybridAds/b;->a(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/sdk/p;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    .line 23
    iput-object p2, p0, Lcom/applovin/mediation/hybridAds/MaxHybridMRecAdActivity;->c:Landroid/view/View;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/applovin/mediation/hybridAds/b;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x1020002

    .line 31
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/hybridAds/MaxHybridMRecAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 32
    iget-object v0, p0, Lcom/applovin/mediation/hybridAds/MaxHybridMRecAdActivity;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    iget-object p1, p0, Lcom/applovin/mediation/hybridAds/MaxHybridMRecAdActivity;->a:Lcom/applovin/mediation/hybridAds/a;

    invoke-virtual {p1}, Lcom/applovin/mediation/hybridAds/a;->bringToFront()V

    return-void
.end method
