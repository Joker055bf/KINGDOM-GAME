.class Lcom/tgs/aics/ui/activity/RechargeRecordActivity$2;
.super Landroid/text/style/ClickableSpan;
.source "RechargeRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->setLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

.field final synthetic val$urlSpan:Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;Landroid/text/style/URLSpan;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$2;->this$0:Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$2;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 182
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$2;->this$0:Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$2;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->handleUrlAction(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
