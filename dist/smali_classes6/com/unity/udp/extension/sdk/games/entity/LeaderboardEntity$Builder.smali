.class public Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;
.super Ljava/lang/Object;
.source "LeaderboardEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field leaderboardDisplayName:Ljava/lang/String;

.field leaderboardId:Ljava/lang/String;

.field leaderboardImageUri:Landroid/net/Uri;

.field leaderboardScoreOrder:I

.field leaderboardVariants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboardVariant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;
    .locals 1

    .line 117
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;

    invoke-direct {v0, p0}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;-><init>(Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;)V

    return-object v0
.end method

.method public setLeaderboardDisplayName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->leaderboardDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public setLeaderboardId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->leaderboardId:Ljava/lang/String;

    return-object p0
.end method

.method public setLeaderboardImageUri(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->leaderboardImageUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setLeaderboardScoreOrder(I)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;
    .locals 0

    .line 107
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->leaderboardScoreOrder:I

    return-object p0
.end method

.method public setLeaderboardVariants(Ljava/util/ArrayList;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboardVariant;",
            ">;)",
            "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->leaderboardVariants:Ljava/util/ArrayList;

    return-object p0
.end method
