.class Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$6;
.super Ljava/lang/Object;
.source "HuaweiExtras.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->getGame(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/jos/games/gamesummary/GameSummary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$6;->this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$6;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/jos/games/gamesummary/GameSummary;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$6;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;->adapt(Lcom/huawei/hms/jos/games/gamesummary/GameSummary;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;->onSuccess(Lcom/unity/udp/extension/sdk/games/entity/GameEntity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Lcom/huawei/hms/jos/games/gamesummary/GameSummary;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$6;->onSuccess(Lcom/huawei/hms/jos/games/gamesummary/GameSummary;)V

    return-void
.end method
