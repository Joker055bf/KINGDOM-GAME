.class Lcom/mobgame/MobGameSDK$8;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK;->hideTextScroll(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/MobGameSDK;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$rootView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$8;->this$0:Lcom/mobgame/MobGameSDK;

    iput-object p2, p0, Lcom/mobgame/MobGameSDK$8;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mobgame/MobGameSDK$8;->val$rootView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$8;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/mobgame/R$anim;->top_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 865
    new-instance v1, Lcom/mobgame/MobGameSDK$8$1;

    invoke-direct {v1, p0}, Lcom/mobgame/MobGameSDK$8$1;-><init>(Lcom/mobgame/MobGameSDK$8;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 879
    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$1400()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 880
    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$1400()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 881
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$8;->val$rootView:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$1400()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
