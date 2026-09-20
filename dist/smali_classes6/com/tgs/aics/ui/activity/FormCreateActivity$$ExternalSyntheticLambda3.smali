.class public final synthetic Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

.field public final synthetic f$1:Lcom/ypx/imagepicker/bean/ImageItem;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/tgs/aics/ui/dialog/LoadingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/ypx/imagepicker/bean/ImageItem;ILcom/tgs/aics/ui/dialog/LoadingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda3;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda3;->f$1:Lcom/ypx/imagepicker/bean/ImageItem;

    iput p3, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda3;->f$3:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda3;->f$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda3;->f$1:Lcom/ypx/imagepicker/bean/ImageItem;

    iget v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda3;->f$3:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->lambda$preSubmitFormData$13$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/ypx/imagepicker/bean/ImageItem;ILcom/tgs/aics/ui/dialog/LoadingDialog;)V

    return-void
.end method
