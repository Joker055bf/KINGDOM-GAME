.class public Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
.super Ljava/lang/Object;
.source "AchievementEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field achievementId:Ljava/lang/String;

.field currentSteps:I

.field description:Ljava/lang/String;

.field gamePlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

.field lastUpdatedTimestamp:J

.field localeAllSteps:Ljava/lang/String;

.field localeReachedSteps:Ljava/lang/String;

.field name:Ljava/lang/String;

.field revealedImageUrl:Landroid/net/Uri;

.field state:I

.field totalSteps:I

.field type:I

.field unlockedImageUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;
    .locals 1

    .line 174
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;

    invoke-direct {v0, p0}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;-><init>(Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;)V

    return-object v0
.end method

.method public setAchievementId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->achievementId:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentSteps(I)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 144
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->currentSteps:I

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setGamePlayer(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->gamePlayer:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-object p0
.end method

.method public setLastUpdatedTimestamp(J)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 154
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->lastUpdatedTimestamp:J

    return-object p0
.end method

.method public setLocaleAllSteps(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->localeAllSteps:Ljava/lang/String;

    return-object p0
.end method

.method public setLocaleReachedSteps(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->localeReachedSteps:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setRevealedImageUrl(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->revealedImageUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public setState(I)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 149
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->state:I

    return-object p0
.end method

.method public setTotalSteps(I)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 139
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->totalSteps:I

    return-object p0
.end method

.method public setType(I)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 114
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->type:I

    return-object p0
.end method

.method public setUnlockedImageUrl(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->unlockedImageUrl:Landroid/net/Uri;

    return-object p0
.end method
