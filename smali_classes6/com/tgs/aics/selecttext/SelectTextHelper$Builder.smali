.class public Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
.super Ljava/lang/Object;
.source "SelectTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/selecttext/SelectTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/selecttext/SelectTextHelper$Builder$OnSeparateItemClickListener;
    }
.end annotation


# instance fields
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

.field private mCursorHandleColor:I

.field private mCursorHandleSizeInDp:F

.field private mMagnifierShow:Z

.field private mPopAnimationStyle:I

.field private mPopArrowImg:I

.field private mPopBgResource:I

.field private mPopDelay:I

.field private mPopSpanCount:I

.field private mScrollShow:Z

.field private mSelectAll:Z

.field private mSelectTextLength:I

.field private mSelectedAllNoPop:Z

.field private mSelectedColor:I

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xec862a

    .line 179
    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mCursorHandleColor:I

    const v0, -0x501e0c

    .line 180
    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mSelectedColor:I

    const/high16 v0, 0x41c00000    # 24.0f

    .line 181
    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mCursorHandleSizeInDp:F

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mSelectAll:Z

    const/4 v1, 0x0

    .line 183
    iput-boolean v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mSelectedAllNoPop:Z

    const/4 v2, 0x2

    .line 184
    iput v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mSelectTextLength:I

    .line 185
    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mScrollShow:Z

    .line 186
    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mMagnifierShow:Z

    const/4 v0, 0x5

    .line 187
    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopSpanCount:I

    .line 188
    iput v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopBgResource:I

    const/16 v0, 0x64

    .line 189
    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopDelay:I

    .line 190
    iput v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopAnimationStyle:I

    .line 191
    iput v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopArrowImg:I

    .line 192
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->itemTextList:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->itemListenerList:Ljava/util/List;

    .line 196
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$100(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Landroid/widget/TextView;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I
    .locals 0

    .line 177
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopBgResource:I

    return p0
.end method

.method static synthetic access$1100(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I
    .locals 0

    .line 177
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopDelay:I

    return p0
.end method

.method static synthetic access$1200(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I
    .locals 0

    .line 177
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopAnimationStyle:I

    return p0
.end method

.method static synthetic access$1300(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I
    .locals 0

    .line 177
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopArrowImg:I

    return p0
.end method

.method static synthetic access$1400(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Ljava/util/List;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->itemTextList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Ljava/util/List;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->itemListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)F
    .locals 0

    .line 177
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mCursorHandleSizeInDp:F

    return p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I
    .locals 0

    .line 177
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mSelectedColor:I

    return p0
.end method

.method static synthetic access$300(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I
    .locals 0

    .line 177
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mCursorHandleColor:I

    return p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mSelectAll:Z

    return p0
.end method

.method static synthetic access$500(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mScrollShow:Z

    return p0
.end method

.method static synthetic access$600(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mMagnifierShow:Z

    return p0
.end method

.method static synthetic access$700(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mSelectedAllNoPop:Z

    return p0
.end method

.method static synthetic access$800(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I
    .locals 0

    .line 177
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mSelectTextLength:I

    return p0
.end method

.method static synthetic access$900(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)I
    .locals 0

    .line 177
    iget p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopSpanCount:I

    return p0
.end method


# virtual methods
.method public addItem(IILcom/tgs/aics/selecttext/SelectTextHelper$Builder$OnSeparateItemClickListener;)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->itemTextList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->itemListenerList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addItem(ILcom/tgs/aics/selecttext/SelectTextHelper$Builder$OnSeparateItemClickListener;)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->itemTextList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->itemListenerList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addItem(ILjava/lang/String;Lcom/tgs/aics/selecttext/SelectTextHelper$Builder$OnSeparateItemClickListener;)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->itemTextList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->itemListenerList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addItem(Ljava/lang/String;Lcom/tgs/aics/selecttext/SelectTextHelper$Builder$OnSeparateItemClickListener;)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->itemTextList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->itemListenerList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/tgs/aics/selecttext/SelectTextHelper;
    .locals 1

    .line 321
    new-instance v0, Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-direct {v0, p0}, Lcom/tgs/aics/selecttext/SelectTextHelper;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;)V

    return-object v0
.end method

.method public setCursorHandleColor(I)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 0

    .line 203
    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mCursorHandleColor:I

    return-object p0
.end method

.method public setCursorHandleSizeInDp(F)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 0

    .line 211
    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mCursorHandleSizeInDp:F

    return-object p0
.end method

.method public setMagnifierShow(Z)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mMagnifierShow:Z

    return-object p0
.end method

.method public setPopAnimationStyle(I)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 0

    .line 292
    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopAnimationStyle:I

    return-object p0
.end method

.method public setPopDelay(I)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 0

    .line 284
    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopDelay:I

    return-object p0
.end method

.method public setPopSpanCount(I)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 0

    .line 267
    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopSpanCount:I

    return-object p0
.end method

.method public setPopStyle(II)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 0

    .line 275
    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopBgResource:I

    .line 276
    iput p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mPopArrowImg:I

    return-object p0
.end method

.method public setScrollShow(Z)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mScrollShow:Z

    return-object p0
.end method

.method public setSelectAll(Z)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mSelectAll:Z

    return-object p0
.end method

.method public setSelectTextLength(I)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 0

    .line 243
    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mSelectTextLength:I

    return-object p0
.end method

.method public setSelectedAllNoPop(Z)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mSelectedAllNoPop:Z

    return-object p0
.end method

.method public setSelectedColor(I)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;
    .locals 0

    .line 219
    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->mSelectedColor:I

    return-object p0
.end method
