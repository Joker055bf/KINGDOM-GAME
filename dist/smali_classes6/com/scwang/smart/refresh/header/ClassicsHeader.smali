.class public Lcom/scwang/smart/refresh/header/ClassicsHeader;
.super Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
.source "ClassicsHeader.java"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/api/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scwang/smart/refresh/classics/ClassicsAbstract<",
        "Lcom/scwang/smart/refresh/header/ClassicsHeader;",
        ">;",
        "Lcom/scwang/smart/refresh/layout/api/RefreshHeader;"
    }
.end annotation


# static fields
.field public static final ID_TEXT_UPDATE:I

.field public static REFRESH_HEADER_FAILED:Ljava/lang/String;

.field public static REFRESH_HEADER_FINISH:Ljava/lang/String;

.field public static REFRESH_HEADER_LOADING:Ljava/lang/String;

.field public static REFRESH_HEADER_PULLING:Ljava/lang/String;

.field public static REFRESH_HEADER_REFRESHING:Ljava/lang/String;

.field public static REFRESH_HEADER_RELEASE:Ljava/lang/String;

.field public static REFRESH_HEADER_SECONDARY:Ljava/lang/String;

.field public static REFRESH_HEADER_UPDATE:Ljava/lang/String;


# instance fields
.field protected KEY_LAST_UPDATE_TIME:Ljava/lang/String;

.field protected mEnableLastTime:Z

.field protected mLastTime:Ljava/util/Date;

.field protected mLastUpdateFormat:Ljava/text/DateFormat;

.field protected mLastUpdateText:Landroid/widget/TextView;

.field protected mShared:Landroid/content/SharedPreferences;

.field protected mTextFailed:Ljava/lang/String;

.field protected mTextFinish:Ljava/lang/String;

.field protected mTextLoading:Ljava/lang/String;

.field protected mTextPulling:Ljava/lang/String;

.field protected mTextRefreshing:Ljava/lang/String;

.field protected mTextRelease:Ljava/lang/String;

.field protected mTextSecondary:Ljava/lang/String;

