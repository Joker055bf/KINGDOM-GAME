.class public final Lcom/chartboost/sdk/impl/j0$p;
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
        "Lcom/chartboost/sdk/impl/y5;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/y5;",
        "a",
        "()Lcom/chartboost/sdk/impl/y5;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/impl/j0;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/j0;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/impl/j0$p;->a:Lcom/chartboost/sdk/impl/j0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/chartboost/sdk/impl/y5;
    .locals 28

    .line 1
    new-instance v14, Lcom/chartboost/sdk/impl/a6;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7f

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/chartboost/sdk/impl/a6;-><init>(JIIJJJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    new-instance v0, Lcom/chartboost/sdk/impl/y5;

    .line 3
    invoke-virtual {v14}, Lcom/chartboost/sdk/impl/a6;->b()J

    move-result-wide v16

    .line 4
    invoke-virtual {v14}, Lcom/chartboost/sdk/impl/a6;->c()I

    move-result v18

    .line 5
    invoke-virtual {v14}, Lcom/chartboost/sdk/impl/a6;->d()I

    move-result v19

    .line 6
    invoke-virtual {v14}, Lcom/chartboost/sdk/impl/a6;->e()J

    move-result-wide v20

    .line 7
    invoke-virtual {v14}, Lcom/chartboost/sdk/impl/a6;->f()J

    move-result-wide v22

    .line 8
    invoke-virtual {v14}, Lcom/chartboost/sdk/impl/a6;->g()J

    move-result-wide v24

    .line 9
    invoke-virtual {v14}, Lcom/chartboost/sdk/impl/a6;->a()I

    move-result v26

    move-object/from16 v1, p0

    .line 10
    iget-object v2, v1, Lcom/chartboost/sdk/impl/j0$p;->a:Lcom/chartboost/sdk/impl/j0;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/j0;->i()Lcom/chartboost/sdk/impl/h1;

    move-result-object v27

    move-object v15, v0

    .line 11
    invoke-direct/range {v15 .. v27}, Lcom/chartboost/sdk/impl/y5;-><init>(JIIJJJILcom/chartboost/sdk/impl/h1;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/j0$p;->a()Lcom/chartboost/sdk/impl/y5;

    move-result-object v0

    return-object v0
.end method
