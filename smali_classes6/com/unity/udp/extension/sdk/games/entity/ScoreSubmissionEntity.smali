.class public Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;
.super Ljava/lang/Object;
.source "ScoreSubmissionEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;
    }
.end annotation


# instance fields
.field private leaderboardId:Ljava/lang/String;

.field private playerId:Ljava/lang/String;

.field private scoreResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeaderboardId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;->leaderboardId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;->playerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getScoreResult(I)Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;->scoreResults:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;

    return-object p1
.end method

.method public setLeaderboardId(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;->leaderboardId:Ljava/lang/String;

    return-void
.end method

.method public setPlayerId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;->playerId:Ljava/lang/String;

    return-void
.end method

.method public setScoreResults(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;->scoreResults:Ljava/util/HashMap;

    return-void
.end method
