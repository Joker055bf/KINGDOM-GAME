.class public interface abstract Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;
.super Ljava/lang/Object;
.source "SilentAuthInfoProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/ipc/SilentAuthInfoProvider$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u001e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003H\u00a6@\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H&R\u001a\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;",
        "",
        "defaultTimeout",
        "",
        "getDefaultTimeout$annotations",
        "()V",
        "getDefaultTimeout",
        "()J",
        "getSilentAuthInfos",
        "",
        "Lcom/vk/silentauth/SilentAuthInfo;",
        "timeout",
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


# virtual methods
.method public abstract getDefaultTimeout()J
.end method

.method public abstract getSilentAuthInfos(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract setApiVersion(Ljava/lang/String;)V
.end method

.method public abstract setAppId(I)V
.end method
