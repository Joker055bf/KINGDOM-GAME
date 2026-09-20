.class Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FAQDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/ui/activity/FAQDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GameNameReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 258
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;->this$0:Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->access$400(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->loadBackgroundImage(Landroid/view/ViewGroup;Z)V

    return-void
.end method
