.class public final Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$6$1;
.super Ljava/lang/Object;
.source "VKIDUserRefresher.kt"

# interfaces
.implements Lcom/vk/id/refresh/VKIDRefreshTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/refreshuser/VKIDUserRefresher;->refresh(Lcom/vk/id/refreshuser/VKIDGetUserCallback;Lcom/vk/id/refreshuser/VKIDGetUserParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/vk/id/refreshuser/VKIDUserRefresher$refresh$6$1",
        "Lcom/vk/id/refresh/VKIDRefreshTokenCallback;",
        "onSuccess",
        "",
        "token",
        "Lcom/vk/id/AccessToken;",
        "onFail",
        "fail",
        "Lcom/vk/id/refresh/VKIDRefreshTokenFail;",
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


# instance fields
.field final synthetic $callback:Lcom/vk/id/refreshuser/VKIDGetUserCallback;

.field final synthetic $it:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/vk/id/refreshuser/VKIDGetUserCallback;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$6$1;->$callback:Lcom/vk/id/refreshuser/VKIDGetUserCallback;

    iput-object p2, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$6$1;->$it:Ljava/lang/Throwable;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/vk/id/refresh/VKIDRefreshTokenFail;)V
    .locals 4

    const-string v0, "fail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$6$1;->$callback:Lcom/vk/id/refreshuser/VKIDGetUserCallback;

    new-instance v1, Lcom/vk/id/refreshuser/VKIDGetUserFail$FailedApiCall;

    invoke-virtual {p1}, Lcom/vk/id/refresh/VKIDRefreshTokenFail;->getDescription()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to fetch user data due to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$6$1;->$it:Ljava/lang/Throwable;

    invoke-direct {v1, p1, v2}, Lcom/vk/id/refreshuser/VKIDGetUserFail$FailedApiCall;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Lcom/vk/id/refreshuser/VKIDGetUserFail;

    invoke-interface {v0, v1}, Lcom/vk/id/refreshuser/VKIDGetUserCallback;->onFail(Lcom/vk/id/refreshuser/VKIDGetUserFail;)V

    return-void
.end method

.method public onSuccess(Lcom/vk/id/AccessToken;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/vk/id/refreshuser/VKIDUserRefresher$refresh$6$1;->$callback:Lcom/vk/id/refreshuser/VKIDGetUserCallback;

    invoke-virtual {p1}, Lcom/vk/id/AccessToken;->getUserData()Lcom/vk/id/VKIDUser;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vk/id/refreshuser/VKIDGetUserCallback;->onSuccess(Lcom/vk/id/VKIDUser;)V

    return-void
.end method
