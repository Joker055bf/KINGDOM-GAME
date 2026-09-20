.class public final synthetic Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;[Z[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda46;->f$0:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda46;->f$1:[Z

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda46;->f$2:[I

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda46;->f$0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda46;->f$1:[Z

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda46;->f$2:[I

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/ui/activity/IMActivity;->lambda$initView$10(Landroid/widget/LinearLayout;[Z[I)V

    return-void
.end method
