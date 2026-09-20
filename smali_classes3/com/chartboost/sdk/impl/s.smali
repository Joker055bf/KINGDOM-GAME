.class public final Lcom/chartboost/sdk/impl/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/u;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008)\u0010*J\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0018\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016J \u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u001a\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0012\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0018\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0016J \u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J$\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0012H\u0002J\u0018\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0012H\u0002J\u0018\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0012H\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\u0012\u0010\u000c\u001a\u00020\u00102\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\u0018\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u000c\u0010\u001a\u00a8\u0006+"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/s;",
        "Lcom/chartboost/sdk/impl/u;",
        "",
        "a",
        "Lcom/chartboost/sdk/impl/h0;",
        "appRequest",
        "Lcom/chartboost/sdk/impl/t;",
        "callback",
        "Lcom/chartboost/sdk/internal/Model/a;",
        "impression",
        "",
        "impressionId",
        "b",
        "url",
        "Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;",
        "error",
        "",
        "reward",
        "Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;",
        "e",
        "f",
        "d",
        "c",
        "Lcom/chartboost/sdk/Mediation;",
        "mediation",
        "Lcom/chartboost/sdk/Mediation;",
        "()Lcom/chartboost/sdk/Mediation;",
        "Lcom/chartboost/sdk/impl/j;",
        "adTypeTraits",
        "Lcom/chartboost/sdk/impl/h1;",
        "reachability",
        "Lcom/chartboost/sdk/impl/c6;",
        "videoRepository",
        "Landroid/os/Handler;",
        "uiHandler",
        "Lcom/chartboost/sdk/impl/l1;",
        "uiManager",
        "Lcom/chartboost/sdk/impl/i3;",
        "impressionBuilder",
        "Lcom/chartboost/sdk/impl/v;",
        "adUnitRendererShowRequest",
        "<init>",
        "(Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/impl/h1;Lcom/chartboost/sdk/impl/c6;Landroid/os/Handler;Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/i3;Lcom/chartboost/sdk/impl/v;Lcom/chartboost/sdk/Mediation;)V",
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
.field public final a:Lcom/chartboost/sdk/impl/j;

.field public final b:Lcom/chartboost/sdk/impl/h1;

.field public final c:Lcom/chartboost/sdk/impl/c6;

.field public final d:Landroid/os/Handler;

.field public final e:Lcom/chartboost/sdk/impl/l1;

.field public final f:Lcom/chartboost/sdk/impl/i3;

.field public final g:Lcom/chartboost/sdk/impl/v;

.field public final h:Lcom/chartboost/sdk/Mediation;

.field public final i:Ljava/lang/String;

.field public j:Lcom/chartboost/sdk/impl/t;

