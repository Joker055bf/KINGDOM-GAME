.class public Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;
.super Landroid/app/Activity;


# instance fields
.field private mode:Ljava/lang/String;

.field private start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private sendPurchaseFlowResultEvent(ILandroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/flexionmobile/fdk/eventbus/EventBus;->getInstance()Lcom/flexionmobile/fdk/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flexionmobile/fdk/activity/event/PurchaseFinishedEvent;

    iget-wide v2, p0, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->start:J

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/flexionmobile/fdk/activity/event/PurchaseFinishedEvent;-><init>(JILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/eventbus/EventBus;->post(Lcom/flexionmobile/fdk/eventbus/Event;)V

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->finish()V

    return-void
.end method

.method private sendStartupFlowResultEvent(ILandroid/content/Intent;)V
    .locals 8

    invoke-static {}, Lcom/flexionmobile/fdk/eventbus/EventBus;->getInstance()Lcom/flexionmobile/fdk/eventbus/EventBus;

    move-result-object v0

    new-instance v7, Lcom/flexionmobile/fdk/activity/event/InitFinishedEvent;

    iget-wide v2, p0, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->start:J

    iget-object v4, p0, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->mode:Ljava/lang/String;

    move-object v1, v7

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/flexionmobile/fdk/activity/event/InitFinishedEvent;-><init>(JLjava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v7}, Lcom/flexionmobile/fdk/eventbus/EventBus;->post(Lcom/flexionmobile/fdk/eventbus/Event;)V

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1d6b

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->sendStartupFlowResultEvent(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1ca3

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->sendPurchaseFlowResultEvent(ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "startupFlowStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->start:J

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "startupFlowMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->mode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TARGET_INTENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FDK_REQUEST_CODE"

    const/16 v2, 0x1d6b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
