.class public interface abstract Lcom/vk/id/auth/VKIDAuthCallback;
.super Ljava/lang/Object;
.source "VKIDAuthCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/auth/VKIDAuthCallback$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vk/id/auth/VKIDAuthCallback;",
        "",
        "onAuth",
        "",
        "accessToken",
        "Lcom/vk/id/AccessToken;",
        "onAuthCode",
        "data",
        "Lcom/vk/id/auth/AuthCodeData;",
        "isCompletion",
        "",
        "onFail",
        "fail",
        "Lcom/vk/id/VKIDAuthFail;",
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

.method public abstract onFail(Lcom/vk/id/VKIDAuthFail;)V
.end method
