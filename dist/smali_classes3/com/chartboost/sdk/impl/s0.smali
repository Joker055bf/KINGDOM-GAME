.class public final Lcom/chartboost/sdk/impl/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/r0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J \u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0008H\u0002\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/s0;",
        "Lcom/chartboost/sdk/impl/r0;",
        "Lcom/chartboost/sdk/impl/h0;",
        "appRequest",
        "",
        "adTypeTraitsName",
        "Lcom/chartboost/sdk/impl/n0;",
        "assetDownloadedCallback",
        "Lcom/chartboost/sdk/impl/o;",
        "adUnitLoaderCallback",
        "",
        "a",
        "Lcom/chartboost/sdk/impl/k;",
        "adUnit",
        "callback",
        "Lcom/chartboost/sdk/impl/o0;",
        "Lcom/chartboost/sdk/impl/o2;",
        "downloader",
        "Lcom/chartboost/sdk/impl/k5;",
        "timeSource",
        "Lcom/chartboost/sdk/impl/c6;",
        "videoRepository",
        "Landroid/os/Handler;",
        "uiHandler",
        "Lcom/chartboost/sdk/impl/j;",
        "adTypeTraits",
        "Lcom/chartboost/sdk/Mediation;",
        "mediation",
        "<init>",
        "(Lcom/chartboost/sdk/impl/o2;Lcom/chartboost/sdk/impl/k5;Lcom/chartboost/sdk/impl/c6;Landroid/os/Handler;Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/Mediation;)V",
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
.field public final a:Lcom/chartboost/sdk/impl/o2;

.field public final b:Lcom/chartboost/sdk/impl/k5;

.field public final c:Lcom/chartboost/sdk/impl/c6;

.field public d:Landroid/os/Handler;

.field public e:Lcom/chartboost/sdk/impl/j;

.field public final f:Lcom/chartboost/sdk/Mediation;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/o2;Lcom/chartboost/sdk/impl/k5;Lcom/chartboost/sdk/impl/c6;Landroid/os/Handler;Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/Mediation;)V
    .locals 1

    const-string v0, "downloader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "videoRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTypeTraits"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s0;->a:Lcom/chartboost/sdk/impl/o2;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/s0;->b:Lcom/chartboost/sdk/impl/k5;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/s0;->c:Lcom/chartboost/sdk/impl/c6;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/s0;->d:Landroid/os/Handler;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/s0;->e:Lcom/chartboost/sdk/impl/j;

    .line 7
    iput-object p6, p0, Lcom/chartboost/sdk/impl/s0;->f:Lcom/chartboost/sdk/Mediation;

    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/impl/s0;Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/o;Lcom/chartboost/sdk/impl/n0;Z)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adUnitLoaderCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$assetDownloadedCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/s0;->a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/o;)Lcom/chartboost/sdk/impl/o0;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 21
    sget-object p0, Lcom/chartboost/sdk/impl/o0;->a:Lcom/chartboost/sdk/impl/o0;

    .line 23
    :goto_0
    invoke-interface {p4, p1, p0}, Lcom/chartboost/sdk/impl/n0;->a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/o0;)V

    return-void

    .line 24
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/o;)Lcom/chartboost/sdk/impl/o0;
    .locals 2

    .line 25
    invoke-interface {p3, p1}, Lcom/chartboost/sdk/impl/o;->a(Lcom/chartboost/sdk/impl/h0;)V

    .line 26
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/k;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s0;->c:Lcom/chartboost/sdk/impl/c6;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/k;->t()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/chartboost/sdk/impl/c6;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s0;->c:Lcom/chartboost/sdk/impl/c6;

    .line 29
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/k;->u()Ljava/lang/String;

    move-result-object p3

    .line 30
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/k;->t()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/chartboost/sdk/impl/c6;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/chartboost/sdk/impl/w;)V

    .line 41
    :cond_0
    sget-object p1, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/o0;

    return-object p1

    .line 42
    :cond_1
    sget-object p1, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/o0;

    return-object p1
.end method

.method public a(Lcom/chartboost/sdk/impl/h0;Ljava/lang/String;Lcom/chartboost/sdk/impl/n0;Lcom/chartboost/sdk/impl/o;)V
    .locals 8

    const-string v0, "appRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTypeTraitsName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetDownloadedCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitLoaderCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->a()Lcom/chartboost/sdk/impl/k;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v7, Lcom/chartboost/sdk/impl/s0$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/s0$$ExternalSyntheticLambda0;-><init>(Lcom/chartboost/sdk/impl/s0;Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/o;Lcom/chartboost/sdk/impl/n0;)V

    .line 13
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s0;->a:Lcom/chartboost/sdk/impl/o2;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/o2;->c()V

    .line 14
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s0;->a:Lcom/chartboost/sdk/impl/o2;

    .line 15
    sget-object v2, Lcom/chartboost/sdk/impl/h4;->d:Lcom/chartboost/sdk/impl/h4;

    .line 16
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->d()Ljava/util/Map;

    move-result-object v3

    .line 17
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 18
    invoke-static {}, Lcom/chartboost/sdk/impl/x2;->a()Lcom/chartboost/sdk/impl/x2;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/chartboost/sdk/impl/x2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/chartboost/sdk/impl/l0;

    move-object v6, p2

    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/chartboost/sdk/impl/o2;->a(Lcom/chartboost/sdk/impl/h4;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/l0;Ljava/lang/String;)V

    return-void
.end method
