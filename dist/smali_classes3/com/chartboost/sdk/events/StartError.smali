.class public final Lcom/chartboost/sdk/events/StartError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/events/CBError;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/events/StartError$Code;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000cB!\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\u0004\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/chartboost/sdk/events/StartError;",
        "Lcom/chartboost/sdk/events/CBError;",
        "code",
        "Lcom/chartboost/sdk/events/StartError$Code;",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "(Lcom/chartboost/sdk/events/StartError$Code;Ljava/lang/Exception;)V",
        "getCode",
        "()Lcom/chartboost/sdk/events/StartError$Code;",
        "getException",
        "()Ljava/lang/Exception;",
        "Code",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final code:Lcom/chartboost/sdk/events/StartError$Code;

.field private final exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/events/StartError$Code;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/events/StartError;->code:Lcom/chartboost/sdk/events/StartError$Code;

    iput-object p2, p0, Lcom/chartboost/sdk/events/StartError;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/chartboost/sdk/events/StartError$Code;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/events/StartError;-><init>(Lcom/chartboost/sdk/events/StartError$Code;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final getCode()Lcom/chartboost/sdk/events/StartError$Code;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/events/StartError;->code:Lcom/chartboost/sdk/events/StartError$Code;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/events/StartError;->exception:Ljava/lang/Exception;

    return-object v0
.end method
