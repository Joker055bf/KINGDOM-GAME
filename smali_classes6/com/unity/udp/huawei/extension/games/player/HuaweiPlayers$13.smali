.class Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$13;
.super Ljava/lang/Object;
.source "HuaweiPlayers.java"

# interfaces
.implements Lcom/huawei/hms/jos/games/player/GameTrialProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;->setGameTrialProcess(Landroid/app/Activity;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnGameTrialProcess;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;

.field final synthetic val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnGameTrialProcess;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnGameTrialProcess;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$13;->this$0:Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$13;->val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnGameTrialProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckRealNameResult(Z)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$13;->val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnGameTrialProcess;

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0, p1}, Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnGameTrialProcess;->onCheckRealNameResult(Z)V

    :cond_0
    return-void
.end method

.method public onTrialTimeout()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$13;->val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnGameTrialProcess;

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0}, Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnGameTrialProcess;->onTrialTimeout()V

    :cond_0
    return-void
.end method
