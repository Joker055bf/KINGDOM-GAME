.class Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$2;
.super Ljava/lang/Object;
.source "HuaweiUdpGames.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->silentSignIn(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/support/account/result/AuthAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$2;->this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$2;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/support/account/result/AuthAccount;)V
    .locals 2

    const-string v0, "login, silentSignIn success."

    .line 84
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->updateStoreSignInAccount(Lcom/huawei/hms/support/account/result/AuthAccount;)V

    .line 86
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$2;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;->adapt(Lcom/huawei/hms/support/account/result/AuthAccount;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/LoginCallback;->onSuccess(Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Lcom/huawei/hms/support/account/result/AuthAccount;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$2;->onSuccess(Lcom/huawei/hms/support/account/result/AuthAccount;)V

    return-void
.end method
