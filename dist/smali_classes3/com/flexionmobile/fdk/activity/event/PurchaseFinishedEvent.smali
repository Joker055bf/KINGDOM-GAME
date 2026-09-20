.class public Lcom/flexionmobile/fdk/activity/event/PurchaseFinishedEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/eventbus/Event;


# instance fields
.field private final additionalExtras:Landroid/os/Bundle;

.field private final resultCode:I

.field private final start:J


# direct methods
.method public constructor <init>(JILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/flexionmobile/fdk/activity/event/PurchaseFinishedEvent;->start:J

    iput p3, p0, Lcom/flexionmobile/fdk/activity/event/PurchaseFinishedEvent;->resultCode:I

    iput-object p4, p0, Lcom/flexionmobile/fdk/activity/event/PurchaseFinishedEvent;->additionalExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getPayload()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "startupFlowStarted"

    iget-wide v2, p0, Lcom/flexionmobile/fdk/activity/event/PurchaseFinishedEvent;->start:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "testPurchaseFlowResultCode"

    iget v2, p0, Lcom/flexionmobile/fdk/activity/event/PurchaseFinishedEvent;->resultCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/flexionmobile/fdk/activity/event/PurchaseFinishedEvent;->additionalExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getType()Lcom/flexionmobile/fdk/eventbus/EventType;
    .locals 1

    sget-object v0, Lcom/flexionmobile/fdk/eventbus/EventType;->PURCHASE_FINISHED:Lcom/flexionmobile/fdk/eventbus/EventType;

    return-object v0
.end method
