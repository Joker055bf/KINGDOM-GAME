.class Lcom/game/sdk/comon/utils/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/utils/ToastUtils;->showHello(Landroid/app/Activity;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$mess:Ljava/lang/String;

.field final synthetic val$rootView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/game/sdk/comon/utils/ToastUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/game/sdk/comon/utils/ToastUtils$1;->val$mess:Ljava/lang/String;

    iput-object p3, p0, Lcom/game/sdk/comon/utils/ToastUtils$1;->val$rootView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/game/sdk/comon/utils/ToastUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 142
    sget v1, Lcom/mobgame/R$layout;->toast_notify:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/utils/ToastUtils;->access$002(Landroid/view/View;)Landroid/view/View;

    .line 143
    invoke-static {}, Lcom/game/sdk/comon/utils/ToastUtils;->access$000()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/mobgame/R$id;->tvDescription:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    invoke-static {}, Lcom/game/sdk/comon/utils/ToastUtils;->access$000()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/mobgame/R$id;->ivToast:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 145
    iget-object v1, p0, Lcom/game/sdk/comon/utils/ToastUtils$1;->val$mess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/game/sdk/comon/utils/ToastUtils$1;->val$rootView:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/game/sdk/comon/utils/ToastUtils;->access$000()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    invoke-static {}, Lcom/game/sdk/comon/utils/ToastUtils;->access$000()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/comon/utils/ToastUtils$1;->val$activity:Landroid/app/Activity;

    sget v2, Lcom/mobgame/R$anim;->top_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
