.class Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$4;
.super Ljava/lang/Object;
.source "HuaweiExtras.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->getGamePlayerStatistics(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$4;->this$0:Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$4;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;)V
    .locals 2

    if-nez p1, :cond_1

    const-string p1, "Extras module, playerStatsAnnotatedData is null, inner error"

    .line 77
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$4;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 79
    invoke-interface {p1, v0}, Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;->onSuccess(Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;)V

    :cond_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$4;->val$callback:Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;

    if-eqz v0, :cond_2

    .line 84
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;->adapt(Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;->onSuccess(Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$4;->onSuccess(Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;)V

    return-void
.end method
