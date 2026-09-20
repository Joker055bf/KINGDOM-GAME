.class public Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;
.super Ljava/lang/Object;
.source "PlayerStatisticsAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;",
        "Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;
    .locals 1

    .line 15
    sget-object v0, Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;

    .line 18
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_0
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;->getAverageOnLineMinutes()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->setAverageSessionLength(F)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;->getDaysFromLastGame()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->setDaysSinceLastPlayed(I)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;->getPaymentTimes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->setNumberOfPurchases(I)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;->getOnlineTimes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->setNumberOfSessions(I)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;->getTotalPurchasesAmountRange()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->setTotalPurchasesAmountRange(I)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->build()Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/PlayerStatisticsAdapter;->adapt(Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatistics;)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;

    move-result-object p1

    return-object p1
.end method
