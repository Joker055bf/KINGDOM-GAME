.class Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FormCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/ui/activity/FormCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GameNameReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 869
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->access$400(Lcom/tgs/aics/ui/activity/FormCreateActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->loadBackgroundImage(Landroid/view/ViewGroup;Z)V

    return-void
.end method
