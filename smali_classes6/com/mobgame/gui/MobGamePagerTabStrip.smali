.class public Lcom/mobgame/gui/MobGamePagerTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "MobGamePagerTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;,
        Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;,
        Lcom/mobgame/gui/MobGamePagerTabStrip$IconTabProvider;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private dividerPaint:Landroid/graphics/Paint;

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private final pageListener:Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;

.field private pager:Landroidx/viewpager/widget/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextSize:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 52
    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobgame/gui/MobGamePagerTabStrip;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance p3, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;-><init>(Lcom/mobgame/gui/MobGamePagerTabStrip;Lcom/mobgame/gui/MobGamePagerTabStrip$1;)V

    iput-object p3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->pageListener:Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;

    const/4 p3, 0x0

    .line 68
    iput p3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->currentPosition:I

    const/4 v1, 0x0

    .line 69
    iput v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->currentPositionOffset:F

    const v1, -0x99999a

    .line 74
    iput v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorColor:I

    const/high16 v2, 0x1a000000

    .line 75
    iput v2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineColor:I

    const/4 v2, 0x1

    .line 79
    iput-boolean v2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->shouldExpand:Z

    const/16 v3, 0x34

    .line 81
    iput v3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->scrollOffset:I

    const/4 v3, 0x3

    .line 82
    iput v3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorHeight:I

    .line 83
    iput v2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineHeight:I

    const/16 v3, 0x18

    .line 84
    iput v3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabPadding:I

    const/16 v3, 0x10

    .line 86
    iput v3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextSize:I

    .line 87
    iput v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextColor:I

    .line 88
    iput-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 89
    iput p3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTypefaceStyle:I

    .line 91
    iput p3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->lastScrollX:I

    .line 93
    sget v0, Lcom/mobgame/R$drawable;->background_tab:I

    iput v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabBackgroundResId:I

    .line 108
    invoke-virtual {p0, v2}, Lcom/mobgame/gui/MobGamePagerTabStrip;->setFillViewport(Z)V

    .line 109
    invoke-virtual {p0, p3}, Lcom/mobgame/gui/MobGamePagerTabStrip;->setWillNotDraw(Z)V

    .line 111
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 112
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 113
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 118
    iget v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->scrollOffset:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->scrollOffset:I

    .line 119
    iget v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorHeight:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorHeight:I

    .line 120
    iget v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineHeight:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineHeight:I

    .line 121
    iget v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabPadding:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabPadding:I

    .line 122
    iget v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextSize:I

    int-to-float v1, v1

    const/4 v4, 0x2

    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextSize:I

    .line 126
    sget-object v0, Lcom/mobgame/gui/MobGamePagerTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    iget v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextSize:I

    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextSize:I

    .line 129
    iget v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextColor:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextColor:I

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    sget-object v0, Lcom/mobgame/R$styleable;->MobGamePagerTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 137
    sget p2, Lcom/mobgame/R$styleable;->MobGamePagerTabStrip_pstsIndicatorColor:I

    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorColor:I

    .line 138
    sget p2, Lcom/mobgame/R$styleable;->MobGamePagerTabStrip_pstsUnderlineColor:I

    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineColor:I

    .line 139
    sget p2, Lcom/mobgame/R$styleable;->MobGamePagerTabStrip_pstsIndicatorHeight:I

    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorHeight:I

    .line 140
    sget p2, Lcom/mobgame/R$styleable;->MobGamePagerTabStrip_pstsUnderlineHeight:I

    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineHeight:I

    .line 141
    sget p2, Lcom/mobgame/R$styleable;->MobGamePagerTabStrip_pstsTabPaddingLeftRight:I

    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabPadding:I

    .line 142
    sget p2, Lcom/mobgame/R$styleable;->MobGamePagerTabStrip_pstsTabBackground:I

    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabBackgroundResId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabBackgroundResId:I

    .line 143
    sget p2, Lcom/mobgame/R$styleable;->MobGamePagerTabStrip_pstsShouldExpand:I

    iget-boolean v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->shouldExpand:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->shouldExpand:Z

    .line 144
    sget p2, Lcom/mobgame/R$styleable;->MobGamePagerTabStrip_pstsScrollOffset:I

    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->scrollOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->scrollOffset:I

    .line 146
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 149
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    iget-object p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 153
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    iget-object p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->locale:Ljava/util/Locale;

    if-nez p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->locale:Ljava/util/Locale;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/mobgame/gui/MobGamePagerTabStrip;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->currentPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/mobgame/gui/MobGamePagerTabStrip;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mobgame/gui/MobGamePagerTabStrip;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/mobgame/gui/MobGamePagerTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/mobgame/gui/MobGamePagerTabStrip;F)F
    .locals 0

    .line 45
    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroid/widget/LinearLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mobgame/gui/MobGamePagerTabStrip;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabCount:I

    return p0
.end method

