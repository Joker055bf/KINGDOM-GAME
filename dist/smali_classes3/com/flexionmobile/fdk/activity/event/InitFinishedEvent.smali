.class public Lcom/flexionmobile/fdk/activity/event/InitFinishedEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/eventbus/Event;


# instance fields
.field private final additionalData:Landroid/content/Intent;

.field private final mode:Ljava/lang/String;

.field private final resultCode:I

.field private final start:J


# direct methods
.method public constructor <init>(JLjava/lang/String;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/flexionmobile/fdk/activity/event/InitFinishedEvent;->start:J

    iput-object p3, p0, Lcom/flexionmobile/fdk/activity/event/InitFinishedEvent;->mode:Ljava/lang/String;

    iput p4, p0, Lcom/flexionmobile/fdk/activity/event/InitFinishedEvent;->resultCode:I

    iput-object p5, p0, Lcom/flexionmobile/fdk/activity/event/InitFinishedEvent;->additionalData:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getPayload()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "startupFlowStarted"

    iget-wide v2, p0, Lcom/flexionmobile/fdk/activity/event/InitFinishedEvent;->start:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "startupFlowMode"

    iget-object v2, p0, Lcom/flexionmobile/fdk/activity/event/InitFinishedEvent;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "startupFlowResultCode"

    iget v2, p0, Lcom/flexionmobile/fdk/activity/event/InitFinishedEvent;->resultCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/flexionmobile/fdk/activity/event/InitFinishedEvent;->additionalData:Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flexionmobile/fdk/activity/event/InitFinishedEvent;->additionalData:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public getType()Lcom/flexionmobile/fdk/eventbus/EventType;
    .locals 1

    sget-object v0, Lcom/flexionmobile/fdk/eventbus/EventType;->INIT_FINISHED:Lcom/flexionmobile/fdk/eventbus/EventType;

    return-object v0
.end method
