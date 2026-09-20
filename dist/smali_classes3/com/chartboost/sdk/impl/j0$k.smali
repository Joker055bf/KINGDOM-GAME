.class public final Lcom/chartboost/sdk/impl/j0$k;
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
        "Lcom/chartboost/sdk/impl/v4;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/v4;",
        "a",
        "()Lcom/chartboost/sdk/impl/v4;"
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

.field public final synthetic b:Lcom/chartboost/sdk/impl/j0;

.field public final synthetic c:Lcom/chartboost/sdk/impl/k4;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/d0;Lcom/chartboost/sdk/impl/j0;Lcom/chartboost/sdk/impl/k4;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/impl/j0$k;->a:Lcom/chartboost/sdk/impl/d0;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/j0$k;->b:Lcom/chartboost/sdk/impl/j0;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/j0$k;->c:Lcom/chartboost/sdk/impl/k4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/chartboost/sdk/impl/v4;
    .locals 12

    .line 1
    new-instance v11, Lcom/chartboost/sdk/impl/v4;

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$k;->a:Lcom/chartboost/sdk/impl/d0;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/d0;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$k;->b:Lcom/chartboost/sdk/impl/j0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j0;->k()Lcom/chartboost/sdk/impl/a1;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$k;->b:Lcom/chartboost/sdk/impl/j0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j0;->i()Lcom/chartboost/sdk/impl/h1;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$k;->b:Lcom/chartboost/sdk/impl/j0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j0;->g()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$k;->a:Lcom/chartboost/sdk/impl/d0;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/d0;->b()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$k;->b:Lcom/chartboost/sdk/impl/j0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j0;->l()Lcom/chartboost/sdk/impl/k5;

    move-result-object v6

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$k;->b:Lcom/chartboost/sdk/impl/j0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j0;->m()Lcom/chartboost/sdk/impl/w1;

    move-result-object v7

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$k;->b:Lcom/chartboost/sdk/impl/j0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j0;->j()Lcom/chartboost/sdk/impl/f5;

    move-result-object v8

    .line 10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j0$k;->c:Lcom/chartboost/sdk/impl/k4;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/k4;->a()Lcom/chartboost/sdk/impl/i4;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, v11

    .line 11
    invoke-direct/range {v0 .. v10}, Lcom/chartboost/sdk/impl/v4;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/a1;Lcom/chartboost/sdk/impl/h1;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/impl/k5;Lcom/chartboost/sdk/impl/w1;Lcom/chartboost/sdk/impl/f5;Lcom/chartboost/sdk/impl/i4;Lcom/chartboost/sdk/Mediation;)V

    return-object v11
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/j0$k;->a()Lcom/chartboost/sdk/impl/v4;

    move-result-object v0

    return-object v0
.end method
