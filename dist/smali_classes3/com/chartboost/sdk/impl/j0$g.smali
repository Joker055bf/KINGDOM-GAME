.class public final Lcom/chartboost/sdk/impl/j0$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/j0;-><init>(Lcom/chartboost/sdk/impl/d0;Lcom/chartboost/sdk/impl/t2;Lcom/chartboost/sdk/impl/k4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/chartboost/sdk/impl/g1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/g1;",
        "a",
        "()Lcom/chartboost/sdk/impl/g1;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/impl/t2;

.field public final synthetic b:Lcom/chartboost/sdk/impl/j0;

.field public final synthetic c:Lcom/chartboost/sdk/impl/d0;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/t2;Lcom/chartboost/sdk/impl/j0;Lcom/chartboost/sdk/impl/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/impl/j0$g;->a:Lcom/chartboost/sdk/impl/t2;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/j0$g;->b:Lcom/chartboost/sdk/impl/j0;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/j0$g;->c:Lcom/chartboost/sdk/impl/d0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/chartboost/sdk/impl/g1;
    .locals 8

    .line 1
    new-instance v7, Lcom/chartboost/sdk/impl/g1;

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$g;->a:Lcom/chartboost/sdk/impl/t2;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/t2;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$g;->b:Lcom/chartboost/sdk/impl/j0;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/j0;->b(Lcom/chartboost/sdk/impl/j0;)Lcom/chartboost/sdk/impl/w3;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$g;->b:Lcom/chartboost/sdk/impl/j0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j0;->i()Lcom/chartboost/sdk/impl/h1;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$g;->b:Lcom/chartboost/sdk/impl/j0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j0;->l()Lcom/chartboost/sdk/impl/k5;

    move-result-object v4

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$g;->c:Lcom/chartboost/sdk/impl/d0;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/d0;->c()Landroid/os/Handler;

    move-result-object v5

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$g;->a:Lcom/chartboost/sdk/impl/t2;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/t2;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    move-object v0, v7

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/g1;-><init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/w3;Lcom/chartboost/sdk/impl/h1;Lcom/chartboost/sdk/impl/k5;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    return-object v7
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/j0$g;->a()Lcom/chartboost/sdk/impl/g1;

    move-result-object v0

    return-object v0
.end method
