.class Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$5;
.super Ljava/lang/Object;
.source "HuaweiPlayers.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;->submitPlayerEvent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSubmitPlayerEvent;)V
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

.field final synthetic val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSubmitPlayerEvent;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSubmitPlayerEvent;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$5;->this$0:Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$5;->val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSubmitPlayerEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$5;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$5;->val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSubmitPlayerEvent;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p1}, Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSubmitPlayerEvent;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
