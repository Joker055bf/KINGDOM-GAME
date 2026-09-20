.class public abstract Lcom/chartboost/sdk/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/t;
.implements Lcom/chartboost/sdk/impl/n;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u00012\u00020\u0002BE\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u0012\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0$\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008/\u00100J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0004J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0004J\u000e\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0003J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0003H\u0004J\u0012\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0016J\"\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0012\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0016J\u001a\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0014\u001a\u00020\u0016H\u0016J\u0012\u0010\u0017\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0016J\u001a\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0014\u001a\u00020\u0016H\u0016J\u001a\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u001a\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u001b\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0016J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u0003H\u0004J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0003H\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0002\u00a8\u00061"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/a;",
        "Lcom/chartboost/sdk/impl/t;",
        "Lcom/chartboost/sdk/impl/n;",
        "",
        "location",
        "Lcom/chartboost/sdk/ads/Ad;",
        "ad",
        "Lcom/chartboost/sdk/callbacks/AdCallback;",
        "callback",
        "bidResponse",
        "",
        "a",
        "g",
        "",
        "h",
        "i",
        "impressionId",
        "b",
        "url",
        "Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;",
        "error",
        "d",
        "Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;",
        "c",
        "",
        "reward",
        "f",
        "e",
        "eventName",
        "message",
        "Lcom/chartboost/sdk/impl/h3;",
        "adType",
        "Lcom/chartboost/sdk/impl/m;",
        "adUnitLoader",
        "Lcom/chartboost/sdk/impl/s;",
        "adUnitRenderer",
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
        "(Lcom/chartboost/sdk/impl/m;Lcom/chartboost/sdk/impl/s;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/f5;Lcom/chartboost/sdk/impl/u0;)V",
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
.field public final a:Lcom/chartboost/sdk/impl/m;

.field public final b:Lcom/chartboost/sdk/impl/s;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/impl/c5;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Lcom/chartboost/sdk/impl/b;

.field public final f:Lcom/chartboost/sdk/impl/f5;

.field public final g:Lcom/chartboost/sdk/impl/u0;

