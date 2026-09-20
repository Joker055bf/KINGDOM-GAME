.class public Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;
.super Ljava/lang/Object;
.source "GameEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/GameEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field achievementTotalCount:I

.field applicationId:Ljava/lang/String;

.field description:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field hiResImageUri:Landroid/net/Uri;

.field iconImageUri:Landroid/net/Uri;

.field leaderboardCount:I

.field primaryCategory:Ljava/lang/String;

.field secondaryCategory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unity/udp/extension/sdk/games/entity/GameEntity;
    .locals 1

    .line 168
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    invoke-direct {v0, p0}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;-><init>(Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;)V

    return-object v0
.end method

.method public setAchievementTotalCount(I)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;
    .locals 0

    .line 123
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->achievementTotalCount:I

    return-object p0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setHiResImageUri(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->hiResImageUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setIconImageUri(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->iconImageUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setLeaderboardCount(I)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;
    .locals 0

    .line 153
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->leaderboardCount:I

    return-object p0
.end method

.method public setPrimaryCategory(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->primaryCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setSecondaryCategory(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->secondaryCategory:Ljava/lang/String;

    return-object p0
.end method
