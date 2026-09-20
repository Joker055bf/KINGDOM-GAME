.class Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$9;
.super Ljava/lang/Object;
.source "HuaweiUdpGames.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->handleSignInResult(Landroid/app/Activity;Landroid/content/Intent;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$9;->this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$9;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "login failed, parseAuthResultFromIntent failed"

    .line 270
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$9;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    if-eqz v0, :cond_0

    .line 272
    new-instance v1, Lcom/unity/udp/extension/sdk/Result;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/unity/udp/extension/sdk/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/unity/udp/extension/sdk/games/LoginCallback;->onFailure(Ljava/lang/Exception;Lcom/unity/udp/extension/sdk/Result;)V

    :cond_0
    return-void
.end method
