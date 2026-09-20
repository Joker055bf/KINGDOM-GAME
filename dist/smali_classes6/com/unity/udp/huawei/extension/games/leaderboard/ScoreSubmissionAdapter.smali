.class public Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;
.super Ljava/lang/Object;
.source "ScoreSubmissionAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;",
        "Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;
    .locals 1

    .line 18
    sget-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;

    .line 21
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;)Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;
    .locals 5

    .line 26
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;->getRankingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;->setLeaderboardId(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;->setPlayerId(Ljava/lang/String;)V

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;->getSubmissionScoreResult(I)Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;)Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;->getSubmissionScoreResult(I)Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;)Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;->getSubmissionScoreResult(I)Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;)Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;->setScoreResults(Ljava/util/HashMap;)V

    return-object v0
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;)Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;

    move-result-object p1

    return-object p1
.end method
