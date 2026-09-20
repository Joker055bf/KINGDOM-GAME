.class Lcom/mobgame/gui/MobGamePagerFragment$1;
.super Ljava/lang/Object;
.source "MobGamePagerFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/gui/MobGamePagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/MobGamePagerFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/MobGamePagerFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerFragment$1;->this$0:Lcom/mobgame/gui/MobGamePagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 211
    :try_start_0
    iget-object p1, p0, Lcom/mobgame/gui/MobGamePagerFragment$1;->this$0:Lcom/mobgame/gui/MobGamePagerFragment;

    invoke-static {p1}, Lcom/mobgame/gui/MobGamePagerFragment;->access$200(Lcom/mobgame/gui/MobGamePagerFragment;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/mobgame/gui/MobGamePagerFragment$1$2;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/MobGamePagerFragment$1$2;-><init>(Lcom/mobgame/gui/MobGamePagerFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 191
    :try_start_0
    iget-object p1, p0, Lcom/mobgame/gui/MobGamePagerFragment$1;->this$0:Lcom/mobgame/gui/MobGamePagerFragment;

    invoke-static {p1}, Lcom/mobgame/gui/MobGamePagerFragment;->access$200(Lcom/mobgame/gui/MobGamePagerFragment;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/mobgame/gui/MobGamePagerFragment$1$1;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/MobGamePagerFragment$1$1;-><init>(Lcom/mobgame/gui/MobGamePagerFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
