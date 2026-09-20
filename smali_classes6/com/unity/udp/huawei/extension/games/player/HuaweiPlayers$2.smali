.class Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$2;
.super Ljava/lang/Object;
.source "HuaweiPlayers.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;->getGamePlayer(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/jos/games/player/Player;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$2;->this$0:Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$2;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/jos/games/player/Player;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$2;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->adapt(Lcom/huawei/hms/jos/games/player/Player;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;->onSuccess(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/huawei/hms/jos/games/player/Player;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$2;->onSuccess(Lcom/huawei/hms/jos/games/player/Player;)V

    return-void
.end method
