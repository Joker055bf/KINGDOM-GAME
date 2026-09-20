.class public Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;
.super Ljava/lang/Object;
.source "ScoreSubmissionResultAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;",
        "Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;
    .locals 1

    .line 15
    sget-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;

    .line 18
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;)Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_0
    new-instance v6, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;

    iget-wide v1, p1, Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;->playerRawScore:J

    iget-object v3, p1, Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;->displayScore:Ljava/lang/String;

    iget-object v4, p1, Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;->scoreTips:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;->isBest:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionResultAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo$Result;)Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity$Result;

    move-result-object p1

    return-object p1
.end method