.field protected mTextUpdate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget v0, Lcom/scwang/smart/refresh/header/classics/R$id;->srl_classics_update:I

    sput v0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->ID_TEXT_UPDATE:I

    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_PULLING:Ljava/lang/String;

    .line 48
    sput-object v0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_REFRESHING:Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_LOADING:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_RELEASE:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_FINISH:Ljava/lang/String;

    .line 52
    sput-object v0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_FAILED:Ljava/lang/String;

    .line 53
    sput-object v0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_UPDATE:Ljava/lang/String;

    .line 54
    sput-object v0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_SECONDARY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/scwang/smart/refresh/header/ClassicsHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, "LAST_UPDATE_TIME"

    .line 57
    iput-object v1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mEnableLastTime:Z

    .line 82
    sget v1, Lcom/scwang/smart/refresh/header/classics/R$layout;->srl_classics_header:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    sget v1, Lcom/scwang/smart/refresh/header/classics/R$id;->srl_classics_arrow:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    .line 86
    sget v2, Lcom/scwang/smart/refresh/header/classics/R$id;->srl_classics_update:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 87
    sget v3, Lcom/scwang/smart/refresh/header/classics/R$id;->srl_classics_progress:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    .line 89
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$id;->srl_classics_title:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    .line 91
    sget-object v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    sget v7, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextTimeMarginTop:I

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 97
    sget v6, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableMarginRight:I

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v7

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 98
    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 100
    sget v6, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableArrowSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 101
    sget v6, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableArrowSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 102
    sget v6, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableProgressSize:I

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 103
    sget v6, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableProgressSize:I

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 105
    sget v6, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 106
    sget v6, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 107
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 108
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 110
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlFinishDuration:I

    iget v5, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mFinishDuration:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mFinishDuration:I

    .line 111
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlEnableLastTime:I

    iget-boolean v5, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mEnableLastTime:Z

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mEnableLastTime:Z

    .line 112
    sget-object v4, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->values:[Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    sget v5, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlClassicsSpinnerStyle:I

    iget-object v6, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mSpinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    iget v6, v6, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->ordinal:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mSpinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    .line 114
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableArrow:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const v5, -0x99999a

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    sget v6, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableArrow:I

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 117
    new-instance v4, Lcom/scwang/smart/refresh/classics/ArrowDrawable;

    invoke-direct {v4}, Lcom/scwang/smart/refresh/classics/ArrowDrawable;-><init>()V

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mArrowDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    .line 118
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mArrowDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    invoke-virtual {v4, v5}, Lcom/scwang/smart/drawable/PaintDrawable;->setColor(I)V

    .line 119
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mArrowDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_1
    :goto_0
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableProgress:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    sget v5, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlDrawableProgress:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 124
    :cond_2
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_3

    .line 125
    new-instance v4, Lcom/scwang/smart/drawable/ProgressDrawable;

    invoke-direct {v4}, Lcom/scwang/smart/drawable/ProgressDrawable;-><init>()V

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mProgressDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    .line 126
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mProgressDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    invoke-virtual {v4, v5}, Lcom/scwang/smart/drawable/PaintDrawable;->setColor(I)V

    .line 127
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mProgressDrawable:Lcom/scwang/smart/drawable/PaintDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_3
    :goto_1
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextSizeTitle:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 131
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    sget v5, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextSizeTitle:I

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 136
    :cond_4
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextSizeTime:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 137
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    sget v5, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextSizeTime:I

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    :cond_5
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlPrimaryColor:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 143
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlPrimaryColor:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-super {p0, v4}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->setPrimaryColor(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    .line 145
    :cond_6
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlAccentColor:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 146
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlAccentColor:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/scwang/smart/refresh/header/ClassicsHeader;->setAccentColor(I)Lcom/scwang/smart/refresh/header/ClassicsHeader;

    .line 149
    :cond_7
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextPulling:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 150
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextPulling:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    goto :goto_2

    .line 151
    :cond_8
    sget-object v4, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_PULLING:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 152
    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    goto :goto_2

    .line 154
    :cond_9
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$string;->srl_header_pulling:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    .line 156
    :goto_2
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextLoading:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 157
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextLoading:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    goto :goto_3

    .line 158
    :cond_a
    sget-object v4, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_LOADING:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 159
    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    goto :goto_3

    .line 161
    :cond_b
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$string;->srl_header_loading:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    .line 163
    :goto_3
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextRelease:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 164
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextRelease:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    goto :goto_4

    .line 165
    :cond_c
    sget-object v4, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_RELEASE:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 166
    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    goto :goto_4

    .line 168
    :cond_d
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$string;->srl_header_release:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    .line 170
    :goto_4
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextFinish:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 171
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextFinish:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    goto :goto_5

    .line 172
    :cond_e
    sget-object v4, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_FINISH:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 173
    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    goto :goto_5

    .line 175
    :cond_f
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$string;->srl_header_finish:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    .line 177
    :goto_5
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextFailed:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 178
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextFailed:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    goto :goto_6

    .line 179
    :cond_10
    sget-object v4, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_FAILED:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 180
    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    goto :goto_6

    .line 182
    :cond_11
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$string;->srl_header_failed:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    .line 184
    :goto_6
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextSecondary:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 185
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextSecondary:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    goto :goto_7

    .line 186
    :cond_12
    sget-object v4, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_SECONDARY:Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 187
    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    goto :goto_7

    .line 189
    :cond_13
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$string;->srl_header_secondary:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    .line 191
    :goto_7
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextRefreshing:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 192
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextRefreshing:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_8

    .line 193
    :cond_14
    sget-object v4, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_REFRESHING:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 194
    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_8

    .line 196
    :cond_15
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$string;->srl_header_refreshing:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    .line 198
    :goto_8
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextUpdate:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 199
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$styleable;->ClassicsHeader_srlTextUpdate:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    goto :goto_9

    .line 200
    :cond_16
    sget-object v4, Lcom/scwang/smart/refresh/header/ClassicsHeader;->REFRESH_HEADER_UPDATE:Ljava/lang/String;

    if-eqz v4, :cond_17

    .line 201
    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    goto :goto_9

    .line 203
    :cond_17
    sget v4, Lcom/scwang/smart/refresh/header/classics/R$string;->srl_header_update:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    .line 205
    :goto_9
    new-instance v4, Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v4, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    .line 207
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 210
    iget-boolean p2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mEnableLastTime:Z

    const/16 v4, 0x8

    if-eqz p2, :cond_18

    move p2, v0

    goto :goto_a

    :cond_18
    move p2, v4

    :goto_a
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_b

    :cond_19
    iget-object v2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    :goto_b
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 214
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 216
    :cond_1a
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :goto_c
    :try_start_0
    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_1b

    .line 221
    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 224
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    .line 225
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1b

    .line 226
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p2}, Lcom/scwang/smart/refresh/header/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smart/refresh/header/ClassicsHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 232
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    :cond_1b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    const-string p2, "ClassicsHeader"

    .line 236
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    .line 237
    new-instance p1, Ljava/util/Date;

    iget-object p2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/header/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smart/refresh/header/ClassicsHeader;

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I
    .locals 2

    if-eqz p2, :cond_0

    .line 246
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 248
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/header/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smart/refresh/header/ClassicsHeader;

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I

    move-result p1

    return p1
.end method

.method public onStateChanged(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 3

    .line 258
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    .line 259
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 260
    sget-object v0, Lcom/scwang/smart/refresh/header/ClassicsHeader$1;->$SwitchMap$com$scwang$smart$refresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    :pswitch_1
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 274
    :pswitch_2
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 270
    :pswitch_3
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 262
    :pswitch_4
    iget-boolean p3, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :pswitch_5
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAccentColor(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/header/ClassicsHeader;->setAccentColor(I)Lcom/scwang/smart/refresh/header/ClassicsHeader;

    move-result-object p1

    return-object p1
.end method

.method public setAccentColor(I)Lcom/scwang/smart/refresh/header/ClassicsHeader;
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    const v1, 0xffffff

    and-int/2addr v1, p1

    const/high16 v2, -0x34000000    # -3.3554432E7f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    invoke-super {p0, p1}, Lcom/scwang/smart/refresh/classics/ClassicsAbstract;->setAccentColor(I)Lcom/scwang/smart/refresh/classics/ClassicsAbstract;

    move-result-object p1

    check-cast p1, Lcom/scwang/smart/refresh/header/ClassicsHeader;

    return-object p1
.end method

.method public setEnableLastTime(Z)Lcom/scwang/smart/refresh/header/ClassicsHeader;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 322
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 323
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_1

    .line 325
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {p1, p0}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->requestRemeasureHeightFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    :cond_1
    return-object p0
.end method

.method public setLastUpdateText(Ljava/lang/CharSequence;)Lcom/scwang/smart/refresh/header/ClassicsHeader;
    .locals 1

    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    .line 311
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smart/refresh/header/ClassicsHeader;
    .locals 4

    .line 293
    iput-object p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    .line 294
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public setTextSizeTime(F)Lcom/scwang/smart/refresh/header/ClassicsHeader;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 332
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {p1, p0}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->requestRemeasureHeightFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    :cond_0
    return-object p0
.end method

.method public setTextSizeTime(IF)Lcom/scwang/smart/refresh/header/ClassicsHeader;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    invoke-interface {p1, p0}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->requestRemeasureHeightFor(Lcom/scwang/smart/refresh/layout/api/RefreshComponent;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    :cond_0
    return-object p0
.end method

.method public setTextTimeMarginTop(F)Lcom/scwang/smart/refresh/header/ClassicsHeader;
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 349
    invoke-static {p1}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 350
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setTextTimeMarginTopPx(I)Lcom/scwang/smart/refresh/header/ClassicsHeader;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 356
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 357
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setTimeFormat(Ljava/text/DateFormat;)Lcom/scwang/smart/refresh/header/ClassicsHeader;
    .locals 2

    .line 302
    iput-object p1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    .line 303
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/scwang/smart/refresh/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method
