.class public final Lcom/vk/id/AuthResultHandler$handleOauth$5$1$1;
.super Ljava/lang/Object;
.source "AuthResultHandler.kt"

# interfaces
.implements Lcom/vk/id/logout/VKIDLogoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/AuthResultHandler$handleOauth$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/vk/id/AuthResultHandler$handleOauth$5$1$1",
        "Lcom/vk/id/logout/VKIDLogoutCallback;",
        "onSuccess",
        "",
        "onFail",
        "fail",
        "Lcom/vk/id/logout/VKIDLogoutFail;",
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
.field final synthetic $it:Lcom/vk/id/AccessToken;

.field final synthetic this$0:Lcom/vk/id/AuthResultHandler;


# direct methods
.method constructor <init>(Lcom/vk/id/AuthResultHandler;Lcom/vk/id/AccessToken;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$5$1$1;->this$0:Lcom/vk/id/AuthResultHandler;

    iput-object p2, p0, Lcom/vk/id/AuthResultHandler$handleOauth$5$1$1;->$it:Lcom/vk/id/AccessToken;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/vk/id/logout/VKIDLogoutFail;)V
    .locals 1

    const-string v0, "fail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$5$1$1;->this$0:Lcom/vk/id/AuthResultHandler;

    iget-object v0, p0, Lcom/vk/id/AuthResultHandler$handleOauth$5$1$1;->$it:Lcom/vk/id/AccessToken;

    invoke-static {p1, v0}, Lcom/vk/id/AuthResultHandler;->access$emitAuthSuccess(Lcom/vk/id/AuthResultHandler;Lcom/vk/id/AccessToken;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/vk/id/AuthResultHandler$handleOauth$5$1$1;->this$0:Lcom/vk/id/AuthResultHandler;

    iget-object v1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$5$1$1;->$it:Lcom/vk/id/AccessToken;

    invoke-static {v0, v1}, Lcom/vk/id/AuthResultHandler;->access$emitAuthSuccess(Lcom/vk/id/AuthResultHandler;Lcom/vk/id/AccessToken;)V

    return-void
.end method
