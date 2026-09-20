.class Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$11;
.super Ljava/lang/Object;
.source "HuaweiPlayers.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;->savePlayerInfo(Landroid/app/Activity;Lcom/huawei/hms/jos/games/AppPlayerInfo;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSavePlayerInfo;)V
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
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;

.field final synthetic val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSavePlayerInfo;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSavePlayerInfo;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$11;->this$0:Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$11;->val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSavePlayerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 170
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$11;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$11;->val$callback:Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSavePlayerInfo;

    if-eqz p1, :cond_0

    .line 174
    invoke-interface {p1}, Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSavePlayerInfo;->onSuccess()V

    :cond_0
    return-void
.end method
