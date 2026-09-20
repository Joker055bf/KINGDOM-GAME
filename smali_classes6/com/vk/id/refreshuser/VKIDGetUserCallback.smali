.class public interface abstract Lcom/vk/id/refreshuser/VKIDGetUserCallback;
.super Ljava/lang/Object;
.source "VKIDGetUserCallback.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vk/id/refreshuser/VKIDGetUserCallback;",
        "",
        "onSuccess",
        "",
        "user",
        "Lcom/vk/id/VKIDUser;",
        "onFail",
        "fail",
        "Lcom/vk/id/refreshuser/VKIDGetUserFail;",
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
.method public abstract onFail(Lcom/vk/id/refreshuser/VKIDGetUserFail;)V
.end method

.method public abstract onSuccess(Lcom/vk/id/VKIDUser;)V
.end method
