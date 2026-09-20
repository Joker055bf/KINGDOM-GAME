.class public abstract Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;
.super Landroid/widget/LinearLayout;
.source "BaseWheelLayout.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;


# instance fields
.field private final wheelViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    .line 31
    sget v0, Lcom/tgs/service/ai/R$attr;->WheelStyle:I

    sget v1, Lcom/tgs/service/ai/R$style;->WheelDefault:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    .line 36
    sget v0, Lcom/tgs/service/ai/R$attr;->WheelStyle:I

    sget v1, Lcom/tgs/service/ai/R$style;->WheelDefault:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    .line 41
    sget v0, Lcom/tgs/service/ai/R$style;->WheelDefault:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setOrientation(I)V

    .line 51
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->provideLayoutRes()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->onInit(Landroid/content/Context;)V

    .line 53
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->provideWheelViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 57
    invoke-virtual {p2, p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setOnWheelChangedListener(Lcom/tgs/aics/thirdtool/datapicker/contract/OnWheelChangedListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 68
    sget-object v2, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 69
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_visibleItemCount:I

    const/4 v2, 0x5

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setVisibleItemCount(I)V

    .line 70
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_sameWidthEnabled:I

    const/4 v2, 0x0

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setSameWidthEnabled(Z)V

    .line 71
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_maxWidthText:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setMaxWidthText(Ljava/lang/String;)V

    .line 72
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_itemTextColor:I

    const v3, -0x777778

    invoke-virtual {p3, p4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setTextColor(I)V

    .line 73
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_itemTextColorSelected:I

    const/high16 v3, -0x1000000

    invoke-virtual {p3, p4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setSelectedTextColor(I)V

    .line 74
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_itemTextSize:I

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v1, v3

    invoke-virtual {p3, p4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setTextSize(F)V

    .line 75
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_itemTextSizeSelected:I

    invoke-virtual {p3, p4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setSelectedTextSize(F)V

    .line 76
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_itemTextBoldSelected:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setSelectedTextBold(Z)V

    .line 77
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_itemTextAlign:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setTextAlign(I)V

    .line 78
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_itemSpace:I

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p3, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setItemSpace(I)V

    .line 79
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_cyclicEnabled:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setCyclicEnabled(Z)V

    .line 80
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_indicatorEnabled:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setIndicatorEnabled(Z)V

    .line 81
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_indicatorColor:I

    const v1, -0x363637

    invoke-virtual {p3, p4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setIndicatorColor(I)V

    .line 82
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_indicatorSize:I

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setIndicatorSize(F)V

    .line 83
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_curvedIndicatorSpace:I

    float-to-int v0, v0

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setCurvedIndicatorSpace(I)V

    .line 84
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_curtainEnabled:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setCurtainEnabled(Z)V

    .line 85
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_curtainColor:I

    const v0, -0x77000001

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setCurtainColor(I)V

    .line 86
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_curtainCorner:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setCurtainCorner(I)V

    .line 87
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_curtainRadius:I

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setCurtainRadius(F)V

    .line 88
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_atmosphericEnabled:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setAtmosphericEnabled(Z)V

    .line 89
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_curvedEnabled:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setCurvedEnabled(Z)V

    .line 90
    sget p4, Lcom/tgs/service/ai/R$styleable;->BaseWheelLayout_wheel_curvedMaxAngle:I

    const/16 v0, 0x5a

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->setCurvedMaxAngle(I)V

    .line 91
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->onAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method protected onInit(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onWheelLoopFinished(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;)V
    .locals 0

    return-void
.end method

.method public onWheelScrollStateChanged(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V
    .locals 0

    return-void
.end method

.method public onWheelScrolled(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V
    .locals 0

    return-void
.end method

.method protected abstract provideLayoutRes()I
.end method

.method protected abstract provideWheelViews()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;",
            ">;"
        }
    .end annotation
.end method

.method public setAtmosphericEnabled(Z)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 183
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setAtmosphericEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurtainColor(I)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 165
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setCurtainColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurtainCorner(I)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 171
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setCurtainCorner(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurtainEnabled(Z)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 159
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setCurtainEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurtainRadius(F)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 177
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setCurtainRadius(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurvedEnabled(Z)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 189
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setCurvedEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurvedIndicatorSpace(I)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 201
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setCurvedIndicatorSpace(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurvedMaxAngle(I)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 195
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setCurvedMaxAngle(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCyclicEnabled(Z)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 207
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setCyclicEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDefaultItemPosition(I)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 153
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setDefaultPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 129
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 225
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setIndicatorColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIndicatorEnabled(Z)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 213
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setIndicatorEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIndicatorSize(F)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 219
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setIndicatorSize(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemSpace(I)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 141
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setItemSpace(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxWidthText(Ljava/lang/String;)V
    .locals 2

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 234
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setMaxWidthText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSameWidthEnabled(Z)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 147
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setSameWidthEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectedTextBold(Z)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 264
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setSelectedTextBold(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 258
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setSelectedTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectedTextSize(F)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 246
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setSelectedTextSize(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStyle(I)V
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/tgs/service/ai/R$attr;->WheelStyle:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->requestLayout()V

    .line 107
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->invalidate()V

    return-void
.end method

.method public setTextAlign(I)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 270
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setTextAlign(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 252
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 240
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setTextSize(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisibleItemCount(I)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->wheelViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    .line 135
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setVisibleItemCount(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
