.class public final Lcom/chartboost/sdk/impl/d$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/d;-><init>(Lcom/chartboost/sdk/impl/j;Lkotlin/jvm/functions/Function0;Lcom/chartboost/sdk/Mediation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/chartboost/sdk/impl/p;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "T",
        "Lcom/chartboost/sdk/impl/p;",
        "a",
        "()Lcom/chartboost/sdk/impl/p;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/impl/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/chartboost/sdk/impl/j;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/impl/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/d<",
            "TT;>;",
            "Lcom/chartboost/sdk/impl/j;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chartboost/sdk/impl/d$a;->a:Lcom/chartboost/sdk/impl/d;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/d$a;->b:Lcom/chartboost/sdk/impl/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/chartboost/sdk/impl/p;
    .locals 10

    .line 1
    new-instance v9, Lcom/chartboost/sdk/impl/p;

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d$a;->a:Lcom/chartboost/sdk/impl/d;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/d;->a(Lcom/chartboost/sdk/impl/d;)Lcom/chartboost/sdk/impl/a2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l2;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d$a;->a:Lcom/chartboost/sdk/impl/d;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/d;->a(Lcom/chartboost/sdk/impl/d;)Lcom/chartboost/sdk/impl/a2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l2;->c()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d$a;->a:Lcom/chartboost/sdk/impl/d;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/d;->a(Lcom/chartboost/sdk/impl/d;)Lcom/chartboost/sdk/impl/a2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l2;->a()Lcom/chartboost/sdk/impl/d0;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d$a;->a:Lcom/chartboost/sdk/impl/d;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/d;->a(Lcom/chartboost/sdk/impl/d;)Lcom/chartboost/sdk/impl/a2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l2;->e()Lcom/chartboost/sdk/impl/i0;

    move-result-object v4

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d$a;->a:Lcom/chartboost/sdk/impl/d;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/d;->a(Lcom/chartboost/sdk/impl/d;)Lcom/chartboost/sdk/impl/a2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l2;->f()Lcom/chartboost/sdk/impl/t2;

    move-result-object v5

    .line 7
    iget-object v6, p0, Lcom/chartboost/sdk/impl/d$a;->b:Lcom/chartboost/sdk/impl/j;

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d$a;->a:Lcom/chartboost/sdk/impl/d;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/d;->a(Lcom/chartboost/sdk/impl/d;)Lcom/chartboost/sdk/impl/a2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l2;->i()Lcom/chartboost/sdk/impl/s4;

    move-result-object v7

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d$a;->a:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/d;->d()Lcom/chartboost/sdk/Mediation;

    move-result-object v8

    move-object v0, v9

    .line 10
    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/impl/p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/d0;Lcom/chartboost/sdk/impl/i0;Lcom/chartboost/sdk/impl/t2;Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/impl/s4;Lcom/chartboost/sdk/Mediation;)V

    return-object v9
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/d$a;->a()Lcom/chartboost/sdk/impl/p;

    move-result-object v0

    return-object v0
.end method
