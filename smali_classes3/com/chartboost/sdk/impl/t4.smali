.class public final Lcom/chartboost/sdk/impl/t4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/s4;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0007\u001a\u00020\u00028VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u000c\u001a\u00020\u00088VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/t4;",
        "Lcom/chartboost/sdk/impl/s4;",
        "Lcom/chartboost/sdk/impl/l1;",
        "uiManager$delegate",
        "Lkotlin/Lazy;",
        "b",
        "()Lcom/chartboost/sdk/impl/l1;",
        "uiManager",
        "Lcom/chartboost/sdk/impl/o1;",
        "viewController$delegate",
        "a",
        "()Lcom/chartboost/sdk/impl/o1;",
        "viewController",
        "Lcom/chartboost/sdk/impl/f0;",
        "animationManager$delegate",
        "c",
        "()Lcom/chartboost/sdk/impl/f0;",
        "animationManager",
        "Lcom/chartboost/sdk/impl/d0;",
        "androidComponent",
        "Lcom/chartboost/sdk/impl/i0;",
        "applicationComponent",
        "<init>",
        "(Lcom/chartboost/sdk/impl/d0;Lcom/chartboost/sdk/impl/i0;)V",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lkotlin/Lazy;

.field public final b:Lkotlin/Lazy;

.field public final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/d0;Lcom/chartboost/sdk/impl/i0;)V
    .locals 1

    const-string v0, "androidComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationComponent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/chartboost/sdk/impl/t4$b;

    invoke-direct {v0, p1, p0}, Lcom/chartboost/sdk/impl/t4$b;-><init>(Lcom/chartboost/sdk/impl/d0;Lcom/chartboost/sdk/impl/t4;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/t4;->a:Lkotlin/Lazy;

    .line 13
    new-instance v0, Lcom/chartboost/sdk/impl/t4$c;

    invoke-direct {v0, p0, p2, p1}, Lcom/chartboost/sdk/impl/t4$c;-><init>(Lcom/chartboost/sdk/impl/t4;Lcom/chartboost/sdk/impl/i0;Lcom/chartboost/sdk/impl/d0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/impl/t4;->b:Lkotlin/Lazy;

    .line 22
    new-instance p2, Lcom/chartboost/sdk/impl/t4$a;

    invoke-direct {p2, p1}, Lcom/chartboost/sdk/impl/t4$a;-><init>(Lcom/chartboost/sdk/impl/d0;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/t4;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/chartboost/sdk/impl/t4;)Lcom/chartboost/sdk/impl/f0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t4;->c()Lcom/chartboost/sdk/impl/f0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/o1;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t4;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/o1;

    return-object v0
.end method

.method public b()Lcom/chartboost/sdk/impl/l1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t4;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/l1;

    return-object v0
.end method

.method public final c()Lcom/chartboost/sdk/impl/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t4;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/f0;

    return-object v0
.end method
