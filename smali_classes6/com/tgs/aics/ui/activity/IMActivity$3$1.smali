.class Lcom/tgs/aics/ui/activity/IMActivity$3$1;
.super Ljava/lang/Object;
.source "IMActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/IMActivity$3;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tgs/aics/ui/activity/IMActivity$3;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity$3;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$3$1;->this$1:Lcom/tgs/aics/ui/activity/IMActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 272
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$3$1;->this$1:Lcom/tgs/aics/ui/activity/IMActivity$3;

    iget-object p1, p1, Lcom/tgs/aics/ui/activity/IMActivity$3;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/IMActivity;->access$100(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
