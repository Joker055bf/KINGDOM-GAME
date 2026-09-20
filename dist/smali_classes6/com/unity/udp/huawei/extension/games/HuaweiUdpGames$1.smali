.class Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$1;
.super Ljava/lang/Object;
.source "HuaweiUdpGames.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->login(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
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

    .line 58
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$1;->this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$1;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$1;->this$0:Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;

    iget-object p2, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$1;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    invoke-static {p1, p2, p3, v0}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->access$000(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Landroid/app/Activity;Landroid/content/Intent;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "login failed, unknown requestCode in onActivityResult"

    .line 64
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$1;->val$callback:Lcom/unity/udp/extension/sdk/games/LoginCallback;

    if-eqz p1, :cond_1

    .line 66
    new-instance p2, Lcom/unity/udp/extension/sdk/Result;

    const/4 p3, -0x1

    const-string v0, "unknown requestCode in onActivityResult"

    invoke-direct {p2, p3, v0}, Lcom/unity/udp/extension/sdk/Result;-><init>(ILjava/lang/String;)V

    const/4 p3, 0x0

    invoke-interface {p1, p3, p2}, Lcom/unity/udp/extension/sdk/games/LoginCallback;->onFailure(Ljava/lang/Exception;Lcom/unity/udp/extension/sdk/Result;)V

    :cond_1
    :goto_0
    return-void
.end method
