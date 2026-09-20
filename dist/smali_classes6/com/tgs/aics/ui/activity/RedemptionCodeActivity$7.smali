.class Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;
.super Ljava/lang/Object;
.source "RedemptionCodeActivity.java"

# interfaces
.implements Lcom/tgs/aics/listener/IHttpRspDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->doExchange(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tgs/aics/listener/IHttpRspDataListener<",
        "Lcom/tgs/aics/bean/BaseDataBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

.field final synthetic val$loadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Lcom/tgs/aics/ui/dialog/LoadingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;->val$loadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onResult$0$com-tgs-aics-ui-activity-RedemptionCodeActivity$7(Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/BaseDataBean;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V

    if-nez p2, :cond_1

    .line 251
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    const-string p2, "tgs_aics_network_error_retry_later"

    invoke-virtual {p1, p2}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 252
    :cond_1
    invoke-virtual {p2}, Lcom/tgs/aics/bean/BaseDataBean;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 253
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    const-string p2, "tgs_aics_redemption_succeed"

    invoke-virtual {p1, p2}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->finish()V

    goto :goto_1

    .line 256
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    iget-object v0, p2, Lcom/tgs/aics/bean/BaseDataBean;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p2, Lcom/tgs/aics/bean/BaseDataBean;->errorMsg:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p2, p2, Lcom/tgs/aics/bean/BaseDataBean;->message:Ljava/lang/String;

    :goto_0
    invoke-static {p1, p2}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onResult(Lcom/tgs/aics/bean/BaseDataBean;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;->val$loadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    new-instance v2, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/BaseDataBean;)V

    invoke-virtual {v0, v2}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
