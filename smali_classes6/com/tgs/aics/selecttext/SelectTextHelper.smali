.class public Lcom/tgs/aics/selecttext/SelectTextHelper;
.super Ljava/lang/Object;
.source "SelectTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;,
        Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;,
        Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;,
        Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;,
        Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;,
        Lcom/tgs/aics/selecttext/SelectTextHelper$LinkMovementMethodInterceptor;,
        Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListenerImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_SELECTION_LENGTH:I = 0x2

.field private static final DEFAULT_SHOW_DURATION:I = 0x64

.field private static volatile emojiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private isHide:Z

.field private isHideWhenScroll:Z

.field private itemListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/selecttext/SelectTextHelper$Builder$OnSeparateItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private itemTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCursorHandleColor:I

.field private mCursorHandleSize:I

.field private mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

.field private mMagnifier:Landroid/widget/Magnifier;

.field private mMagnifierShow:Z

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

.field private mOriginalContent:Ljava/lang/CharSequence;

.field private mPopAnimationStyle:I

.field private mPopArrowImg:I

.field private mPopBgResource:I

.field private mPopDelay:I

.field private mPopSpanCount:I

.field private mRootTouchListener:Landroid/view/View$OnTouchListener;

.field private mScrollShow:Z

.field private mSelectAll:Z

.field private mSelectListener:Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

.field private mSelectTextLength:I

.field private mSelectedAllNoPop:Z

.field private mSelectedColor:I

.field private mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

.field private final mShowSelectViewRunnable:Ljava/lang/Runnable;

.field private mSpan:Landroid/text/style/BackgroundColorSpan;

.field private mSpannable:Landroid/text/Spannable;

.field private mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewMarginStart:I

.field private mTouchX:I

.field private mTouchY:I

