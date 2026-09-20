.class Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DiagnoseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3$1;->this$1:Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 375
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 376
    iget-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3$1;->this$1:Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;

    iget-object p1, p1, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->val$imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3$1;->this$1:Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;

    iget-object v0, v0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$200(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 377
    iget-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3$1;->this$1:Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;

    iget-object p1, p1, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->val$imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3$1;->this$1:Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;

    iget-object v0, v0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->access$300(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method
