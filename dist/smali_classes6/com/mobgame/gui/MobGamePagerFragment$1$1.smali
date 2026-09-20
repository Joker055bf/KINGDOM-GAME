.class Lcom/mobgame/gui/MobGamePagerFragment$1$1;
.super Ljava/lang/Object;
.source "MobGamePagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/MobGamePagerFragment$1;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/gui/MobGamePagerFragment$1;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/MobGamePagerFragment$1;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerFragment$1$1;->this$1:Lcom/mobgame/gui/MobGamePagerFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment$1$1;->this$1:Lcom/mobgame/gui/MobGamePagerFragment$1;

    iget-object v0, v0, Lcom/mobgame/gui/MobGamePagerFragment$1;->this$0:Lcom/mobgame/gui/MobGamePagerFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGamePagerFragment;->access$100(Lcom/mobgame/gui/MobGamePagerFragment;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerFragment$1$1;->this$1:Lcom/mobgame/gui/MobGamePagerFragment$1;

    iget-object v1, v1, Lcom/mobgame/gui/MobGamePagerFragment$1;->this$0:Lcom/mobgame/gui/MobGamePagerFragment;

    .line 195
    invoke-static {v1}, Lcom/mobgame/gui/MobGamePagerFragment;->access$000(Lcom/mobgame/gui/MobGamePagerFragment;)Lcom/mobgame/gui/MobGameViewPager;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/mobgame/gui/MobGamePagerFragment$1$1;->this$1:Lcom/mobgame/gui/MobGamePagerFragment$1;

    iget-object v3, v3, Lcom/mobgame/gui/MobGamePagerFragment$1;->this$0:Lcom/mobgame/gui/MobGamePagerFragment;

    .line 198
    invoke-static {v3}, Lcom/mobgame/gui/MobGamePagerFragment;->access$100(Lcom/mobgame/gui/MobGamePagerFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
