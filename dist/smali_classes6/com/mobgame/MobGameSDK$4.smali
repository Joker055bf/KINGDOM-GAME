.class Lcom/mobgame/MobGameSDK$4;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK;->dashboardNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/MobGameSDK;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$4;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissDashboard()V
    .locals 3

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mobgame.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "category"

    const-string v2, "float_button"

    .line 521
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
