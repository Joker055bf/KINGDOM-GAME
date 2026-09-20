.class Lcom/applovin/impl/adview/b$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/b;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/b;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/applovin/impl/adview/b$10;->a:Lcom/applovin/impl/adview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 860
    iget-object v0, p0, Lcom/applovin/impl/adview/b$10;->a:Lcom/applovin/impl/adview/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->q(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/l;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/b$10;->a:Lcom/applovin/impl/adview/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->b(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/l;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/b$10;->a:Lcom/applovin/impl/adview/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->q(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/l;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/applovin/impl/adview/b$10;->a:Lcom/applovin/impl/adview/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->q(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/l;->a()Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    .line 867
    iget-object v2, p0, Lcom/applovin/impl/adview/b$10;->a:Lcom/applovin/impl/adview/b;

    invoke-static {v2}, Lcom/applovin/impl/adview/b;->q(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/adview/l;->dismiss()V

    .line 868
    iget-object v2, p0, Lcom/applovin/impl/adview/b$10;->a:Lcom/applovin/impl/adview/b;

    invoke-static {v2, v1}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/adview/l;)Lcom/applovin/impl/adview/l;

    goto :goto_0

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/b$10;->a:Lcom/applovin/impl/adview/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/b;->b(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/l;->a()Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    .line 873
    iget-object v2, p0, Lcom/applovin/impl/adview/b$10;->a:Lcom/applovin/impl/adview/b;

    invoke-static {v2}, Lcom/applovin/impl/adview/b;->b(Lcom/applovin/impl/adview/b;)Lcom/applovin/impl/adview/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/adview/l;->dismiss()V

    .line 874
    iget-object v2, p0, Lcom/applovin/impl/adview/b$10;->a:Lcom/applovin/impl/adview/b;

    invoke-static {v2, v1}, Lcom/applovin/impl/adview/b;->b(Lcom/applovin/impl/adview/b;Lcom/applovin/impl/adview/l;)Lcom/applovin/impl/adview/l;

    .line 877
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/adview/b$10;->a:Lcom/applovin/impl/adview/b;

    invoke-static {v1}, Lcom/applovin/impl/adview/b;->j(Lcom/applovin/impl/adview/b;)Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/b$10;->a:Lcom/applovin/impl/adview/b;

    invoke-static {v2}, Lcom/applovin/impl/adview/b;->i(Lcom/applovin/impl/adview/b;)Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Lcom/applovin/adview/AppLovinAdView;

    invoke-static {v1, v0, v2}, Lcom/applovin/impl/sdk/utils/k;->b(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    :cond_2
    return-void
.end method
