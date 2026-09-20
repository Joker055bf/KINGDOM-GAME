.class Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$2;
.super Ljava/lang/Object;
.source "RedemptionCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$2;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$2;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$000(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$2;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    const-string v1, "tgs_aics_redemption_placeholder"

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$2;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-static {p1, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$100(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Ljava/lang/String;)V

    return-void
.end method
