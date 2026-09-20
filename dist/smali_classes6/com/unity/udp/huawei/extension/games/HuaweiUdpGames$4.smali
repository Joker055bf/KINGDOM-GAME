.class Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$4;
.super Ljava/lang/Object;
.source "HuaweiUdpGames.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->signOut(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$4;->this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$4;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$4;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    const-string p1, "login, signOut success."

    .line 117
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$4;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    if-eqz p1, :cond_0

    .line 119
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->clearAuthParams()V

    .line 120
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$4;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    invoke-interface {p1}, Lcom/unity/udp/extension/sdk/games/LoginCallback;->onSignOut()V

    :cond_0
    return-void
.end method
