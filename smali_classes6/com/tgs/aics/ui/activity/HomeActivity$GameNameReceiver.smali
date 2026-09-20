.class Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/ui/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GameNameReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 552
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->setAppNameTitle()V

    .line 553
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->access$500(Lcom/tgs/aics/ui/activity/HomeActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->loadBackgroundImage(Landroid/view/ViewGroup;Z)V

    return-void
.end method
