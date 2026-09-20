.class public final Lcom/vk/id/internal/ipc/SilentAuthInfoProvider$DefaultImpls;
.super Ljava/lang/Object;
.source "SilentAuthInfoProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getDefaultTimeout(Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;)J
    .locals 2

    .line 36
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getDefaultTimeout$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSilentAuthInfos$default(Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 37
    invoke-interface {p0}, Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;->getDefaultTimeout()J

    move-result-wide p1

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;->getSilentAuthInfos(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getSilentAuthInfos"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
