.class public final synthetic Lcom/ypx/imagepicker/utils/CommonUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ypx/imagepicker/utils/CommonUtil$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iput-boolean p2, p0, Lcom/ypx/imagepicker/utils/CommonUtil$$ExternalSyntheticLambda1;->f$1:Z

    iput-boolean p3, p0, Lcom/ypx/imagepicker/utils/CommonUtil$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    iget-object v0, p0, Lcom/ypx/imagepicker/utils/CommonUtil$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iget-boolean v1, p0, Lcom/ypx/imagepicker/utils/CommonUtil$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean v2, p0, Lcom/ypx/imagepicker/utils/CommonUtil$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, v2, p1, p2}, Lcom/ypx/imagepicker/utils/CommonUtil;->lambda$setSafeAreaWithNavigationBar$1(Landroid/view/View;ZZLandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
