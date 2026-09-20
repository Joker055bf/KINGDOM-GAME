.class public final Lcom/crosspromotion/sdk/core/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crosspromotion/sdk/core/b$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crosspromotion/sdk/core/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crosspromotion/sdk/core/b;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crosspromotion/sdk/core/b;->c:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/crosspromotion/sdk/core/b$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/crosspromotion/sdk/core/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/crosspromotion/sdk/core/b;
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/core/b$b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/openmediation/sdk/a/f;
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/f;

    invoke-direct {v0, p1}, Lcom/openmediation/sdk/a/f;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/core/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/a/f;

    return-object p1
.end method

.method private c(Ljava/lang/String;)Lcom/openmediation/sdk/a/k;
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/k;

    invoke-direct {v0, p1}, Lcom/openmediation/sdk/a/k;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/core/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/a/k;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/crosspromotion/sdk/core/b;->b(Ljava/lang/String;)Lcom/openmediation/sdk/a/i;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/openmediation/sdk/a/i;->a(Landroid/app/Activity;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/utils/Cache;->init()V

    invoke-static {}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->getInstance()Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->init()V

    invoke-static {}, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->getInstance()Lcom/crosspromotion/sdk/utils/webview/ActWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/b;->a(Ljava/lang/String;)Lcom/openmediation/sdk/a/f;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/a/f;->a(Lcom/crosspromotion/sdk/interstitial/InterstitialAdListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/crosspromotion/sdk/promotion/PromotionAdListener;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/b;->b(Ljava/lang/String;)Lcom/openmediation/sdk/a/i;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/a/i;->a(Lcom/crosspromotion/sdk/promotion/PromotionAdListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/crosspromotion/sdk/video/RewardedVideoListener;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/b;->c(Ljava/lang/String;)Lcom/openmediation/sdk/a/k;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/a/k;->a(Lcom/crosspromotion/sdk/video/RewardedVideoListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/b;->a(Ljava/lang/String;)Lcom/openmediation/sdk/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/crosspromotion/sdk/core/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/b;->b(Ljava/lang/String;)Lcom/openmediation/sdk/a/i;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/a/i;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/openmediation/sdk/a/i;
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/openmediation/sdk/a/i;

    invoke-direct {v0, p1}, Lcom/openmediation/sdk/a/i;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/core/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/a/i;

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/b;->c(Ljava/lang/String;)Lcom/openmediation/sdk/a/k;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/crosspromotion/sdk/core/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/b;->b(Ljava/lang/String;)Lcom/openmediation/sdk/a/i;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/a/i;->s()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/b;->a(Ljava/lang/String;)Lcom/openmediation/sdk/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/core/a;->k()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/b;->b(Ljava/lang/String;)Lcom/openmediation/sdk/a/i;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/a/i;->k()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/b;->c(Ljava/lang/String;)Lcom/openmediation/sdk/a/k;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/a/k;->k()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/b;->a(Ljava/lang/String;)Lcom/openmediation/sdk/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/a/f;->p()V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/b;->c(Ljava/lang/String;)Lcom/openmediation/sdk/a/k;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/a/k;->p()V

    :cond_0
    return-void
.end method
