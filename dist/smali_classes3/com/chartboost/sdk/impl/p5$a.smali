.class public final Lcom/chartboost/sdk/impl/p5$a;
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
        "Lcom/chartboost/sdk/impl/r2;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/r2;",
        "a",
        "()Lcom/chartboost/sdk/impl/r2;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/impl/i0;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/i0;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/impl/p5$a;->a:Lcom/chartboost/sdk/impl/i0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/chartboost/sdk/impl/r2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p5$a;->a:Lcom/chartboost/sdk/impl/i0;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/i0;->g()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/c5;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/c5;->e()Lcom/chartboost/sdk/impl/r5;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/chartboost/sdk/impl/r2;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r5;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r5;->c()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/chartboost/sdk/impl/r2;-><init>(II)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p5$a;->a()Lcom/chartboost/sdk/impl/r2;

    move-result-object v0

    return-object v0
.end method
