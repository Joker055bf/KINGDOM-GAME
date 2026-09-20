.class public final Lcom/chartboost/sdk/impl/m$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/q3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/chartboost/sdk/impl/r3;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/r3;",
        "loadResult",
        "",
        "a",
        "(Lcom/chartboost/sdk/impl/r3;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/chartboost/sdk/impl/m;

.field public final synthetic b:Lcom/chartboost/sdk/impl/h0;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/m;Lcom/chartboost/sdk/impl/h0;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/impl/m$b;->a:Lcom/chartboost/sdk/impl/m;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/m$b;->b:Lcom/chartboost/sdk/impl/h0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/chartboost/sdk/impl/r3;)V
    .locals 4

    const-string v0, "loadResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/r3;->b()Lcom/chartboost/sdk/internal/Model/CBError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m$b;->a:Lcom/chartboost/sdk/impl/m;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/m$b;->b:Lcom/chartboost/sdk/impl/h0;

    invoke-static {v0, v1, p1}, Lcom/chartboost/sdk/impl/m;->b(Lcom/chartboost/sdk/impl/m;Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/r3;)V

    .line 3
    iget-object p1, p0, Lcom/chartboost/sdk/impl/m$b;->a:Lcom/chartboost/sdk/impl/m;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/m$b;->b:Lcom/chartboost/sdk/impl/h0;

    invoke-static {p1, v0}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/m;Lcom/chartboost/sdk/impl/h0;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m$b;->a:Lcom/chartboost/sdk/impl/m;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/m$b;->b:Lcom/chartboost/sdk/impl/h0;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/h0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/r3;->b()Lcom/chartboost/sdk/internal/Model/CBError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/internal/Model/CBError;->getErrorDesc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loadResult.error.errorDesc"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m$b;->a:Lcom/chartboost/sdk/impl/m;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/m$b;->b:Lcom/chartboost/sdk/impl/h0;

    invoke-static {v0, v1, p1}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/m;Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/r3;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/chartboost/sdk/impl/r3;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/m$b;->a(Lcom/chartboost/sdk/impl/r3;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
