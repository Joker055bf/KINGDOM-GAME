.class public final synthetic Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatePickedListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

.field public final synthetic f$1:Lcom/tgs/aics/bean/FormListBean$Item;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/tgs/aics/bean/FormListBean$Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda25;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda25;->f$1:Lcom/tgs/aics/bean/FormListBean$Item;

    return-void
.end method


# virtual methods
.method public final onDatePicked(III)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda25;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda25;->f$1:Lcom/tgs/aics/bean/FormListBean$Item;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->lambda$showDatePickerDialog$24$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/bean/FormListBean$Item;III)V

    return-void
.end method
