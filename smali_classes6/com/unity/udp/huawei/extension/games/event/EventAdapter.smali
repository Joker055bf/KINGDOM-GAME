.class public Lcom/unity/udp/huawei/extension/games/event/EventAdapter;
.super Ljava/lang/Object;
.source "EventAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/event/Event;",
        "Lcom/unity/udp/extension/sdk/games/entity/EventEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/event/EventAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/event/EventAdapter;
    .locals 1

    .line 17
    sget-object v0, Lcom/unity/udp/huawei/extension/games/event/EventAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/event/EventAdapter;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/unity/udp/huawei/extension/games/event/EventAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/event/EventAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/event/EventAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/event/EventAdapter;

    .line 20
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/event/EventAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/event/EventAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/event/Event;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "event == null"

    .line 26
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_0
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/event/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->setEventId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/event/Event;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->setName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/event/Event;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->setDescription(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/event/Event;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->setThumbnailUri(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/event/Event;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->setValue(J)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/event/Event;->getLocaleValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->setLocaleValue(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/event/Event;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->setVisible(Z)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/event/Event;->getGamePlayer()Lcom/huawei/hms/jos/games/player/Player;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->adapt(Lcom/huawei/hms/jos/games/player/Player;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->setPlayerEntity(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/EventEntity$Builder;->build()Lcom/unity/udp/extension/sdk/games/entity/EventEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lcom/huawei/hms/jos/games/event/Event;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/event/EventAdapter;->adapt(Lcom/huawei/hms/jos/games/event/Event;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity;

    move-result-object p1

    return-object p1
.end method
