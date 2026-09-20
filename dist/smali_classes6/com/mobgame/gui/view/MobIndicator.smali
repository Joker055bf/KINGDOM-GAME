.class public Lcom/mobgame/gui/view/MobIndicator;
.super Landroid/widget/LinearLayout;
.source "MobIndicator.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private btnIndicators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private indicatorContext:Landroid/content/Context;

.field private init:Z

.field private layoutIndicators:Landroid/widget/LinearLayout;

.field private final mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private numberOfItem:I

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mobgame/gui/view/MobIndicator;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p0, Lcom/mobgame/gui/view/MobIndicator;->init:Z

    .line 119
    new-instance p2, Lcom/mobgame/gui/view/MobIndicator$1;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/view/MobIndicator$1;-><init>(Lcom/mobgame/gui/view/MobIndicator;)V

    iput-object p2, p0, Lcom/mobgame/gui/view/MobIndicator;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 31
    invoke-direct {p0, p1}, Lcom/mobgame/gui/view/MobIndicator;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/gui/view/MobIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mobgame/gui/view/MobIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private getDensity(Landroid/content/Context;)F
    .locals 0

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-virtual {p0, p1}, Lcom/mobgame/gui/view/MobIndicator;->setIndicatorContext(Landroid/content/Context;)V

    .line 40
    iget-boolean v0, p0, Lcom/mobgame/gui/view/MobIndicator;->init:Z

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mobgame/R$layout;->indicator_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mobgame/gui/view/MobIndicator;->rootView:Landroid/view/View;

    .line 47
    sget v0, Lcom/mobgame/R$id;->indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mobgame/gui/view/MobIndicator;->layoutIndicators:Landroid/widget/LinearLayout;

    .line 49
    iget-object p1, p0, Lcom/mobgame/gui/view/MobIndicator;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mobgame/gui/view/MobIndicator;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/mobgame/gui/view/MobIndicator;->init:Z

    return-void
.end method


# virtual methods
.method public getIndicatorContext()Landroid/content/Context;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/mobgame/gui/view/MobIndicator;->indicatorContext:Landroid/content/Context;

    return-object v0
.end method

.method public getNumberOfItem()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/mobgame/gui/view/MobIndicator;->numberOfItem:I

    return v0
.end method

.method public initialize()V
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/mobgame/gui/view/MobIndicator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "number of indicator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mobgame/gui/view/MobIndicator;->numberOfItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget v0, p0, Lcom/mobgame/gui/view/MobIndicator;->numberOfItem:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/16 v0, 0x8

    .line 56
    invoke-virtual {p0, v0}, Lcom/mobgame/gui/view/MobIndicator;->setVisibility(I)V

    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/view/MobIndicator;->btnIndicators:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    .line 60
    :goto_0
    iget v2, p0, Lcom/mobgame/gui/view/MobIndicator;->numberOfItem:I

    if-ge v1, v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/mobgame/gui/view/MobIndicator;->indicatorContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/mobgame/gui/view/MobIndicator;->getDensity(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 63
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/mobgame/gui/view/MobIndicator;->indicatorContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v1, :cond_1

    .line 67
    sget v4, Lcom/mobgame/R$drawable;->indicator_orange:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 69
    :cond_1
    sget v4, Lcom/mobgame/R$drawable;->indicator_orange_inactive:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 71
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 72
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    invoke-virtual {v3, v2, v0, v2, v0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 74
    iget-object v2, p0, Lcom/mobgame/gui/view/MobIndicator;->layoutIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    iget-object v2, p0, Lcom/mobgame/gui/view/MobIndicator;->btnIndicators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mobgame/gui/view/MobIndicator;->setVisibility(I)V

    return-void
.end method

.method public setIndicatorContext(Landroid/content/Context;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/mobgame/gui/view/MobIndicator;->indicatorContext:Landroid/content/Context;

    return-void
.end method

.method public setNumberOfItem(I)Lcom/mobgame/gui/view/MobIndicator;
    .locals 0

    .line 104
    iput p1, p0, Lcom/mobgame/gui/view/MobIndicator;->numberOfItem:I

    return-object p0
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)Lcom/mobgame/gui/view/MobIndicator;
    .locals 1

    .line 109
    iput-object p1, p0, Lcom/mobgame/gui/view/MobIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/mobgame/gui/view/MobIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    iput p1, p0, Lcom/mobgame/gui/view/MobIndicator;->numberOfItem:I

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/view/MobIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/mobgame/gui/view/MobIndicator;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 114
    iget-object p1, p0, Lcom/mobgame/gui/view/MobIndicator;->layoutIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 115
    invoke-virtual {p0}, Lcom/mobgame/gui/view/MobIndicator;->initialize()V

    return-object p0
.end method

.method public updatePosition(I)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/mobgame/gui/view/MobIndicator;->btnIndicators:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-ne v1, p1, :cond_1

    .line 88
    iget-object v2, p0, Lcom/mobgame/gui/view/MobIndicator;->btnIndicators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    sget v3, Lcom/mobgame/R$drawable;->indicator_orange:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/mobgame/gui/view/MobIndicator;->btnIndicators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    sget v3, Lcom/mobgame/R$drawable;->indicator_orange_inactive:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
