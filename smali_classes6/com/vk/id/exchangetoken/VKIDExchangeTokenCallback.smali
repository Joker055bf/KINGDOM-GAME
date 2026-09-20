.class public interface abstract Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;
.super Ljava/lang/Object;
.source "VKIDExchangeTokenCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;",
        "",
        "onAuth",
        "",
        "accessToken",
        "Lcom/vk/id/AccessToken;",
        "onFail",
        "fail",
        "Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail;",
        "onAuthCode",
        "data",
        "Lcom/vk/id/auth/AuthCodeData;",
        "isCompletion",
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
.method public abstract onAuth(Lcom/vk/id/AccessToken;)V
.end method

.method public abstract onAuthCode(Lcom/vk/id/auth/AuthCodeData;Z)V
.end method

.method public abstract onFail(Lcom/vk/id/exchangetoken/VKIDExchangeTokenFail;)V
.end method
