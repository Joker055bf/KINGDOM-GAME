.class public final Lcom/chartboost/sdk/impl/p$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/d0;Lcom/chartboost/sdk/impl/i0;Lcom/chartboost/sdk/impl/t2;Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/impl/s4;Lcom/chartboost/sdk/Mediation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/chartboost/sdk/impl/i3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/i3;",
        "a",
        "()Lcom/chartboost/sdk/impl/i3;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/impl/p;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/p;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/chartboost/sdk/impl/i3;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v17, Lcom/chartboost/sdk/impl/i3;

    .line 2
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->b(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/d0;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/d0;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->b(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/d0;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/d0;->b()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 4
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->c(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/i0;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->b()Lcom/chartboost/sdk/impl/y2;

    move-result-object v4

    .line 5
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->e(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/n1;

    move-result-object v5

    .line 6
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->j(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/s4;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/s4;->a()Lcom/chartboost/sdk/impl/o1;

    move-result-object v6

    .line 7
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->f(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/r1;

    move-result-object v7

    .line 8
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->d(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/k1;

    move-result-object v8

    .line 9
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->a(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/j;

    move-result-object v9

    .line 10
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->c(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/i0;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->f()Lcom/chartboost/sdk/impl/g1;

    move-result-object v10

    .line 11
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->c(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/i0;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->e()Lcom/chartboost/sdk/impl/u4;

    move-result-object v11

    .line 12
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->b(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/d0;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/d0;->c()Landroid/os/Handler;

    move-result-object v12

    .line 13
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->j(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/s4;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/s4;->b()Lcom/chartboost/sdk/impl/l1;

    move-result-object v13

    .line 14
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->c(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/i0;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/i0;->h()Lcom/chartboost/sdk/impl/c6;

    move-result-object v14

    .line 15
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->l(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/y4;

    move-result-object v15

    .line 16
    iget-object v1, v0, Lcom/chartboost/sdk/impl/p$g;->a:Lcom/chartboost/sdk/impl/p;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/p;->h(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/Mediation;

    move-result-object v16

    move-object/from16 v1, v17

    .line 17
    invoke-direct/range {v1 .. v16}, Lcom/chartboost/sdk/impl/i3;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/impl/y2;Lcom/chartboost/sdk/impl/n1;Lcom/chartboost/sdk/impl/o1;Lcom/chartboost/sdk/impl/r1;Lcom/chartboost/sdk/impl/k1;Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/impl/g1;Lcom/chartboost/sdk/impl/u4;Landroid/os/Handler;Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/c6;Lcom/chartboost/sdk/impl/y4;Lcom/chartboost/sdk/Mediation;)V

    return-object v17
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p$g;->a()Lcom/chartboost/sdk/impl/i3;

    move-result-object v0

    return-object v0
.end method
