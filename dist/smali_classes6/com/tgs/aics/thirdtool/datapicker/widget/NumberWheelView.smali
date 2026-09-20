.class public Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
.super Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;
.source "NumberWheelView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected generatePreviewData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->generatePreviewData()Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setData(Ljava/util/List;)V

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use setRange instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRange(FFF)V
    .locals 2

    .line 62
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 63
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float p2, p1, v0

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    cmpg-float p2, v0, p1

    if-gtz p2, :cond_0

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v0, p3

    goto :goto_0

    .line 70
    :cond_0
    invoke-super {p0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setRange(III)V
    .locals 2

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 51
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int p2, p1, v0

    .line 53
    div-int/2addr p2, p3

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-gt v0, p1, :cond_0

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, p3

    goto :goto_0

    .line 58
    :cond_0
    invoke-super {p0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setData(Ljava/util/List;)V

    return-void
.end method
