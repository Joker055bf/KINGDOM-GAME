.class public Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;
.super Ljava/lang/Object;
.source "PlayerAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/player/Player;",
        "Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;
    .locals 1

    .line 20
    sget-object v0, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;

    .line 23
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/player/Player;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "player == null"

    .line 29
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_0
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/player/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->setDisplayName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/player/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->setHiResImageUri(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/player/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->setIconImageUri(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/player/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->setPlayerId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/player/Player;->getPlayerSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->setPlayerSign(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/player/Player;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->setLevel(I)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/player/Player;->getSignTs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->setSignTimestamp(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/player/Player;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->setOpenId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/player/Player;->getUnionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->setUnionId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/player/Player;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->setAccessToken(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/player/Player;->getOpenIdSign()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->setOpenIdSign(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity$Builder;->build()Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lcom/huawei/hms/jos/games/player/Player;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->adapt(Lcom/huawei/hms/jos/games/player/Player;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    move-result-object p1

    return-object p1
.end method

.method public getJSONStr(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 51
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "displayName"

    .line 53
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hiResImageUri"

    .line 54
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "iconImageUri"

    .line 55
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerId"

    .line 56
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signTs"

    .line 57
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->getSignTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerSign"

    .line 58
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->getPlayerSign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerLevel"

    .line 59
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->getLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "openId"

    .line 60
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "unionId"

    .line 61
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->getUnionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accessToken"

    .line 62
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "openIdSign"

    .line 63
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;->getOpenIdSign()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "Player JSONException"

    .line 66
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    .line 68
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
