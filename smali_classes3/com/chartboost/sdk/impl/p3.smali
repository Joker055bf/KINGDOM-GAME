.class public final Lcom/chartboost/sdk/impl/p3;
.super Lcom/chartboost/sdk/impl/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u0016\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/p3;",
        "Lcom/chartboost/sdk/impl/a;",
        "Lcom/chartboost/sdk/ads/Interstitial;",
        "ad",
        "Lcom/chartboost/sdk/callbacks/InterstitialCallback;",
        "callback",
        "",
        "a",
        "",
        "bidResponse",
        "b",
        "Lcom/chartboost/sdk/impl/m;",
        "adUnitLoader",
        "Lcom/chartboost/sdk/impl/s;",
        "adUnitRenderer",
        "Landroid/os/Handler;",
        "uiHandler",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lcom/chartboost/sdk/impl/c5;",
        "sdkConfig",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "backgroundExecutorService",
        "Lcom/chartboost/sdk/impl/b;",
        "adApiCallbackSender",
        "Lcom/chartboost/sdk/impl/f5;",
        "session",
        "Lcom/chartboost/sdk/impl/u0;",
        "base64Wrapper",
        "<init>",
        "(Lcom/chartboost/sdk/impl/m;Lcom/chartboost/sdk/impl/s;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/f5;Lcom/chartboost/sdk/impl/u0;)V",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final j:Lcom/chartboost/sdk/impl/m;

.field public final k:Lcom/chartboost/sdk/impl/s;

.field public final l:Landroid/os/Handler;

