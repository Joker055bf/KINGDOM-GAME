.class Lcom/applovin/impl/adview/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/p;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/p;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/applovin/impl/adview/p$1;->a:Lcom/applovin/impl/adview/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/applovin/impl/adview/p$1;->a:Lcom/applovin/impl/adview/p;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/p;->a(Lcom/applovin/impl/adview/p;Lcom/applovin/sdk/AppLovinAd;)V

    .line 104
    iget-object v0, p0, Lcom/applovin/impl/adview/p$1;->a:Lcom/applovin/impl/adview/p;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/p;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/applovin/impl/adview/p$1;->a:Lcom/applovin/impl/adview/p;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/p;->a(Lcom/applovin/impl/adview/p;I)V

    return-void
.end method
