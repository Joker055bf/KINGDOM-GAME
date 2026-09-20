.class Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$3;
.super Ljava/lang/Object;
.source "HuaweiUdpGames.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->silentSignIn(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$3;->this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$3;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 94
    instance-of v0, p1, Lcom/huawei/hms/common/ApiException;

    if-eqz v0, :cond_0

    .line 95
    check-cast p1, Lcom/huawei/hms/common/ApiException;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "signIn failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    const-string p1, "start getSignInIntent"

    .line 97
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$3;->this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$3;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    invoke-virtual {p1, v0, v1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->login(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$3;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    if-eqz v0, :cond_1

    .line 100
    new-instance v1, Lcom/unity/udp/extension/sdk/Result;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/unity/udp/extension/sdk/Result;-><init>(I)V

    invoke-interface {v0, p1, v1}, Lcom/unity/udp/extension/sdk/games/LoginCallback;->onFailure(Ljava/lang/Exception;Lcom/unity/udp/extension/sdk/Result;)V

    :cond_1
    :goto_0
    return-void
.end method
