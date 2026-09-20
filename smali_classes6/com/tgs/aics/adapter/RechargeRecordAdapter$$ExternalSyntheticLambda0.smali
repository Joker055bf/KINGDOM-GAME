.class public final synthetic Lcom/tgs/aics/adapter/RechargeRecordAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/RechargeRecordAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/RechargeRecordAdapter;Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/adapter/RechargeRecordAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/adapter/RechargeRecordAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    invoke-virtual {v0, v1, p1}, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->lambda$getView$0$com-tgs-aics-adapter-RechargeRecordAdapter(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;Landroid/view/View;)V

    return-void
.end method
