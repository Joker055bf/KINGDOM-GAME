.class public final Lcom/chartboost/sdk/impl/a3;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public e:Z

.field public f:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 7
    iput p1, p0, Lcom/chartboost/sdk/impl/a3;->a:F

    .line 8
    iput p2, p0, Lcom/chartboost/sdk/impl/a3;->b:F

    .line 9
    iput p3, p0, Lcom/chartboost/sdk/impl/a3;->c:F

    .line 10
    iput p4, p0, Lcom/chartboost/sdk/impl/a3;->d:F

    .line 11
    iput-boolean p5, p0, Lcom/chartboost/sdk/impl/a3;->e:Z

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/a3;->a:F

    iget v1, p0, Lcom/chartboost/sdk/impl/a3;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 2
    iget-object p1, p0, Lcom/chartboost/sdk/impl/a3;->f:Landroid/graphics/Camera;

    .line 3
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Camera;->save()V

    .line 6
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/a3;->e:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Camera;->rotateX(F)V

    .line 11
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    .line 13
    iget p1, p0, Lcom/chartboost/sdk/impl/a3;->c:F

    neg-float p1, p1

    iget v0, p0, Lcom/chartboost/sdk/impl/a3;->d:F

    neg-float v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 14
    iget p1, p0, Lcom/chartboost/sdk/impl/a3;->c:F

    iget v0, p0, Lcom/chartboost/sdk/impl/a3;->d:F

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/a3;->f:Landroid/graphics/Camera;

    return-void
.end method
