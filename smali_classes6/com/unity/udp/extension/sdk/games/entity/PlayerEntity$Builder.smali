.class public Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
.super Ljava/lang/Object;
.source "PlayerEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field accessToken:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field hiResImageUri:Landroid/net/Uri;

.field iconImageUri:Landroid/net/Uri;

.field level:I

.field openId:Ljava/lang/String;

.field openIdSign:Ljava/lang/String;

.field playerId:Ljava/lang/String;

.field playerSign:Ljava/lang/String;

.field signTimestamp:Ljava/lang/String;

.field unionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;
    .locals 1

    .line 199
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    invoke-direct {v0, p0}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;-><init>(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;)V

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setHiResImageUri(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->hiResImageUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setIconImageUri(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->iconImageUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setLevel(I)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
    .locals 0

    .line 173
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->level:I

    return-object p0
.end method

.method public setOpenId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->openId:Ljava/lang/String;

    return-object p0
.end method

.method public setOpenIdSign(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->openIdSign:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayerId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->playerId:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayerSign(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->playerSign:Ljava/lang/String;

    return-object p0
.end method

.method public setSignTimestamp(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->signTimestamp:Ljava/lang/String;

    return-object p0
.end method

.method public setUnionId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->unionId:Ljava/lang/String;

    return-object p0
.end method
