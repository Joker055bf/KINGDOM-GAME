.class Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;
.super Ljava/lang/Object;
.source "RedemptionCodeActivity.java"

# interfaces
.implements Lcom/tgs/aics/listener/IHttpRspDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->requestPageData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tgs/aics/listener/IHttpRspDataListener<",
        "Lcom/tgs/aics/bean/RedemptionCodePageBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/tgs/aics/bean/BaseDataBean;)V
    .locals 0

    .line 106
    check-cast p1, Lcom/tgs/aics/bean/RedemptionCodePageBean;

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;->onResult(Lcom/tgs/aics/bean/RedemptionCodePageBean;)V

    return-void
.end method

.method public onResult(Lcom/tgs/aics/bean/RedemptionCodePageBean;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    new-instance v1, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3$1;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3$1;-><init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;Lcom/tgs/aics/bean/RedemptionCodePageBean;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