.field public k:Lcom/chartboost/sdk/internal/Model/a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/impl/h1;Lcom/chartboost/sdk/impl/c6;Landroid/os/Handler;Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/i3;Lcom/chartboost/sdk/impl/v;Lcom/chartboost/sdk/Mediation;)V
    .locals 1

    const-string v0, "adTypeTraits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reachability"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "videoRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionBuilder"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitRendererShowRequest"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/j;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/h1;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/s;->c:Lcom/chartboost/sdk/impl/c6;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/os/Handler;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/s;->e:Lcom/chartboost/sdk/impl/l1;

    .line 7
    iput-object p6, p0, Lcom/chartboost/sdk/impl/s;->f:Lcom/chartboost/sdk/impl/i3;

    .line 8
    iput-object p7, p0, Lcom/chartboost/sdk/impl/s;->g:Lcom/chartboost/sdk/impl/v;

    .line 9
    iput-object p8, p0, Lcom/chartboost/sdk/impl/s;->h:Lcom/chartboost/sdk/Mediation;

    const-string p1, "s"

    .line 12
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s;->i:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/impl/s;Lcom/chartboost/sdk/impl/h0;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s;->d(Lcom/chartboost/sdk/impl/h0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/chartboost/sdk/impl/h0;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->a()Lcom/chartboost/sdk/impl/k;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/k;->j()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->k:Lcom/chartboost/sdk/internal/Model/a;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->h()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "hostView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->l()Lcom/chartboost/sdk/impl/e6;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->l()Lcom/chartboost/sdk/impl/e6;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/e6;->a()V

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->m()Lcom/chartboost/sdk/impl/p1;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/p1;->f()V

    .line 9
    :cond_3
    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->c()V

    .line 10
    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->d()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->k:Lcom/chartboost/sdk/internal/Model/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detachBannerImpression error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/t;)V
    .locals 1

    const-string v0, "appRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p2, p0, Lcom/chartboost/sdk/impl/s;->j:Lcom/chartboost/sdk/impl/t;

    .line 16
    iget-object p2, p0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/h1;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/h1;->e()Z

    move-result p2

    if-nez p2, :cond_0

    .line 17
    sget-object p2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/s;->b(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    return-void

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s;->f(Lcom/chartboost/sdk/impl/h0;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s;->e(Lcom/chartboost/sdk/impl/h0;)V

    return-void
.end method

.method public final a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V
    .locals 1

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/s;->c(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    .line 25
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    if-eq p2, v0, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s;->c(Lcom/chartboost/sdk/impl/h0;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/a;)V
    .locals 2

    const-string v0, "appRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impression"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p2, Lcom/chartboost/sdk/internal/Model/a;->D:Z

    .line 34
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/h0;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->j:Lcom/chartboost/sdk/impl/t;

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {v1, v0}, Lcom/chartboost/sdk/impl/t;->d(Ljava/lang/String;)V

    .line 37
    invoke-interface {v1, v0}, Lcom/chartboost/sdk/impl/t;->e(Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/s;->b(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/a;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s;->c(Lcom/chartboost/sdk/impl/h0;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/a;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V
    .locals 7

    const-string v0, "appRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impression"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/chartboost/sdk/impl/l1$b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->e:Lcom/chartboost/sdk/impl/l1;

    sget-object v2, Lcom/chartboost/sdk/impl/m1;->e:Lcom/chartboost/sdk/impl/m1;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/l1$b;-><init>(Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/m1;)V

    .line 42
    iput-object p2, v0, Lcom/chartboost/sdk/impl/l1$b;->d:Lcom/chartboost/sdk/internal/Model/a;

    .line 43
    iget-object p2, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    invoke-virtual {p0, p1, p3}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    .line 47
    new-instance p2, Lcom/chartboost/sdk/impl/i2;

    .line 50
    iget-object p3, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/j;

    iget-object p3, p3, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {p3}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->d()Ljava/lang/String;

    move-result-object v5

    .line 52
    iget-object v6, p0, Lcom/chartboost/sdk/impl/s;->h:Lcom/chartboost/sdk/Mediation;

    const-string/jumbo v2, "show_unexpected_dismiss_error"

    const-string v3, ""

    move-object v1, p2

    .line 53
    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V

    .line 54
    invoke-static {p2}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/internal/Model/a;)V
    .locals 1

    const-string v0, "impression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/chartboost/sdk/impl/l3;->c:Lcom/chartboost/sdk/impl/l3;

    iput-object v0, p1, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    .line 28
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/l1;->b(Lcom/chartboost/sdk/internal/Model/a;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/internal/Model/a;Lcom/chartboost/sdk/impl/h0;)V
    .locals 1

    const-string v0, "impression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/impl/s;->b(Lcom/chartboost/sdk/impl/h0;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->j:Lcom/chartboost/sdk/impl/t;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/impl/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->j:Lcom/chartboost/sdk/impl/t;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/impl/t;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V
    .locals 1

    const-string v0, "impressionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->j:Lcom/chartboost/sdk/impl/t;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/chartboost/sdk/impl/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/chartboost/sdk/internal/Model/a;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/chartboost/sdk/internal/Model/a;->m()Lcom/chartboost/sdk/impl/p1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    instance-of v0, p1, Lcom/chartboost/sdk/impl/b6;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lcom/chartboost/sdk/impl/b6;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/b6;->N()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final b()Lcom/chartboost/sdk/Mediation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->h:Lcom/chartboost/sdk/Mediation;

    return-object v0
.end method

.method public final b(Lcom/chartboost/sdk/impl/h0;)V
    .locals 7

    .line 14
    new-instance v6, Lcom/chartboost/sdk/impl/m3;

    const-string/jumbo v1, "show_finish_failure"

    .line 16
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->USER_CANCELLATION:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->a()Lcom/chartboost/sdk/impl/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    move-object v3, v0

    .line 18
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->d()Ljava/lang/String;

    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/chartboost/sdk/impl/s;->h:Lcom/chartboost/sdk/Mediation;

    move-object v0, v6

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/m3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V

    .line 21
    invoke-static {v6}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s;->c(Lcom/chartboost/sdk/impl/h0;)V

    return-void
.end method

.method public final b(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->j:Lcom/chartboost/sdk/impl/t;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/h0;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/impl/t;->a(Ljava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s;->i:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing AdUnitRendererAdCallback while sending onShowFailure with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final b(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/a;)V
    .locals 9

    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->g:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/j;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/j;->d:Ljava/lang/String;

    const-string v2, "adTypeTraits.showEndpoint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/chartboost/sdk/impl/h5;

    .line 32
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->a()Lcom/chartboost/sdk/impl/k;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/k;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v4, v3

    .line 33
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->d()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/impl/s;->b(Lcom/chartboost/sdk/internal/Model/a;)I

    move-result v6

    .line 35
    iget-object p1, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/j;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v7

    .line 36
    iget-object v8, p0, Lcom/chartboost/sdk/impl/s;->h:Lcom/chartboost/sdk/Mediation;

    move-object v3, v2

    .line 37
    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/h5;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/chartboost/sdk/Mediation;)V

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/v;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/h5;)V

    return-void
.end method

.method public final b(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/a;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/chartboost/sdk/impl/s;->c(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s;->c(Lcom/chartboost/sdk/impl/h0;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Lcom/chartboost/sdk/impl/l1$b;

    iget-object p3, p0, Lcom/chartboost/sdk/impl/s;->e:Lcom/chartboost/sdk/impl/l1;

    sget-object v0, Lcom/chartboost/sdk/impl/m1;->d:Lcom/chartboost/sdk/impl/m1;

    invoke-direct {p1, p3, v0}, Lcom/chartboost/sdk/impl/l1$b;-><init>(Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/m1;)V

    .line 8
    iput-object p2, p1, Lcom/chartboost/sdk/impl/l1$b;->d:Lcom/chartboost/sdk/internal/Model/a;

    .line 9
    iget-object p2, p0, Lcom/chartboost/sdk/impl/s;->d:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "impressionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->j:Lcom/chartboost/sdk/impl/t;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/impl/t;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/chartboost/sdk/impl/h0;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/h0;->a(Lcom/chartboost/sdk/impl/k;)V

    return-void
.end method

.method public final c(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/s;->b(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    .line 2
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    if-ne p2, v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->i:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportError: adTypeTraits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/j;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason: cache  format: web error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " adId: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->a()Lcom/chartboost/sdk/impl/k;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/k;->a()Ljava/lang/String;

    move-result-object v3

    .line 10
    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " appRequest.location: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 14
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->d()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lcom/chartboost/sdk/impl/h0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->b:Lcom/chartboost/sdk/impl/h1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h1;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/s;->b(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->j:Lcom/chartboost/sdk/impl/t;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s;->a(Lcom/chartboost/sdk/impl/h0;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/t;->f(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->f:Lcom/chartboost/sdk/impl/i3;

    .line 10
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->b()Lcom/chartboost/sdk/impl/l;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/l;->b()Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0, p1, p0, v1}, Lcom/chartboost/sdk/impl/i3;->a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/u;Landroid/view/ViewGroup;)Lcom/chartboost/sdk/impl/j3;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/j;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    sget-object v2, Lcom/chartboost/sdk/impl/h3;->e:Lcom/chartboost/sdk/impl/h3;

    if-ne v1, v2, :cond_3

    .line 18
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j3;->b()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/s;->k:Lcom/chartboost/sdk/internal/Model/a;

    .line 23
    :cond_3
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j3;->b()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j3;->a()Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    move-result-object v0

    .line 25
    invoke-virtual {p0, p1, v1, v0}, Lcom/chartboost/sdk/impl/s;->b(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/a;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method public final e(Lcom/chartboost/sdk/impl/h0;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->a()Lcom/chartboost/sdk/impl/k;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->v()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->c:Lcom/chartboost/sdk/impl/c6;

    .line 3
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->a()Lcom/chartboost/sdk/impl/k;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/k;->u()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v3

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->a()Lcom/chartboost/sdk/impl/k;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/k;->t()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 5
    :cond_4
    :goto_1
    new-instance v4, Lcom/chartboost/sdk/impl/s$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/chartboost/sdk/impl/s$$ExternalSyntheticLambda0;-><init>(Lcom/chartboost/sdk/impl/s;Lcom/chartboost/sdk/impl/h0;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/chartboost/sdk/impl/c6;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/chartboost/sdk/impl/w;)V

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s;->d(Lcom/chartboost/sdk/impl/h0;)V

    :goto_2
    return-void
.end method

.method public final f(Lcom/chartboost/sdk/impl/h0;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/h0;->b(Z)V

    .line 4
    new-instance v0, Lcom/chartboost/sdk/impl/m3;

    .line 7
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/j;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0;->d()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "show_start"

    const-string v3, ""

    .line 9
    invoke-direct {v0, v2, v3, v1, p1}, Lcom/chartboost/sdk/impl/m3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    :cond_0
    return-void
.end method
