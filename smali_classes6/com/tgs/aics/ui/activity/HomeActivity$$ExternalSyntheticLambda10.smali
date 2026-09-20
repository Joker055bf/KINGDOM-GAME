.class public final synthetic Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/HomeActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/HomeActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda10;->f$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    iput p2, p0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda10;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda10;->f$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    iget v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda10;->f$1:I

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/activity/HomeActivity;->lambda$dealUnreadMessageTextView$11$com-tgs-aics-ui-activity-HomeActivity(I)V

    return-void
.end method
