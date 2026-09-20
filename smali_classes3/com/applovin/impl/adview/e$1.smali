.class Lcom/applovin/impl/adview/e$1;
.super Lcom/applovin/impl/sdk/utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/e;->a(Landroid/net/Uri;Lcom/applovin/impl/adview/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/applovin/impl/adview/e;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/e;Ljava/lang/String;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/applovin/impl/adview/e$1;->b:Lcom/applovin/impl/adview/e;

    iput-object p2, p0, Lcom/applovin/impl/adview/e$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 496
    instance-of p2, p1, Lcom/applovin/sdk/AppLovinWebViewActivity;

    if-eqz p2, :cond_0

    .line 498
    check-cast p1, Lcom/applovin/sdk/AppLovinWebViewActivity;

    .line 499
    iget-object p2, p0, Lcom/applovin/impl/adview/e$1;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/applovin/sdk/AppLovinWebViewActivity;->loadUrl(Ljava/lang/String;Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;)V

    .line 501
    iget-object p1, p0, Lcom/applovin/impl/adview/e$1;->b:Lcom/applovin/impl/adview/e;

    invoke-static {p1}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/adview/e;)Lcom/applovin/impl/adview/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->g()Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/adview/e$1;->b:Lcom/applovin/impl/adview/e;

    .line 502
    invoke-static {p2}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/adview/e;)Lcom/applovin/impl/adview/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/adview/b;->p()Lcom/applovin/impl/sdk/ad/e;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/adview/e$1;->b:Lcom/applovin/impl/adview/e;

    .line 503
    invoke-static {v0}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/adview/e;)Lcom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/b;->r()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    .line 501
    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 510
    instance-of p1, p1, Lcom/applovin/sdk/AppLovinWebViewActivity;

    if-eqz p1, :cond_0

    .line 512
    iget-object p1, p0, Lcom/applovin/impl/adview/e$1;->b:Lcom/applovin/impl/adview/e;

    invoke-static {p1}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/adview/e;)Lcom/applovin/impl/adview/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/adview/b;->g()Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/adview/e$1;->b:Lcom/applovin/impl/adview/e;

    .line 513
    invoke-static {v0}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/adview/e;)Lcom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/b;->p()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/e$1;->b:Lcom/applovin/impl/adview/e;

    .line 514
    invoke-static {v1}, Lcom/applovin/impl/adview/e;->a(Lcom/applovin/impl/adview/e;)Lcom/applovin/impl/adview/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/adview/b;->r()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v1

    .line 512
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/k;->b(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    .line 516
    iget-object p1, p0, Lcom/applovin/impl/adview/e$1;->b:Lcom/applovin/impl/adview/e;

    invoke-static {p1}, Lcom/applovin/impl/adview/e;->b(Lcom/applovin/impl/adview/e;)Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/a;->b(Lcom/applovin/impl/sdk/utils/a;)V

    :cond_0
    return-void
.end method
