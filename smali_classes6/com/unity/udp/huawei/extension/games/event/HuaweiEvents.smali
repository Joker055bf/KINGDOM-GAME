.class public Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents;
.super Ljava/lang/Object;
.source "HuaweiEvents.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/games/event/UdpEvents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventList(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;)V
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getEventsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/EventsClient;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/EventsClient;->getEventList(Z)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$2;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$2;-><init>(Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents;Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$1;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$1;-><init>(Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents;Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;)V

    .line 66
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getEventListByIds(Landroid/app/Activity;Z[Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;)V
    .locals 0

    .line 94
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getEventsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/EventsClient;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/jos/games/EventsClient;->getEventListByIds(Z[Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$4;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$4;-><init>(Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents;Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$3;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$3;-><init>(Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents;Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;)V

    .line 114
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public increment(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    .line 35
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getEventsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/EventsClient;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/jos/games/EventsClient;->grow(Ljava/lang/String;I)V

    return-void
.end method
