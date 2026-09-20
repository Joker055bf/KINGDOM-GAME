.class public final Lcom/chartboost/sdk/impl/e5$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/e5;-><init>(Lcom/chartboost/sdk/impl/d0;Lcom/chartboost/sdk/impl/t2;Lcom/chartboost/sdk/impl/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/chartboost/sdk/impl/d5;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/d5;",
        "a",
        "()Lcom/chartboost/sdk/impl/d5;"
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

.field public final synthetic b:Lcom/chartboost/sdk/impl/i0;

.field public final synthetic c:Lcom/chartboost/sdk/impl/e5;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/d0;Lcom/chartboost/sdk/impl/i0;Lcom/chartboost/sdk/impl/e5;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/impl/e5$f;->a:Lcom/chartboost/sdk/impl/d0;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/e5$f;->b:Lcom/chartboost/sdk/impl/i0;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/e5$f;->c:Lcom/chartboost/sdk/impl/e5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/chartboost/sdk/impl/d5;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v17, Lcom/chartboost/sdk/impl/d5;

    .line 2
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->a:Lcom/chartboost/sdk/impl/d0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/d0;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->a:Lcom/chartboost/sdk/impl/d0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/d0;->b()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 4
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->a:Lcom/chartboost/sdk/impl/d0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/d0;->c()Landroid/os/Handler;

    move-result-object v4

    .line 5
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->b:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->a()Lcom/chartboost/sdk/impl/i4;

    move-result-object v5

    .line 6
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->b:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->g()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    .line 7
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->b:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->c()Lcom/chartboost/sdk/impl/g4;

    move-result-object v7

    .line 8
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->b:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->n()Lcom/chartboost/sdk/impl/o2;

    move-result-object v8

    .line 9
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->b:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->j()Lcom/chartboost/sdk/impl/f5;

    move-result-object v9

    .line 10
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->b:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->d()Lcom/chartboost/sdk/impl/y5;

    move-result-object v10

    .line 11
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->b:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->h()Lcom/chartboost/sdk/impl/c6;

    move-result-object v11

    .line 12
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->c:Lcom/chartboost/sdk/impl/e5;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/e5;->b(Lcom/chartboost/sdk/impl/e5;)Lcom/chartboost/sdk/impl/o3;

    move-result-object v12

    .line 13
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->c:Lcom/chartboost/sdk/impl/e5;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/e5;->a(Lcom/chartboost/sdk/impl/e5;)Lcom/chartboost/sdk/impl/n3;

    move-result-object v13

    .line 14
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->b:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->i()Lcom/chartboost/sdk/impl/h1;

    move-result-object v14

    .line 15
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->c:Lcom/chartboost/sdk/impl/e5;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/e5;->c(Lcom/chartboost/sdk/impl/e5;)Lcom/chartboost/sdk/impl/n4;

    move-result-object v15

    .line 16
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e5$f;->b:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->k()Lcom/chartboost/sdk/impl/a1;

    move-result-object v16

    move-object/from16 v1, v17

    .line 17
    invoke-direct/range {v1 .. v16}, Lcom/chartboost/sdk/impl/d5;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/os/Handler;Lcom/chartboost/sdk/impl/i4;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/impl/g4;Lcom/chartboost/sdk/impl/o2;Lcom/chartboost/sdk/impl/f5;Lcom/chartboost/sdk/impl/y5;Lcom/chartboost/sdk/impl/c6;Lcom/chartboost/sdk/impl/o3;Lcom/chartboost/sdk/impl/n3;Lcom/chartboost/sdk/impl/h1;Lcom/chartboost/sdk/impl/n4;Lcom/chartboost/sdk/impl/a1;)V

    return-object v17
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e5$f;->a()Lcom/chartboost/sdk/impl/d5;

    move-result-object v0

    return-object v0
.end method
