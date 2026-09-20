.class Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$6;
.super Ljava/lang/Object;
.source "HuaweiUdpGames.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->cancelAuthorization(Landroid/app/Activity;Lcom/unity/udp/huawei/extension/games/callback/OnCancelAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

.field final synthetic val$onCancelAuthCallback:Lcom/unity/udp/huawei/extension/games/callback/OnCancelAuthCallback;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Lcom/unity/udp/huawei/extension/games/callback/OnCancelAuthCallback;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$6;->this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$6;->val$onCancelAuthCallback:Lcom/unity/udp/huawei/extension/games/callback/OnCancelAuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/huawei/hmf/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$6;->val$onCancelAuthCallback:Lcom/unity/udp/huawei/extension/games/callback/OnCancelAuthCallback;

    invoke-interface {p1}, Lcom/unity/udp/huawei/extension/games/callback/OnCancelAuthCallback;->onSuccess()V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    .line 158
    instance-of v0, p1, Lcom/huawei/hms/common/ApiException;

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rtnCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/huawei/hms/common/ApiException;

    invoke-virtual {v1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Account module,cancelAuthorization failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/unity/udp/extension/sdk/Result;

    invoke-virtual {v1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/unity/udp/extension/sdk/Result;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Lcom/unity/udp/extension/sdk/Result;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/unity/udp/extension/sdk/Result;-><init>(I)V

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$6;->val$onCancelAuthCallback:Lcom/unity/udp/huawei/extension/games/callback/OnCancelAuthCallback;

    invoke-interface {v1, p1, v0}, Lcom/unity/udp/huawei/extension/games/callback/OnCancelAuthCallback;->onFailure(Ljava/lang/Exception;Lcom/unity/udp/extension/sdk/Result;)V

    goto :goto_1

    :cond_2
    const-string p1, "task==null"

    .line 167
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
