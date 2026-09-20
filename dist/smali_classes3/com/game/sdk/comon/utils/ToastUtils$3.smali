.class Lcom/game/sdk/comon/utils/ToastUtils$3;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/utils/ToastUtils;->hideHello(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/game/sdk/comon/utils/ToastUtils$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/game/sdk/comon/utils/ToastUtils$3;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/mobgame/R$anim;->top_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/game/sdk/comon/utils/ToastUtils$3$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/utils/ToastUtils$3$1;-><init>(Lcom/game/sdk/comon/utils/ToastUtils$3;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 192
    invoke-static {}, Lcom/game/sdk/comon/utils/ToastUtils;->access$000()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
