.class Lcom/ypx/imagepicker/widget/cropimage/CropImageView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->anim(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V
    .locals 0

    .line 1560
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$8;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1563
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1564
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$8;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->initBase()V

    .line 1565
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$8;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->invalidate()V

    return-void
.end method
