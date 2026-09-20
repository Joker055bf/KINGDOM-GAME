.class public final synthetic Lcom/ypx/imagepicker/utils/PStatusBarUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ZLandroid/view/View;Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ypx/imagepicker/utils/PStatusBarUtil$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/ypx/imagepicker/utils/PStatusBarUtil$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/ypx/imagepicker/utils/PStatusBarUtil$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    iput p4, p0, Lcom/ypx/imagepicker/utils/PStatusBarUtil$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    iget-boolean v0, p0, Lcom/ypx/imagepicker/utils/PStatusBarUtil$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/ypx/imagepicker/utils/PStatusBarUtil$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/ypx/imagepicker/utils/PStatusBarUtil$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    iget v3, p0, Lcom/ypx/imagepicker/utils/PStatusBarUtil$$ExternalSyntheticLambda0;->f$3:I

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->lambda$setStatusBar$0(ZLandroid/view/View;Landroid/app/Activity;ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