.method static synthetic access$800(Lcom/mobgame/gui/MobGamePagerTabStrip;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextColor:I

    return p0
.end method

.method private addIconTab(II)V
    .locals 2

    .line 225
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 227
    invoke-direct {p0, p1, v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->addTab(ILandroid/view/View;)V

    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 232
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 233
    new-instance v0, Lcom/mobgame/gui/MobGamePagerTabStrip$2;

    invoke-direct {v0, p0, p1}, Lcom/mobgame/gui/MobGamePagerTabStrip$2;-><init>(Lcom/mobgame/gui/MobGamePagerTabStrip;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabPadding:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 241
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->shouldExpand:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v0, p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTextTab(ILjava/lang/CharSequence;)V
    .locals 2

    .line 215
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 217
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 218
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->addTab(ILandroid/view/View;)V

    return-void
.end method

.method private scrollToChild(II)V
    .locals 1

    .line 270
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabCount:I

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 277
    :cond_1
    iget p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->scrollOffset:I

    sub-int/2addr v0, p1

    .line 280
    :cond_2
    iget p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->lastScrollX:I

    if-eq v0, p1, :cond_3

    .line 281
    iput v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->lastScrollX:I

    const/4 p1, 0x0

    .line 282
    invoke-virtual {p0, v0, p1}, Lcom/mobgame/gui/MobGamePagerTabStrip;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private updateTabStyles()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 246
    :goto_0
    iget v2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabCount:I

    if-ge v1, v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 250
    iget v3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 254
    check-cast v2, Landroid/widget/TextView;

    .line 255
    iget v3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 256
    iget-object v3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTypefaceStyle:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 257
    iget-object v3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 258
    iget v3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x79

    const/16 v4, 0x80

    const/16 v5, 0x7a

    .line 260
    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getIndicatorColor()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 395
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .line 474
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 460
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 446
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineHeight:I

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 184
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabCount:I

    const/4 v0, 0x0

    .line 186
    :goto_0
    iget v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabCount:I

    if-ge v0, v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/mobgame/gui/MobGamePagerTabStrip$IconTabProvider;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/mobgame/gui/MobGamePagerTabStrip$IconTabProvider;

    invoke-interface {v1, v0}, Lcom/mobgame/gui/MobGamePagerTabStrip$IconTabProvider;->getPageIconResId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mobgame/gui/MobGamePagerTabStrip;->addIconTab(II)V

    goto :goto_1

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mobgame/gui/MobGamePagerTabStrip;->addTextTab(ILjava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->updateTabStyles()V

    .line 198
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mobgame/gui/MobGamePagerTabStrip$1;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/MobGamePagerTabStrip$1;-><init>(Lcom/mobgame/gui/MobGamePagerTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 289
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 291
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabCount:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->getHeight()I

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    .line 299
    iget v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineHeight:I

    sub-int v1, v0, v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v6, v1

    int-to-float v11, v0

    iget-object v8, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v7, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 302
    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 307
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    .line 310
    iget v3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->currentPositionOffset:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget v3, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->currentPosition:I

    iget v4, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 312
    iget-object v4, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 313
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    .line 314
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    .line 316
    iget v5, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->currentPositionOffset:F

    mul-float/2addr v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v5

    mul-float/2addr v7, v2

    add-float/2addr v4, v7

    mul-float/2addr v3, v5

    sub-float/2addr v6, v5

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    move v10, v3

    move v8, v4

    goto :goto_0

    :cond_1
    move v10, v1

    move v8, v2

    .line 320
    :goto_0
    iget v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorHeight:I

    sub-int/2addr v0, v1

    int-to-float v9, v0

    iget-object v12, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 488
    check-cast p1, Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;

    .line 489
    invoke-virtual {p1}, Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 490
    iget p1, p1, Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;->currentPosition:I

    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->currentPosition:I

    .line 491
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 496
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 497
    new-instance v1, Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;

    invoke-direct {v1, v0}, Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 498
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->currentPosition:I

    iput v0, v1, Lcom/mobgame/gui/MobGamePagerTabStrip$SavedState;->currentPosition:I

    return-object v1
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorColor:I

    .line 377
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorColor:I

    .line 382
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 390
    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->indicatorHeight:I

    .line 391
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 423
    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->scrollOffset:I

    .line 424
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->invalidate()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .line 432
    iput-boolean p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->shouldExpand:Z

    .line 433
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->requestLayout()V

    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .line 470
    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabBackgroundResId:I

    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .line 478
    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabPadding:I

    .line 479
    invoke-direct {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 450
    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextColor:I

    .line 451
    invoke-direct {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextColor:I

    .line 456
    invoke-direct {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 441
    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTextSize:I

    .line 442
    invoke-direct {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 465
    iput p2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->tabTypefaceStyle:I

    .line 466
    invoke-direct {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 399
    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineColor:I

    .line 400
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->invalidate()V

    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .line 404
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineColor:I

    .line 405
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .line 413
    iput p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->underlineHeight:I

    .line 414
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 165
    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 167
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip;->pageListener:Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 173
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->notifyDataSetChanged()V

    return-void

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
