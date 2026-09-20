.class public Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;
.super Ljava/lang/Object;
.source "LeaderboardVariantEntity.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboardVariant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;
    }
.end annotation


# instance fields
.field private displayPlayerRank:Ljava/lang/String;

.field private displayPlayerScore:Ljava/lang/String;

.field private hasPlayerInfo:Z

.field private numScores:J

.field private playerInfo:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

.field private playerRank:J

.field private playerScoreTag:Ljava/lang/String;

.field private rawPlayerScore:J

.field private timeSpan:I


# direct methods
.method public constructor <init>(Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->displayPlayerScore:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->displayPlayerScore:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->displayPlayerRank:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->displayPlayerRank:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->playerScoreTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->playerScoreTag:Ljava/lang/String;

    .line 21
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->numScores:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->numScores:J

    .line 22
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->playerRank:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->playerRank:J

    .line 23
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->rawPlayerScore:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->rawPlayerScore:J

    .line 24
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->timeSpan:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->timeSpan:I

    .line 25
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->playerInfo:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->playerInfo:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    .line 26
    iget-boolean p1, p1, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->hasPlayerInfo:Z

    iput-boolean p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->hasPlayerInfo:Z

    return-void
.end method


# virtual methods
.method public getDisplayPlayerRank()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->displayPlayerRank:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayPlayerScore()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->displayPlayerScore:Ljava/lang/String;

    return-object v0
.end method

.method public getNumScores()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->numScores:J

    return-wide v0
.end method

.method public getPlayerRank()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->playerRank:J

    return-wide v0
.end method

.method public getPlayerScoreTag()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->playerScoreTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPlayerScore()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->rawPlayerScore:J

    return-wide v0
.end method

.method public getTimeSpan()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->timeSpan:I

    return v0
.end method

.method public hasPlayerInfo()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;->hasPlayerInfo:Z

    return v0
.end method
