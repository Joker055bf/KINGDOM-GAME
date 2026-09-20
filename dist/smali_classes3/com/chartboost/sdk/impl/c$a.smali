.class public final Lcom/chartboost/sdk/impl/c$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/c;-><init>(Lcom/chartboost/sdk/impl/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/chartboost/sdk/impl/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/b;",
        "a",
        "()Lcom/chartboost/sdk/impl/b;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/impl/c;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/c;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/impl/c$a;->a:Lcom/chartboost/sdk/impl/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/chartboost/sdk/impl/b;
    .locals 2

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c$a;->a:Lcom/chartboost/sdk/impl/c;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/c;)Lcom/chartboost/sdk/impl/d0;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/d0;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/b;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/c$a;->a()Lcom/chartboost/sdk/impl/b;

    move-result-object v0

    return-object v0
.end method
