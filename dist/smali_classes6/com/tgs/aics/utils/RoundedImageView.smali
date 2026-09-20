.class public Lcom/tgs/aics/utils/RoundedImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RoundedImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;
    }
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mRadii:[F

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/tgs/aics/utils/RoundedImageView;->mResource:I

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 33
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/tgs/aics/utils/RoundedImageView;->mRadii:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/tgs/aics/utils/RoundedImageView;->mResource:I

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 33
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/tgs/aics/utils/RoundedImageView;->mRadii:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/tgs/aics/utils/RoundedImageView;->mResource:I

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 33
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/tgs/aics/utils/RoundedImageView;->mRadii:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private resolveResource()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 108
    iget v0, p0, Lcom/tgs/aics/utils/RoundedImageView;->mResource:I

    if-eqz v0, :cond_0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/tgs/aics/utils/RoundedImageView;->mResource:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/tgs/aics/utils/RoundedImageView;->mResource:I

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->access$000(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private updateDrawable()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    check-cast v0, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;

    iget-object v1, p0, Lcom/tgs/aics/utils/RoundedImageView;->mRadii:[F

    invoke-virtual {v0, v1}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->setCornerRadii([F)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 49
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    .line 50
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView;->invalidate()V

    return-void
.end method

.method public setCorners(FFFF)V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    aput p2, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    aput p3, v0, p1

    const/4 p1, 0x5

    aput p3, v0, p1

    const/4 p1, 0x6

    aput p4, v0, p1

    const/4 p1, 0x7

    aput p4, v0, p1

    .line 96
    iput-object v0, p0, Lcom/tgs/aics/utils/RoundedImageView;->mRadii:[F

    .line 102
    invoke-direct {p0}, Lcom/tgs/aics/utils/RoundedImageView;->updateDrawable()V

    return-void
.end method

.method public setCorners(IIII)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    move p2, v0

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    :goto_1
    if-nez p3, :cond_2

    move p3, v0

    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    :goto_2
    if-nez p4, :cond_3

    goto :goto_3

    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 87
    :goto_3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tgs/aics/utils/RoundedImageView;->setCorners(FFFF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/tgs/aics/utils/RoundedImageView;->mResource:I

    .line 64
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->access$100(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/utils/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-direct {p0}, Lcom/tgs/aics/utils/RoundedImageView;->updateDrawable()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/tgs/aics/utils/RoundedImageView;->mResource:I

    .line 56
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tgs/aics/utils/RoundedImageView$RoundedCornerDrawable;->access$000(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/utils/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-direct {p0}, Lcom/tgs/aics/utils/RoundedImageView;->updateDrawable()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 71
    iget v0, p0, Lcom/tgs/aics/utils/RoundedImageView;->mResource:I

    if-eq v0, p1, :cond_0

    .line 72
    iput p1, p0, Lcom/tgs/aics/utils/RoundedImageView;->mResource:I

    .line 73
    invoke-direct {p0}, Lcom/tgs/aics/utils/RoundedImageView;->resolveResource()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/utils/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-direct {p0}, Lcom/tgs/aics/utils/RoundedImageView;->updateDrawable()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 82
    invoke-virtual {p0}, Lcom/tgs/aics/utils/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/utils/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