.field public final m:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/m;Lcom/chartboost/sdk/impl/s;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/f5;Lcom/chartboost/sdk/impl/u0;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/m;",
            "Lcom/chartboost/sdk/impl/s;",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/impl/c5;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/chartboost/sdk/impl/b;",
            "Lcom/chartboost/sdk/impl/f5;",
            "Lcom/chartboost/sdk/impl/u0;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    const-string v0, "adUnitLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitRenderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiHandler"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkConfig"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutorService"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adApiCallbackSender"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64Wrapper"

    move-object/from16 v7, p8

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/a;-><init>(Lcom/chartboost/sdk/impl/m;Lcom/chartboost/sdk/impl/s;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/f5;Lcom/chartboost/sdk/impl/u0;)V

    .line 2
    iput-object v9, v8, Lcom/chartboost/sdk/impl/p3;->j:Lcom/chartboost/sdk/impl/m;

    .line 3
    iput-object v10, v8, Lcom/chartboost/sdk/impl/p3;->k:Lcom/chartboost/sdk/impl/s;

    .line 4
    iput-object v11, v8, Lcom/chartboost/sdk/impl/p3;->l:Landroid/os/Handler;

    .line 6
    iput-object v12, v8, Lcom/chartboost/sdk/impl/p3;->m:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/callbacks/InterstitialCallback;Lcom/chartboost/sdk/ads/Interstitial;)V
    .locals 4

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/chartboost/sdk/events/CacheEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/chartboost/sdk/events/CacheEvent;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;)V

    .line 22
    new-instance p1, Lcom/chartboost/sdk/events/CacheError;

    sget-object v2, Lcom/chartboost/sdk/events/CacheError$Code;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/events/CacheError$Code;

    const/4 v3, 0x2

    invoke-direct {p1, v2, v1, v3, v1}, Lcom/chartboost/sdk/events/CacheError;-><init>(Lcom/chartboost/sdk/events/CacheError$Code;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    invoke-interface {p0, v0, p1}, Lcom/chartboost/sdk/callbacks/AdCallback;->onAdLoaded(Lcom/chartboost/sdk/events/CacheEvent;Lcom/chartboost/sdk/events/CacheError;)V

    return-void
.end method

.method public static final b(Lcom/chartboost/sdk/callbacks/InterstitialCallback;Lcom/chartboost/sdk/ads/Interstitial;)V
    .locals 4

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/chartboost/sdk/events/ShowEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/chartboost/sdk/events/ShowEvent;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;)V

    .line 32
    new-instance p1, Lcom/chartboost/sdk/events/ShowError;

    sget-object v2, Lcom/chartboost/sdk/events/ShowError$Code;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/events/ShowError$Code;

    const/4 v3, 0x2

    invoke-direct {p1, v2, v1, v3, v1}, Lcom/chartboost/sdk/events/ShowError;-><init>(Lcom/chartboost/sdk/events/ShowError$Code;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    invoke-interface {p0, v0, p1}, Lcom/chartboost/sdk/callbacks/AdCallback;->onAdShown(Lcom/chartboost/sdk/events/ShowEvent;Lcom/chartboost/sdk/events/ShowError;)V

    return-void
.end method

.method public static final c(Lcom/chartboost/sdk/callbacks/InterstitialCallback;Lcom/chartboost/sdk/ads/Interstitial;)V
    .locals 4

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/chartboost/sdk/events/ShowEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/chartboost/sdk/events/ShowEvent;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;)V

    .line 2
    new-instance p1, Lcom/chartboost/sdk/events/ShowError;

    sget-object v2, Lcom/chartboost/sdk/events/ShowError$Code;->NO_CACHED_AD:Lcom/chartboost/sdk/events/ShowError$Code;

    const/4 v3, 0x2

    invoke-direct {p1, v2, v1, v3, v1}, Lcom/chartboost/sdk/events/ShowError;-><init>(Lcom/chartboost/sdk/events/ShowError$Code;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-interface {p0, v0, p1}, Lcom/chartboost/sdk/callbacks/AdCallback;->onAdShown(Lcom/chartboost/sdk/events/ShowEvent;Lcom/chartboost/sdk/events/ShowError;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/chartboost/sdk/ads/Interstitial;Lcom/chartboost/sdk/callbacks/InterstitialCallback;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/p3;->a(Lcom/chartboost/sdk/ads/Interstitial;Lcom/chartboost/sdk/callbacks/InterstitialCallback;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/chartboost/sdk/ads/Interstitial;Lcom/chartboost/sdk/callbacks/InterstitialCallback;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Interstitial;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p3, p0, Lcom/chartboost/sdk/impl/p3;->l:Landroid/os/Handler;

    new-instance v0, Lcom/chartboost/sdk/impl/p3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/p3$$ExternalSyntheticLambda0;-><init>(Lcom/chartboost/sdk/callbacks/InterstitialCallback;Lcom/chartboost/sdk/ads/Interstitial;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    sget-object p2, Lcom/chartboost/sdk/impl/h3;->c:Lcom/chartboost/sdk/impl/h3;

    .line 12
    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Interstitial;->getLocation()Ljava/lang/String;

    move-result-object p1

    const-string p3, "cache_finish_failure"

    const-string v0, "Invalid configuration. Check logs for more details."

    .line 13
    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/h3;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Interstitial;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/chartboost/sdk/ads/Interstitial;Lcom/chartboost/sdk/callbacks/InterstitialCallback;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Interstitial;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p3;->l:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/p3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Lcom/chartboost/sdk/impl/p3$$ExternalSyntheticLambda1;-><init>(Lcom/chartboost/sdk/callbacks/InterstitialCallback;Lcom/chartboost/sdk/ads/Interstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    sget-object p2, Lcom/chartboost/sdk/impl/h3;->c:Lcom/chartboost/sdk/impl/h3;

    .line 11
    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Interstitial;->getLocation()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "show_finish_failure"

    const-string v1, "Invalid configuration. Check logs for more details."

    .line 12
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/h3;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/ads/Interstitial;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p3;->l:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/p3$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p1}, Lcom/chartboost/sdk/impl/p3$$ExternalSyntheticLambda2;-><init>(Lcom/chartboost/sdk/callbacks/InterstitialCallback;Lcom/chartboost/sdk/ads/Interstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 30
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/a;->a(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V

    return-void
.end method
