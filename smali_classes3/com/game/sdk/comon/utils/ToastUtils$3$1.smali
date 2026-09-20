.class Lcom/game/sdk/comon/utils/ToastUtils$3$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/utils/ToastUtils$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/utils/ToastUtils$3;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/utils/ToastUtils$3;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/game/sdk/comon/utils/ToastUtils$3$1;->this$0:Lcom/game/sdk/comon/utils/ToastUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 186
    iget-object p1, p0, Lcom/game/sdk/comon/utils/ToastUtils$3$1;->this$0:Lcom/game/sdk/comon/utils/ToastUtils$3;

    iget-object p1, p1, Lcom/game/sdk/comon/utils/ToastUtils$3;->val$activity:Landroid/app/Activity;

    const v0, 0x1020002

    .line 187
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 188
    invoke-static {}, Lcom/game/sdk/comon/utils/ToastUtils;->access$000()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 189
    invoke-static {p1}, Lcom/game/sdk/comon/utils/ToastUtils;->access$002(Landroid/view/View;)Landroid/view/View;

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
