.class public Lcom/unity/udp/extension/sdk/games/event/UdpEventsImpl;
.super Ljava/lang/Object;
.source "UdpEventsImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventList(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;)V
    .locals 1

    .line 14
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getEventsClient()Lcom/unity/udp/extension/sdk/games/event/UdpEvents;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/event/UdpEvents;->getEventList(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;)V

    return-void
.end method

.method public static getEventListByIds(Landroid/app/Activity;Z[Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;)V
    .locals 1

    .line 18
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getEventsClient()Lcom/unity/udp/extension/sdk/games/event/UdpEvents;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unity/udp/extension/sdk/games/event/UdpEvents;->getEventListByIds(Landroid/app/Activity;Z[Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;)V

    return-void
.end method

.method public static increment(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .line 10
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getEventsClient()Lcom/unity/udp/extension/sdk/games/event/UdpEvents;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/event/UdpEvents;->increment(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method
