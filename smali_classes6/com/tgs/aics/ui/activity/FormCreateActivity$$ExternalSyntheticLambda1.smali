.class public final synthetic Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimePickedListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

.field public final synthetic f$1:Lcom/tgs/aics/bean/FormListBean$Item;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/tgs/aics/bean/FormListBean$Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda1;->f$1:Lcom/tgs/aics/bean/FormListBean$Item;

    return-void
.end method


# virtual methods
.method public final onDatimePicked(IIIIII)V
    .locals 8

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda1;->f$1:Lcom/tgs/aics/bean/FormListBean$Item;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->lambda$showDatimePickerDialog$25$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/bean/FormListBean$Item;IIIIII)V

    return-void
.end method
