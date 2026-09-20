.class Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$7;
.super Ljava/lang/Object;
.source "HuaweiPlayers.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;->getPlayerExtraInfo(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnPlayerExtraInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/jos/games/player/PlayerExtraInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;

.field final synthetic val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnPlayerExtraInfo;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnPlayerExtraInfo;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$7;->this$0:Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$7;->val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnPlayerExtraInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/jos/games/player/PlayerExtraInfo;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$7;->val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnPlayerExtraInfo;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p1}, Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnPlayerExtraInfo;->onSuccess(Lcom/huawei/hms/jos/games/player/PlayerExtraInfo;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/huawei/hms/jos/games/player/PlayerExtraInfo;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$7;->onSuccess(Lcom/huawei/hms/jos/games/player/PlayerExtraInfo;)V

    return-void
.end method
