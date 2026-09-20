.class public Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;
.super Ljava/lang/Object;
.source "PlayerStatisticsEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field averageSessionLength:F

.field daysSinceLastPlayed:I

.field numberOfPurchases:I

.field numberOfSessions:I

.field totalPurchasesAmountRange:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;
    .locals 1

    .line 111
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;

    invoke-direct {v0, p0}, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity;-><init>(Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;)V

    return-object v0
.end method

.method public setAverageSessionLength(F)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;
    .locals 0

    .line 86
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->averageSessionLength:F

    return-object p0
.end method

.method public setDaysSinceLastPlayed(I)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;
    .locals 0

    .line 91
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->daysSinceLastPlayed:I

    return-object p0
.end method

.method public setNumberOfPurchases(I)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;
    .locals 0

    .line 101
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->numberOfPurchases:I

    return-object p0
.end method

.method public setNumberOfSessions(I)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;
    .locals 0

    .line 96
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->numberOfSessions:I

    return-object p0
.end method

.method public setTotalPurchasesAmountRange(I)Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;
    .locals 0

    .line 106
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerStatisticsEntity$Builder;->totalPurchasesAmountRange:I

    return-object p0
.end method
