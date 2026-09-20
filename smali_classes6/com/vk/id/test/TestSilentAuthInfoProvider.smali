.class public final Lcom/vk/id/test/TestSilentAuthInfoProvider;
.super Ljava/lang/Object;
.source "TestSilentAuthInfoProvider.kt"

# interfaces
.implements Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vk/id/test/TestSilentAuthInfoProvider;",
        "Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;",
        "<init>",
        "()V",
        "getSilentAuthInfos",
        "",
        "Lcom/vk/silentauth/SilentAuthInfo;",
        "timeout",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setAppId",
        "",
        "appId",
        "",
        "setApiVersion",
        "apiVersion",
        "",
        "vkid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultTimeout()J
    .locals 2

    .line 7
    invoke-static {p0}, Lcom/vk/id/internal/ipc/SilentAuthInfoProvider$DefaultImpls;->getDefaultTimeout(Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSilentAuthInfos(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/vk/silentauth/SilentAuthInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 9
    new-instance v21, Lcom/vk/silentauth/SilentAuthInfo;

    move-object/from16 v0, v21

    .line 10
    sget-object v1, Lcom/vk/dto/common/id/UserId;->DEFAULT:Lcom/vk/dto/common/id/UserId;

    const-string v2, "uuid"

    const-string v3, "token"

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0x1fff0

    const/16 v20, 0x0

    .line 9
    invoke-direct/range {v0 .. v20}, Lcom/vk/silentauth/SilentAuthInfo;-><init>(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    invoke-static/range {v21 .. v21}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setApiVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "apiVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(I)V
    .locals 0

    return-void
.end method
