.class public final synthetic Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/HomeActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/HomeActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda16;->f$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda16;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda16;->f$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda16;->f$1:Ljava/util/List;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/ui/activity/HomeActivity;->lambda$refreshUI$14$com-tgs-aics-ui-activity-HomeActivity(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