.field public h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/chartboost/sdk/ads/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/chartboost/sdk/callbacks/AdCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/m;Lcom/chartboost/sdk/impl/s;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/f5;Lcom/chartboost/sdk/impl/u0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/m;",
            "Lcom/chartboost/sdk/impl/s;",
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

    const-string v0, "adUnitLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitRenderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutorService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adApiCallbackSender"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64Wrapper"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/a;->a:Lcom/chartboost/sdk/impl/m;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/a;->b:Lcom/chartboost/sdk/impl/s;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/a;->e:Lcom/chartboost/sdk/impl/b;

    .line 7
    iput-object p6, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/impl/f5;

    .line 8
    iput-object p7, p0, Lcom/chartboost/sdk/impl/a;->g:Lcom/chartboost/sdk/impl/u0;

    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/impl/a;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 11

    const-string v0, "$ad"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$decodedBidResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    instance-of v0, p0, Lcom/chartboost/sdk/ads/Banner;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->a:Lcom/chartboost/sdk/impl/m;

    .line 23
    iget-object p3, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    .line 24
    new-instance v1, Lcom/chartboost/sdk/impl/l;

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    .line 25
    check-cast p0, Lcom/chartboost/sdk/ads/Banner;

    invoke-virtual {p0}, Lcom/chartboost/sdk/ads/Banner;->getBannerWidth()I

    move-result v3

    .line 26
    invoke-virtual {p0}, Lcom/chartboost/sdk/ads/Banner;->getBannerHeight()I

    move-result p0

    .line 27
    invoke-direct {v1, v2, v3, p0}, Lcom/chartboost/sdk/impl/l;-><init>(Landroid/view/ViewGroup;II)V

    .line 28
    invoke-virtual {v0, p2, p1, p3, v1}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/n;Ljava/lang/String;Lcom/chartboost/sdk/impl/l;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v4, p1, Lcom/chartboost/sdk/impl/a;->a:Lcom/chartboost/sdk/impl/m;

    iget-object p0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v5, p2

    move-object v6, p1

    invoke-static/range {v4 .. v10}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/m;Ljava/lang/String;Lcom/chartboost/sdk/impl/n;Ljava/lang/String;Lcom/chartboost/sdk/impl/l;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/impl/a;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->a:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/h0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->b:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v1, v0, p0}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/t;)V

    goto :goto_0

    :cond_0
    const-string p0, "AdApi"

    const-string v0, "Missing app request on render"

    .line 43
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/ads/Ad;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 79
    :goto_0
    instance-of v2, v0, Lcom/chartboost/sdk/ads/Interstitial;

    if-eqz v2, :cond_1

    sget-object v1, Lcom/chartboost/sdk/impl/h3;->c:Lcom/chartboost/sdk/impl/h3;

    goto :goto_1

    .line 80
    :cond_1
    instance-of v2, v0, Lcom/chartboost/sdk/ads/Rewarded;

    if-eqz v2, :cond_2

    sget-object v1, Lcom/chartboost/sdk/impl/h3;->d:Lcom/chartboost/sdk/impl/h3;

    goto :goto_1

    .line 81
    :cond_2
    instance-of v0, v0, Lcom/chartboost/sdk/ads/Banner;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/chartboost/sdk/impl/h3;->e:Lcom/chartboost/sdk/impl/h3;

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 86
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/impl/f5;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/f5;->a(Lcom/chartboost/sdk/impl/h3;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Current session impression count: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/impl/f5;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/f5;->b(Lcom/chartboost/sdk/impl/h3;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/impl/f5;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/f5;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdApi"

    .line 90
    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final a(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    .line 39
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/a;->i:Ljava/lang/ref/WeakReference;

    .line 40
    iget-object p1, p0, Lcom/chartboost/sdk/impl/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda1;-><init>(Lcom/chartboost/sdk/impl/a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->e:Lcom/chartboost/sdk/impl/b;

    .line 66
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/ads/Ad;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 67
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/callbacks/AdCallback;

    .line 68
    :cond_1
    invoke-virtual {v0, p1, v1, v2}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->e:Lcom/chartboost/sdk/impl/b;

    .line 61
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/ads/Ad;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/callbacks/AdCallback;

    .line 63
    :cond_1
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;Ljava/lang/String;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/a;->i:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz p4, :cond_2

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->g:Lcom/chartboost/sdk/impl/u0;

    invoke-virtual {v0, p4}, Lcom/chartboost/sdk/impl/u0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 9
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "AdApi"

    const-string p2, "Cannot decode provided bidResponse."

    .line 10
    invoke-static {p1, p2}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p1, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string p2, ""

    invoke-virtual {p0, p2, p1}, Lcom/chartboost/sdk/impl/a;->b(Ljava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    return-void

    .line 14
    :cond_1
    iput-object p4, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    :cond_2
    iget-object p4, p0, Lcom/chartboost/sdk/impl/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda0;-><init>(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/impl/a;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "show_finish_failure"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->e:Lcom/chartboost/sdk/impl/b;

    .line 55
    invoke-static {p2}, Lcom/chartboost/sdk/impl/f;->b(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)Lcom/chartboost/sdk/events/ShowError;

    move-result-object p2

    .line 56
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/ads/Ad;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 57
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/callbacks/AdCallback;

    .line 58
    :cond_1
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/events/ShowError;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/ads/Ad;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 71
    :goto_0
    instance-of v2, v0, Lcom/chartboost/sdk/ads/Interstitial;

    if-eqz v2, :cond_1

    sget-object v0, Lcom/chartboost/sdk/impl/h3;->c:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v0

    goto :goto_2

    .line 72
    :cond_1
    instance-of v2, v0, Lcom/chartboost/sdk/ads/Rewarded;

    if-eqz v2, :cond_2

    sget-object v0, Lcom/chartboost/sdk/impl/h3;->d:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 73
    :cond_2
    instance-of v0, v0, Lcom/chartboost/sdk/ads/Banner;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/chartboost/sdk/impl/h3;->e:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "Unknown"

    goto :goto_1

    .line 76
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/ads/Ad;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/chartboost/sdk/ads/Ad;->getLocation()Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v6, v1

    .line 77
    new-instance v0, Lcom/chartboost/sdk/impl/m3;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->b:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/s;->b()Lcom/chartboost/sdk/Mediation;

    move-result-object v7

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/m3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/h3;Ljava/lang/String;)V
    .locals 7

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/chartboost/sdk/impl/m3;

    invoke-virtual {p3}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v4

    iget-object p3, p0, Lcom/chartboost/sdk/impl/a;->b:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {p3}, Lcom/chartboost/sdk/impl/s;->b()Lcom/chartboost/sdk/Mediation;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/m3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V
    .locals 3

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Click error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "click_invalid_url_error"

    .line 45
    invoke-virtual {p0, v0, p2}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->e:Lcom/chartboost/sdk/impl/b;

    .line 48
    invoke-static {p3, p2}, Lcom/chartboost/sdk/impl/f;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;Ljava/lang/String;)Lcom/chartboost/sdk/events/ClickError;

    move-result-object p2

    .line 49
    iget-object p3, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/chartboost/sdk/ads/Ad;

    goto :goto_0

    :cond_0
    move-object p3, v1

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/callbacks/AdCallback;

    .line 51
    :cond_1
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/events/ClickError;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->e:Lcom/chartboost/sdk/impl/b;

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/ads/Ad;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/callbacks/AdCallback;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 5
    :goto_1
    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/events/ClickError;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cache_finish_failure"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->e:Lcom/chartboost/sdk/impl/b;

    .line 8
    invoke-static {p2}, Lcom/chartboost/sdk/impl/f;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)Lcom/chartboost/sdk/events/CacheError;

    move-result-object p2

    .line 9
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/ads/Ad;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/callbacks/AdCallback;

    .line 11
    :cond_1
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/events/CacheError;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    const-string v0, "cache_finish_success"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->e:Lcom/chartboost/sdk/impl/b;

    .line 5
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/ads/Ad;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/callbacks/AdCallback;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 7
    :goto_1
    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/events/CacheError;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "show_finish_success"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/a;->a()V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->e:Lcom/chartboost/sdk/impl/b;

    .line 6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/ads/Ad;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/callbacks/AdCallback;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 8
    :goto_1
    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/chartboost/sdk/impl/b;->a(Ljava/lang/String;Lcom/chartboost/sdk/events/ShowError;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    const-string v0, "impression_recorded"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->e:Lcom/chartboost/sdk/impl/b;

    .line 4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/ads/Ad;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/callbacks/AdCallback;

    .line 6
    :cond_1
    invoke-virtual {v0, p1, v1, v2}, Lcom/chartboost/sdk/impl/b;->b(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->e:Lcom/chartboost/sdk/impl/b;

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->h:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/ads/Ad;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/callbacks/AdCallback;

    .line 5
    :cond_1
    invoke-virtual {v0, p1, v1, v2}, Lcom/chartboost/sdk/impl/b;->c(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/a;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/chartboost/sdk/impl/a;->a:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/m;->b()V

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/a;->a:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/h0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->a()Lcom/chartboost/sdk/impl/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/c5;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/c5;->c()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "AdApi"

    const-string v0, "Chartboost Integration Warning: your account has been disabled for this session. This app has no active publishing campaigns, please create a publishing campaign in the Chartboost dashboard and wait at least 30 minutes to re-enable. If you need assistance, please visit http://chartboo.st/publishing ."

    .line 3
    invoke-static {p1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 12
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method
