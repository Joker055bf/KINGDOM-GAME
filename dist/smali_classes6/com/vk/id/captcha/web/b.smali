.class public final Lcom/vk/id/captcha/web/b;
.super Ljava/lang/Object;
.source "NetworkConnectionObserver.kt"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/vk/id/captcha/web/b;->a:Landroid/content/Context;

    .line 12
    new-instance p1, Lcom/vk/id/captcha/web/b$1;

    invoke-direct {p1, p0}, Lcom/vk/id/captcha/web/b$1;-><init>(Lcom/vk/id/captcha/web/b;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/captcha/web/b;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/vk/id/captcha/web/b;)Landroid/content/Context;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/vk/id/captcha/web/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method private final b()Landroid/net/ConnectivityManager;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/vk/id/captcha/web/b;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 18
    invoke-direct {p0}, Lcom/vk/id/captcha/web/b;->b()Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    invoke-direct {p0}, Lcom/vk/id/captcha/web/b;->b()Landroid/net/ConnectivityManager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0xc

    .line 1028
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1030
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    .line 1031
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1032
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    .line 1033
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 19
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    return v1
.end method
