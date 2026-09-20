.class Lcom/tgs/aics/ui/activity/FAQListActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "FAQListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/FAQListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/FAQListActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/FAQListActivity;Z)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FAQListActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQListActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQListActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQListActivity;

    const/4 v1, -0x1

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->access$000(Lcom/tgs/aics/ui/activity/FAQListActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/activity/FAQListActivity;->setResult(ILandroid/content/Intent;)V

    .line 33
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQListActivity$1;->this$0:Lcom/tgs/aics/ui/activity/FAQListActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->finish()V

    return-void
.end method
