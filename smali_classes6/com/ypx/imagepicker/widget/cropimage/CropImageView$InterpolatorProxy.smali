.class Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/widget/cropimage/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterpolatorProxy"
.end annotation


# instance fields
.field private mTarget:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;


# direct methods
.method private constructor <init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;->this$0:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;->mTarget:Landroid/view/animation/Interpolator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Lcom/ypx/imagepicker/widget/cropimage/CropImageView$1;)V
    .locals 0

    .line 1133
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;-><init>(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;->mTarget:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 1148
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    return p1
.end method

.method setTargetInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/CropImageView$InterpolatorProxy;->mTarget:Landroid/view/animation/Interpolator;

    return-void
.end method
