.class Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$9;
.super Ljava/lang/Object;
.source "HuaweiPlayers.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;->getCachePlayerId(Landroid/app/Activity;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnCachePlayerId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;

.field final synthetic val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnCachePlayerId;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnCachePlayerId;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$9;->this$0:Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$9;->val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnCachePlayerId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$9;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$9;->val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnCachePlayerId;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1}, Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnCachePlayerId;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
