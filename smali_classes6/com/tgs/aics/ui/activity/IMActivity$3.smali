.class Lcom/tgs/aics/ui/activity/IMActivity$3;
.super Ljava/lang/Object;
.source "IMActivity.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/IMActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/IMActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$3;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 261
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$3;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p2, p1}, Lcom/tgs/aics/utils/Utils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 262
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$3;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/IMActivity;->access$100(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$3;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/IMActivity;->access$100(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 263
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$3;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/IMActivity;->access$200(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    .line 264
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$3;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/IMActivity;->access$100(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 265
    new-instance p2, Lcom/tgs/aics/ui/activity/IMActivity$3$1;

    invoke-direct {p2, p0}, Lcom/tgs/aics/ui/activity/IMActivity$3$1;-><init>(Lcom/tgs/aics/ui/activity/IMActivity$3;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
