.class public final Lcom/chartboost/sdk/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0007\u001a\u00020\u00028VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/c;",
        "",
        "Lcom/chartboost/sdk/impl/b;",
        "adApiCallbackSender$delegate",
        "Lkotlin/Lazy;",
        "a",
        "()Lcom/chartboost/sdk/impl/b;",
        "adApiCallbackSender",
        "Lcom/chartboost/sdk/impl/d0;",
        "androidComponent",
        "<init>",
        "(Lcom/chartboost/sdk/impl/d0;)V",
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
.field public final a:Lcom/chartboost/sdk/impl/d0;

.field public final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/d0;)V
    .locals 1

    const-string v0, "androidComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/c;->a:Lcom/chartboost/sdk/impl/d0;

    .line 2
    new-instance p1, Lcom/chartboost/sdk/impl/c$a;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/c;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/chartboost/sdk/impl/c;)Lcom/chartboost/sdk/impl/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/chartboost/sdk/impl/c;->a:Lcom/chartboost/sdk/impl/d0;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/b;

    return-object v0
.end method
