.class Lcom/applovin/impl/adview/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/b;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/applovin/impl/adview/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/b;Landroid/webkit/WebView;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/applovin/impl/adview/b$5;->b:Lcom/applovin/impl/adview/b;

    iput-object p2, p0, Lcom/applovin/impl/adview/b$5;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 559
    iget-object v0, p0, Lcom/applovin/impl/adview/b$5;->b:Lcom/applovin/impl/adview/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->e(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->o()Lcom/applovin/impl/sdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/b$5;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a/b;->b(Landroid/webkit/WebView;)V

    .line 560
    iget-object v0, p0, Lcom/applovin/impl/adview/b$5;->b:Lcom/applovin/impl/adview/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->f(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/b$5;->b:Lcom/applovin/impl/adview/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->f(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/applovin/impl/adview/b$5;->b:Lcom/applovin/impl/adview/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->e(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->o()Lcom/applovin/impl/sdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/b$5;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/applovin/impl/sdk/a/d;

    iget-object v3, p0, Lcom/applovin/impl/adview/b$5;->b:Lcom/applovin/impl/adview/b;

    .line 563
    invoke-static {v3}, Lcom/applovin/impl/adview/b;->f(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/u;

    move-result-object v3

    sget-object v4, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    iget-object v5, p0, Lcom/applovin/impl/adview/b$5;->b:Lcom/applovin/impl/adview/b;

    .line 565
    invoke-static {v5}, Lcom/applovin/impl/adview/b;->f(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applovin/impl/adview/u;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 562
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/a/b;->a(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/b$5;->b:Lcom/applovin/impl/adview/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->e(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->o()Lcom/applovin/impl/sdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/b$5;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a/b;->a(Landroid/view/View;)V

    .line 571
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/adview/b$5;->b:Lcom/applovin/impl/adview/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->e(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->o()Lcom/applovin/impl/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/b;->c()V

    .line 572
    iget-object v0, p0, Lcom/applovin/impl/adview/b$5;->b:Lcom/applovin/impl/adview/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->e(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->o()Lcom/applovin/impl/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/b;->d()V

    return-void
.end method
