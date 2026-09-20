.class public Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;
.super Ljava/lang/Object;
.source "LeaderboardScoreEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field displayRank:Ljava/lang/String;

.field leaderboardDisplayScore:Ljava/lang/String;

.field playerRank:J

.field playerRawScore:J

.field scoreOwnerPlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

.field scoreTag:Ljava/lang/String;

.field scoreTimestamp:J

.field timeSpan:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;
    .locals 1

    .line 153
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;

    invoke-direct {v0, p0}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;-><init>(Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;)V

    return-object v0
.end method

.method public setDisplayRank(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->displayRank:Ljava/lang/String;

    return-object p0
.end method

.method public setLeaderboardDisplayScore(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->leaderboardDisplayScore:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayerRank(J)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;
    .locals 0

    .line 128
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->playerRank:J

    return-object p0
.end method

.method public setPlayerRawScore(J)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->playerRawScore:J

    return-object p0
.end method

.method public setScoreOwnerPlayer(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->scoreOwnerPlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-object p0
.end method

.method public setScoreTag(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->scoreTag:Ljava/lang/String;

    return-object p0
.end method

.method public setScoreTimestamp(J)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;
    .locals 0

    .line 148
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->scoreTimestamp:J

    return-object p0
.end method

.method public setTimeSpan(I)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;
    .locals 0

    .line 123
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->timeSpan:I

    return-object p0
.end method
