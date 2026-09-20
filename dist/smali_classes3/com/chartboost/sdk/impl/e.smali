.class public final Lcom/chartboost/sdk/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000\u001a\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000\u001a\u0010\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/chartboost/sdk/Mediation;",
        "mediation",
        "Lcom/chartboost/sdk/impl/p3;",
        "b",
        "Lcom/chartboost/sdk/impl/x4;",
        "c",
        "Lcom/chartboost/sdk/impl/t0;",
        "a",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lcom/chartboost/sdk/Mediation;)Lcom/chartboost/sdk/impl/t0;
    .locals 3

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/d;

    invoke-static {}, Lcom/chartboost/sdk/impl/j;->a()Lcom/chartboost/sdk/impl/j;

    move-result-object v1

    const-string v2, "banner()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/chartboost/sdk/impl/e$a;->a:Lcom/chartboost/sdk/impl/e$a;

    invoke-direct {v0, v1, v2, p0}, Lcom/chartboost/sdk/impl/d;-><init>(Lcom/chartboost/sdk/impl/j;Lkotlin/jvm/functions/Function0;Lcom/chartboost/sdk/Mediation;)V

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/t0;

    return-object p0
.end method

.method public static final b(Lcom/chartboost/sdk/Mediation;)Lcom/chartboost/sdk/impl/p3;
    .locals 3

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/d;

    invoke-static {}, Lcom/chartboost/sdk/impl/j;->c()Lcom/chartboost/sdk/impl/j;

    move-result-object v1

    const-string v2, "interstitial()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/chartboost/sdk/impl/e$b;->a:Lcom/chartboost/sdk/impl/e$b;

    invoke-direct {v0, v1, v2, p0}, Lcom/chartboost/sdk/impl/d;-><init>(Lcom/chartboost/sdk/impl/j;Lkotlin/jvm/functions/Function0;Lcom/chartboost/sdk/Mediation;)V

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/p3;

    return-object p0
.end method

.method public static final c(Lcom/chartboost/sdk/Mediation;)Lcom/chartboost/sdk/impl/x4;
    .locals 3

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/d;

    invoke-static {}, Lcom/chartboost/sdk/impl/j;->d()Lcom/chartboost/sdk/impl/j;

    move-result-object v1

    const-string v2, "rewardedVideo()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/chartboost/sdk/impl/e$c;->a:Lcom/chartboost/sdk/impl/e$c;

    invoke-direct {v0, v1, v2, p0}, Lcom/chartboost/sdk/impl/d;-><init>(Lcom/chartboost/sdk/impl/j;Lkotlin/jvm/functions/Function0;Lcom/chartboost/sdk/Mediation;)V

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/x4;

    return-object p0
.end method
