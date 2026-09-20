.class public final Lcom/chartboost/sdk/impl/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/j1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/j1;",
        "",
        "a",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/chartboost/sdk/impl/j1$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chartboost/sdk/impl/j1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/j1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/sdk/impl/j1;->a:Lcom/chartboost/sdk/impl/j1$a;

    return-void
.end method

.method public static final a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/chartboost/sdk/impl/j1;->a:Lcom/chartboost/sdk/impl/j1$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j1$a;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
