.class public Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;
.super Ljava/lang/Object;
.source "EventEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/EventEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field eventId:Ljava/lang/String;

.field isVisible:Z

.field localeValue:Ljava/lang/String;

.field name:Ljava/lang/String;

.field playerEntity:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

.field thumbnailUri:Landroid/net/Uri;

.field value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unity/udp/extension/sdk/games/entity/EventEntity;
    .locals 1

    .line 156
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;

    invoke-direct {v0, p0}, Lcom/unity/udp/extension/sdk/games/entity/EventEntity;-><init>(Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;)V

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setEventId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public setLocaleValue(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->localeValue:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayerEntity(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->playerEntity:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-object p0
.end method

.method public setThumbnailUri(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->thumbnailUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setValue(J)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;
    .locals 0

    .line 136
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->value:J

    return-object p0
.end method

.method public setVisible(Z)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->isVisible:Z

    return-object p0
.end method
