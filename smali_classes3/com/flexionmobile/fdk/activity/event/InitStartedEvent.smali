.class public Lcom/flexionmobile/fdk/activity/event/InitStartedEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/eventbus/Event;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayload()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/flexionmobile/fdk/eventbus/EventType;
    .locals 1

    sget-object v0, Lcom/flexionmobile/fdk/eventbus/EventType;->INIT_STARTED:Lcom/flexionmobile/fdk/eventbus/EventType;

    return-object v0
.end method
