.class public final Lcom/chartboost/sdk/impl/p5$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/p5;-><init>(Lcom/chartboost/sdk/impl/d0;Lcom/chartboost/sdk/impl/i0;Lcom/chartboost/sdk/impl/t2;Lcom/chartboost/sdk/impl/i4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/chartboost/sdk/impl/s2;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/s2;",
        "a",
        "()Lcom/chartboost/sdk/impl/s2;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/impl/d0;

.field public final synthetic b:Lcom/chartboost/sdk/impl/p5;

.field public final synthetic c:Lcom/chartboost/sdk/impl/i0;

.field public final synthetic d:Lcom/chartboost/sdk/impl/t2;

.field public final synthetic e:Lcom/chartboost/sdk/impl/i4;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/d0;Lcom/chartboost/sdk/impl/p5;Lcom/chartboost/sdk/impl/i0;Lcom/chartboost/sdk/impl/t2;Lcom/chartboost/sdk/impl/i4;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/impl/p5$b;->a:Lcom/chartboost/sdk/impl/d0;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/p5$b;->b:Lcom/chartboost/sdk/impl/p5;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/p5$b;->c:Lcom/chartboost/sdk/impl/i0;

    iput-object p4, p0, Lcom/chartboost/sdk/impl/p5$b;->d:Lcom/chartboost/sdk/impl/t2;

    iput-object p5, p0, Lcom/chartboost/sdk/impl/p5$b;->e:Lcom/chartboost/sdk/impl/i4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/chartboost/sdk/impl/s2;
    .locals 9

    .line 1
    new-instance v8, Lcom/chartboost/sdk/impl/s2;

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p5$b;->a:Lcom/chartboost/sdk/impl/d0;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/d0;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p5$b;->b:Lcom/chartboost/sdk/impl/p5;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p5;->b()Lcom/chartboost/sdk/impl/r2;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p5$b;->c:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/i0;->f()Lcom/chartboost/sdk/impl/g1;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p5$b;->c:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/i0;->e()Lcom/chartboost/sdk/impl/u4;

    move-result-object v4

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p5$b;->d:Lcom/chartboost/sdk/impl/t2;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/t2;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p5$b;->c:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/i0;->g()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/c5;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/c5;->e()Lcom/chartboost/sdk/impl/r5;

    move-result-object v6

    .line 8
    iget-object v7, p0, Lcom/chartboost/sdk/impl/p5$b;->e:Lcom/chartboost/sdk/impl/i4;

    move-object v0, v8

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/s2;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/r2;Lcom/chartboost/sdk/impl/g1;Lcom/chartboost/sdk/impl/u4;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/r5;Lcom/chartboost/sdk/impl/i4;)V

    return-object v8
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p5$b;->a()Lcom/chartboost/sdk/impl/s2;

    move-result-object v0

    return-object v0
.end method
