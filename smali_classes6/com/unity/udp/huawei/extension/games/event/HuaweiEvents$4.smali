.class Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$4;
.super Ljava/lang/Object;
.source "HuaweiEvents.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents;->getEventListByIds(Landroid/app/Activity;Z[Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Ljava/util/List<",
        "Lcom/huawei/hms/jos/games/event/Event;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents;Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$4;->this$0:Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$4;->val$callback:Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$4;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/jos/games/event/Event;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const-string p1, "Event module, event is null"

    .line 99
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logWarn(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$4;->val$callback:Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;

    if-eqz p1, :cond_0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;->onSuccess(Ljava/util/List;)V

    :cond_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/jos/games/event/Event;

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Event module, event id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/huawei/hms/jos/games/event/Event;->getEventId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/event/EventAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/event/EventAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/unity/udp/huawei/extension/games/event/EventAdapter;->adapt(Lcom/huawei/hms/jos/games/event/Event;)Lcom/unity/udp/extension/sdk/games/entity/EventEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/event/HuaweiEvents$4;->val$callback:Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;

    if-eqz p1, :cond_3

    .line 111
    invoke-interface {p1, v0}, Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;->onSuccess(Ljava/util/List;)V

    :cond_3
    return-void
.end method
