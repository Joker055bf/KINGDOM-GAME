.class Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MobGameDialogStartWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->showProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    iput-boolean p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$7;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 544
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$800(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$7;->val$show:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
