.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda11;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda11;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$initView$2$com-tgs-aics-ui-activity-IMActivity(Ljava/util/List;)V

    return-void
.end method
