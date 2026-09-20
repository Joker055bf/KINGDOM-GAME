.class public Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;
.super Ljava/lang/Object;
.source "LeaderboardVariantEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field displayPlayerRank:Ljava/lang/String;

.field displayPlayerScore:Ljava/lang/String;

.field hasPlayerInfo:Z

.field numScores:J

.field playerInfo:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

.field playerRank:J

.field playerScoreTag:Ljava/lang/String;

.field rawPlayerScore:J

.field timeSpan:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;
    .locals 1

    .line 126
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;

    invoke-direct {v0, p0}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;-><init>(Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;)V

    return-object v0
.end method

.method public hasPlayerInfo(Z)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->hasPlayerInfo:Z

    return-object p0
.end method

.method public setDisplayPlayerRank(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->displayPlayerRank:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayPlayerScore(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->displayPlayerScore:Ljava/lang/String;

    return-object p0
.end method

.method public setNumScores(J)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;
    .locals 0

    .line 96
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->numScores:J

    return-object p0
.end method

.method public setPlayerInfo(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->playerInfo:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-object p0
.end method

.method public setPlayerRank(J)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->playerRank:J

    return-object p0
.end method

.method public setPlayerScoreTag(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->playerScoreTag:Ljava/lang/String;

    return-object p0
.end method

.method public setRawPlayerScore(J)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;
    .locals 0

    .line 106
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->rawPlayerScore:J

    return-object p0
.end method

.method public setTimeSpan(I)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;
    .locals 0

    .line 111
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->timeSpan:I

    return-object p0
.end method