.field private usedClickListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tgs/aics/selecttext/SelectTextHelper;->lock:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tgs/aics/selecttext/SelectTextHelper;->emojiMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    .line 50
    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    .line 51
    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    .line 52
    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mMagnifier:Landroid/widget/Magnifier;

    .line 53
    new-instance v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    invoke-direct {v1, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper$1;)V

    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    .line 54
    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectListener:Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    .line 56
    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    const/4 v1, 0x0

    .line 57
    iput v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTouchX:I

    .line 58
    iput v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTouchY:I

    .line 59
    iput v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextViewMarginStart:I

    .line 74
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->itemListenerList:Ljava/util/List;

    .line 75
    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpan:Landroid/text/style/BackgroundColorSpan;

    .line 76
    iput-boolean v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->isHideWhenScroll:Z

    const/4 v2, 0x1

    .line 77
    iput-boolean v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->isHide:Z

    .line 78
    iput-boolean v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->usedClickListener:Z

    .line 79
    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 80
    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 81
    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mRootTouchListener:Landroid/view/View$OnTouchListener;

    .line 496
    new-instance v0, Lcom/tgs/aics/selecttext/SelectTextHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper;)V

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mShowSelectViewRunnable:Ljava/lang/Runnable;

    .line 84
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$100(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    .line 85
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOriginalContent:Ljava/lang/CharSequence;

    .line 86
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$200(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectedColor:I

    .line 88
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$300(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mCursorHandleColor:I

    .line 89
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$400(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectAll:Z

    .line 90
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$500(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mScrollShow:Z

    .line 91
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$600(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mMagnifierShow:Z

    .line 92
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$700(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectedAllNoPop:Z

    .line 93
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$800(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectTextLength:I

    .line 94
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$900(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mPopSpanCount:I

    .line 95
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$1000(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mPopBgResource:I

    .line 96
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$1100(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mPopDelay:I

    .line 97
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$1200(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mPopAnimationStyle:I

    .line 98
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$1300(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mPopArrowImg:I

    .line 99
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$1400(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->itemTextList:Ljava/util/List;

    .line 100
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$1500(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->itemListenerList:Ljava/util/List;

    .line 101
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->access$1600(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)F

    move-result p1

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mCursorHandleSize:I

    .line 102
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->init()V

    return-void
.end method

.method static synthetic access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/tgs/aics/selecttext/SelectTextHelper;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/tgs/aics/selecttext/SelectTextHelper;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->isHideWhenScroll:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->isHideWhenScroll:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/tgs/aics/selecttext/SelectTextHelper;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mPopDelay:I

    return p0
.end method

.method static synthetic access$2200(Lcom/tgs/aics/selecttext/SelectTextHelper;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->postShowSelectView(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/tgs/aics/selecttext/SelectTextHelper;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextViewMarginStart:I

    return p0
.end method

.method static synthetic access$2302(Lcom/tgs/aics/selecttext/SelectTextHelper;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextViewMarginStart:I

    return p1
.end method

.method static synthetic access$2400(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mRootTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/tgs/aics/selecttext/SelectTextHelper;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mRootTouchListener:Landroid/view/View$OnTouchListener;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/tgs/aics/selecttext/SelectTextHelper;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/tgs/aics/selecttext/SelectTextHelper;Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;)Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectAll:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/tgs/aics/selecttext/SelectTextHelper;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showAllView()V

    return-void
.end method

.method static synthetic access$3000(Lcom/tgs/aics/selecttext/SelectTextHelper;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTouchX:I

    return p0
.end method

.method static synthetic access$3100(Lcom/tgs/aics/selecttext/SelectTextHelper;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTouchY:I

    return p0
.end method

.method static synthetic access$3200(Lcom/tgs/aics/selecttext/SelectTextHelper;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showSelectView(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectListener:Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/tgs/aics/selecttext/SelectTextHelper;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mScrollShow:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->isHide:Z

    return p0
.end method

.method static synthetic access$3600(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/tgs/aics/selecttext/SelectTextHelper;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mPopBgResource:I

    return p0
.end method

.method static synthetic access$4100(Lcom/tgs/aics/selecttext/SelectTextHelper;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mPopArrowImg:I

    return p0
.end method

.method static synthetic access$4200(Lcom/tgs/aics/selecttext/SelectTextHelper;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->itemTextList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/tgs/aics/selecttext/SelectTextHelper;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mPopSpanCount:I

    return p0
.end method

.method static synthetic access$4400(Lcom/tgs/aics/selecttext/SelectTextHelper;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mPopAnimationStyle:I

    return p0
.end method

.method static synthetic access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/tgs/aics/selecttext/SelectTextHelper;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->itemListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/tgs/aics/selecttext/SelectTextHelper;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mCursorHandleSize:I

    return p0
.end method

.method static synthetic access$4800(Lcom/tgs/aics/selecttext/SelectTextHelper;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mCursorHandleColor:I

    return p0
.end method

.method static synthetic access$4900(Lcom/tgs/aics/selecttext/SelectTextHelper;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showOperateWindow()V

    return-void
.end method

.method static synthetic access$5000(Lcom/tgs/aics/selecttext/SelectTextHelper;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mMagnifierShow:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/Magnifier;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mMagnifier:Landroid/widget/Magnifier;

    return-object p0
.end method

.method static synthetic access$5102(Lcom/tgs/aics/selecttext/SelectTextHelper;Landroid/widget/Magnifier;)Landroid/widget/Magnifier;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mMagnifier:Landroid/widget/Magnifier;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/tgs/aics/selecttext/SelectTextHelper;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->resetSelectionInfo()V

    return-void
.end method

.method static synthetic access$5300(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->getCursorHandle(Z)Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5400(Lcom/tgs/aics/selecttext/SelectTextHelper;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->selectText(II)V

    return-void
.end method

.method static synthetic access$5502(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->usedClickListener:Z

    return p1
.end method

.method private changeEndOffset(II)I
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 572
    invoke-interface {v0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 573
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 574
    check-cast v0, Landroid/text/Spannable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 578
    :goto_0
    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectUtils;->isImageSpanText(Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    :cond_1
    :goto_1
    sget-object v1, Lcom/tgs/aics/selecttext/SelectTextHelper;->emojiMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tgs/aics/selecttext/SelectUtils;->matchImageSpan(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 582
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 583
    invoke-interface {v1, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 584
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    .line 585
    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    goto :goto_1

    .line 592
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 593
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 594
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectUtils;->isEmojiText(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 595
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectUtils;->isEmojiText(C)Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit8 p2, p2, -0x1

    :cond_3
    return p2
.end method

.method private getCursorHandle(Z)Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->access$3900(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1062
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    return-object p1

    .line 1064
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    return-object p1
.end method

.method private hideSelectView()V
    .locals 1

    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->isHide:Z

    const/4 v0, 0x0

    .line 513
    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->usedClickListener:Z

    .line 514
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->dismiss()V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->dismiss()V

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->dismiss()V

    :cond_2
    return-void
.end method

.method private init()V
    .locals 4

    .line 384
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOriginalContent:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOriginalContent:Ljava/lang/CharSequence;

    const-string v2, "\u00a0\u00a0"

    const-string v3, "\u3000\u3000"

    invoke-static {v0, v1, v2, v3}, Lcom/tgs/aics/selecttext/SelectUtils;->replaceContent(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOriginalContent:Ljava/lang/CharSequence;

    const-string v2, "  "

    invoke-static {v0, v1, v2, v3}, Lcom/tgs/aics/selecttext/SelectUtils;->replaceContent(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/tgs/aics/selecttext/SelectTextHelper;->emojiMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOriginalContent:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0, v3}, Lcom/tgs/aics/selecttext/SelectUtils;->replaceText2Emoji(Landroid/content/Context;Ljava/util/Map;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    .line 394
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 395
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 396
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/tgs/aics/selecttext/SelectTextHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 401
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/tgs/aics/selecttext/SelectTextHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    invoke-direct {v1, p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$1;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/tgs/aics/selecttext/SelectTextHelper$LinkMovementMethodInterceptor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tgs/aics/selecttext/SelectTextHelper$LinkMovementMethodInterceptor;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper;Lcom/tgs/aics/selecttext/SelectTextHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private postShowSelectView(I)V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mShowSelectViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-gtz p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mShowSelectViewRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mShowSelectViewRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public static putAllEmojiMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/tgs/aics/selecttext/SelectTextHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/tgs/aics/selecttext/SelectTextHelper;->emojiMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private resetEmojiBackground()V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 741
    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->setEmojiBackground(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method private resetSelectionInfo()V
    .locals 3

    .line 523
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->resetEmojiBackground()V

    .line 524
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mSelectionContent:Ljava/lang/CharSequence;

    .line 525
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpan:Landroid/text/style/BackgroundColorSpan;

    if-eqz v2, :cond_0

    .line 526
    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 527
    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpan:Landroid/text/style/BackgroundColorSpan;

    :cond_0
    return-void
.end method

.method private selectText(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 668
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iput p1, v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    :cond_0
    if-eq p2, v0, :cond_1

    .line 671
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iput p2, p1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    .line 673
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget p1, p1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget p2, p2, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    if-le p1, p2, :cond_2

    .line 674
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget p1, p1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    .line 675
    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v0, p2, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    iput v0, p2, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    .line 676
    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iput p1, p2, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    .line 678
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    if-eqz p1, :cond_5

    .line 679
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpan:Landroid/text/style/BackgroundColorSpan;

    if-nez p1, :cond_3

    .line 680
    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    iget p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectedColor:I

    invoke-direct {p1, p2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpan:Landroid/text/style/BackgroundColorSpan;

    .line 682
    :cond_3
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    iget v0, p1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v1, v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    .line 683
    invoke-interface {p2, v0, v1}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mSelectionContent:Ljava/lang/CharSequence;

    .line 684
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v0, v0, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v1, v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    const/16 v2, 0x11

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 687
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectListener:Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    if-eqz p1, :cond_4

    .line 688
    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget-object p2, p2, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mSelectionContent:Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;->onTextSelected(Ljava/lang/CharSequence;)V

    .line 691
    :cond_4
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->setEmojiBackground()V

    :cond_5
    return-void
.end method

.method private setEmojiBackground()V
    .locals 4

    .line 699
    sget-object v0, Lcom/tgs/aics/selecttext/SelectTextHelper;->emojiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_1

    .line 705
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v1, v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-direct {p0, v0, v2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->setEmojiBackground(Landroid/text/Spannable;I)V

    .line 707
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v1, v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    iget-object v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v3, v3, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    invoke-interface {v0, v1, v3}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectedColor:I

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->setEmojiBackground(Landroid/text/Spannable;I)V

    .line 709
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v1, v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    iget-object v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-direct {p0, v0, v2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->setEmojiBackground(Landroid/text/Spannable;I)V

    :cond_1
    return-void
.end method

.method private setEmojiBackground(Landroid/text/Spannable;I)V
    .locals 4

    .line 720
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "mSpans"

    .line 723
    invoke-static {p1, v0}, Lcom/tgs/aics/selecttext/SelectUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 725
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 726
    instance-of v3, v2, Lcom/tgs/aics/selecttext/SelectImageSpan;

    if-eqz v3, :cond_1

    .line 727
    check-cast v2, Lcom/tgs/aics/selecttext/SelectImageSpan;

    .line 728
    invoke-virtual {v2}, Lcom/tgs/aics/selecttext/SelectImageSpan;->getBgColor()I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 729
    invoke-virtual {v2, p2}, Lcom/tgs/aics/selecttext/SelectImageSpan;->setBgColor(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showAllView()V
    .locals 3

    .line 625
    invoke-virtual {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->reset()V

    const/4 v0, 0x0

    .line 626
    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->isHide:Z

    .line 627
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    if-nez v1, :cond_0

    .line 628
    new-instance v1, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)V

    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    if-nez v1, :cond_1

    .line 631
    new-instance v1, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    invoke-direct {v1, p0, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)V

    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    .line 634
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    .line 636
    :cond_2
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    if-nez v1, :cond_3

    return-void

    .line 639
    :cond_3
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->selectText(II)V

    .line 640
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    invoke-direct {p0, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showCursorHandle(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)V

    .line 641
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    invoke-direct {p0, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showCursorHandle(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)V

    .line 642
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showOperateWindow()V

    return-void
.end method

.method private showCursorHandle(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 650
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->access$3900(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v1, v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v1, v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    .line 651
    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v2, v2

    .line 652
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    .line 659
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->access$3900(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v3, v3, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 660
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v1, v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    float-to-int v2, v1

    .line 661
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget v1, v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    .line 663
    :cond_2
    invoke-virtual {p1, v2, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->show(II)V

    return-void
.end method

.method private showOperateWindow()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    .line 611
    :cond_0
    iget-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectedAllNoPop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectionInfo:Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    iget-object v0, v0, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mSelectionContent:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 612
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    invoke-virtual {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->dismiss()V

    .line 613
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectListener:Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    if-eqz v0, :cond_2

    .line 614
    invoke-interface {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;->onSelectAllShowCustomPop()V

    goto :goto_0

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    invoke-virtual {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showSelectView(II)V
    .locals 3

    .line 536
    invoke-virtual {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->reset()V

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->isHide:Z

    .line 538
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    if-nez v1, :cond_0

    .line 539
    new-instance v1, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)V

    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    if-nez v1, :cond_1

    .line 542
    new-instance v1, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    invoke-direct {v1, p0, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)V

    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcom/tgs/aics/selecttext/SelectUtils;->getPreciseOffset(Landroid/widget/TextView;II)I

    move-result p1

    .line 545
    iget p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectTextLength:I

    add-int/2addr p2, p1

    .line 546
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSpannable:Landroid/text/Spannable;

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, -0x1

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 550
    :cond_3
    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 552
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->changeEndOffset(II)I

    move-result p2

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->selectText(II)V

    .line 554
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    invoke-direct {p0, p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showCursorHandle(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)V

    .line 555
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    invoke-direct {p0, p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showCursorHandle(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)V

    .line 556
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showOperateWindow()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 359
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 360
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 361
    invoke-virtual {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->reset()V

    .line 362
    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    .line 363
    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    .line 364
    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    return-void
.end method

.method public isPopShowing()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->access$1700(Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$init$0$com-tgs-aics-selecttext-SelectTextHelper(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTouchX:I

    .line 398
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTouchY:I

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$init$1$com-tgs-aics-selecttext-SelectTextHelper(Landroid/view/View;)V
    .locals 2

    .line 402
    iget-boolean p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->usedClickListener:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 403
    iput-boolean p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->usedClickListener:Z

    return-void

    .line 406
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->access$1700(Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 407
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectListener:Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    if-eqz p1, :cond_2

    .line 408
    invoke-interface {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;->onDismiss()V

    .line 410
    :cond_2
    invoke-virtual {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->reset()V

    .line 411
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectListener:Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    if-eqz p1, :cond_3

    .line 412
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOriginalContent:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;->onClick(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method synthetic lambda$new$2$com-tgs-aics-selecttext-SelectTextHelper()V
    .locals 1

    .line 497
    iget-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->isHide:Z

    if-eqz v0, :cond_0

    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mOperateWindow:Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    if-eqz v0, :cond_1

    .line 501
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showOperateWindow()V

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    if-eqz v0, :cond_2

    .line 504
    invoke-direct {p0, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showCursorHandle(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)V

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    if-eqz v0, :cond_3

    .line 507
    invoke-direct {p0, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showCursorHandle(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)V

    :cond_3
    return-void
.end method

.method public putEmojiMap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 122
    sget-object v0, Lcom/tgs/aics/selecttext/SelectTextHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/tgs/aics/selecttext/SelectTextHelper;->emojiMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 333
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->hideSelectView()V

    .line 334
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->resetSelectionInfo()V

    .line 336
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectListener:Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;->onReset()V

    :cond_0
    return-void
.end method

.method public selectAll()V
    .locals 2

    .line 371
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->hideSelectView()V

    .line 372
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->selectText(II)V

    .line 373
    iput-boolean v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->isHide:Z

    .line 374
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mStartHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    invoke-direct {p0, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showCursorHandle(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)V

    .line 375
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mEndHandle:Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    invoke-direct {p0, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showCursorHandle(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)V

    .line 376
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->showOperateWindow()V

    return-void
.end method

.method public setSelectListener(Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper;->mSelectListener:Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    return-void
.end method
