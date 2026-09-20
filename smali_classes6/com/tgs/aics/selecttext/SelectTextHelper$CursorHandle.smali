.class Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;
.super Landroid/view/View;
.source "SelectTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/selecttext/SelectTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorHandle"
.end annotation


# instance fields
.field private isLeft:Z

.field private mAdjustX:I

.field private mAdjustY:I

.field private mBeforeDragEnd:I

.field private mBeforeDragStart:I

.field private mCircleRadius:I

.field private mHeight:I

.field private mPadding:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mTempCoors:[I

.field private mWidth:I

.field final synthetic this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)V
    .locals 3

    .line 877
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    .line 878
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2700(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 870
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPaint:Landroid/graphics/Paint;

    .line 872
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4700(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mCircleRadius:I

    .line 873
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4700(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mWidth:I

    .line 874
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4700(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mHeight:I

    const/16 v0, 0x20

    .line 875
    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPadding:I

    const/4 v0, 0x0

    .line 917
    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mAdjustX:I

    .line 918
    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mAdjustY:I

    .line 919
    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mBeforeDragStart:I

    .line 920
    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mBeforeDragEnd:I

    new-array v2, v1, [I

    .line 981
    iput-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mTempCoors:[I

    .line 879
    iput-boolean p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->isLeft:Z

    .line 881
    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4800(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 882
    new-instance p1, Landroid/widget/PopupWindow;

    invoke-direct {p1, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 883
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 884
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPopupWindow:Landroid/widget/PopupWindow;

    iget p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mWidth:I

    iget v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPadding:I

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 885
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPopupWindow:Landroid/widget/PopupWindow;

    iget p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mHeight:I

    iget v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPadding:I

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 886
    invoke-virtual {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->invalidate()V

    return-void
.end method

.method static synthetic access$3900(Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;)Z
    .locals 0

    .line 867
    iget-boolean p0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->isLeft:Z

    return p0
.end method

.method private changeDirection()V
    .locals 1

    .line 973
    iget-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->isLeft:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->isLeft:Z

    .line 974
    invoke-virtual {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->invalidate()V

    return-void
.end method

.method private getExtraX()I
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mTempCoors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPadding:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getExtraY()I
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mTempCoors:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private updateCursorHandle()V
    .locals 5

    .line 1020
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mTempCoors:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1021
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1022
    iget-boolean v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->isLeft:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 1023
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    .line 1024
    invoke-static {v3}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v3

    iget v3, v3, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mWidth:I

    sub-int/2addr v3, v4

    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->getExtraX()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    .line 1025
    invoke-static {v4}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v4

    iget v4, v4, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->getExtraY()I

    move-result v4

    add-int/2addr v0, v4

    .line 1023
    invoke-virtual {v1, v3, v0, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1030
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v1

    iget v1, v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    float-to-int v1, v1

    .line 1031
    iget-object v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v3}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v3

    iget v3, v3, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .line 1035
    iget-object v4, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v4}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v4

    iget v4, v4, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 1036
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v1

    iget v1, v1, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    float-to-int v1, v1

    .line 1037
    iget-object v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v3}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v3

    iget v3, v3, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .line 1039
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->getExtraX()I

    move-result v4

    add-int/2addr v1, v4

    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->getExtraY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 891
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 892
    iget v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mCircleRadius:I

    iget v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPadding:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    int-to-float v2, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 898
    iget-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->isLeft:Z

    if-eqz v0, :cond_0

    .line 899
    iget v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mCircleRadius:I

    iget v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPadding:I

    add-int v2, v0, v1

    int-to-float v4, v2

    const/4 v5, 0x0

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    int-to-float v6, v2

    int-to-float v7, v0

    iget-object v8, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 907
    :cond_0
    iget v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPadding:I

    int-to-float v2, v0

    const/4 v3, 0x0

    iget v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mCircleRadius:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 924
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/16 v2, 0x1c

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto/16 :goto_1

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2600(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->dismiss()V

    .line 943
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3300(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3300(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;->onDismissCustomPop()V

    .line 945
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 946
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 948
    iget v4, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mAdjustX:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mWidth:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    .line 949
    invoke-static {v5}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2300(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mAdjustY:I

    add-int/2addr v5, p1

    iget v6, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mHeight:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    .line 950
    invoke-static {v6}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    .line 948
    invoke-virtual {p0, v4, v5}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->update(II)V

    .line 952
    iget-object v4, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v4}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5000(Lcom/tgs/aics/selecttext/SelectTextHelper;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 954
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_6

    .line 955
    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5100(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/Magnifier;

    move-result-object v2

    if-nez v2, :cond_3

    .line 956
    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_2

    new-instance v4, Landroid/widget/Magnifier$Builder;

    iget-object v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v5}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/widget/Magnifier$Builder;->build()Landroid/widget/Magnifier;

    move-result-object v4

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/widget/Magnifier;

    iget-object v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v5}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Magnifier;-><init>(Landroid/view/View;)V

    :goto_0
    invoke-static {v2, v4}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5102(Lcom/tgs/aics/selecttext/SelectTextHelper;Landroid/widget/Magnifier;)Landroid/widget/Magnifier;

    :cond_3
    new-array v2, v3, [I

    .line 959
    iget-object v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v3}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    sub-int/2addr v0, v4

    aget v2, v2, v1

    sub-int/2addr p1, v2

    const/high16 v2, 0x42000000    # 32.0f

    .line 961
    invoke-static {v2}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr p1, v2

    .line 962
    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5100(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/Magnifier;

    move-result-object v2

    int-to-float v0, v0

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, v0, p1}, Landroid/widget/Magnifier;->show(FF)V

    goto :goto_1

    .line 933
    :cond_4
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4900(Lcom/tgs/aics/selecttext/SelectTextHelper;)V

    .line 934
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5000(Lcom/tgs/aics/selecttext/SelectTextHelper;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 936
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_6

    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5100(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/Magnifier;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 937
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5100(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/Magnifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Magnifier;->dismiss()V

    goto :goto_1

    .line 926
    :cond_5
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v0

    iget v0, v0, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mBeforeDragStart:I

    .line 927
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v0

    iget v0, v0, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mBeforeDragEnd:I

    .line 928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mAdjustX:I

    .line 929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mAdjustY:I

    :cond_6
    :goto_1
    return v1
.end method

.method public show(II)V
    .locals 4

    .line 1044
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mTempCoors:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1045
    iget-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->isLeft:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mWidth:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1046
    :goto_0
    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    .line 1047
    invoke-static {v3}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v3

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->getExtraX()I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->getExtraY()I

    move-result v0

    add-int/2addr p2, v0

    .line 1046
    invoke-virtual {v2, v3, v1, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public update(II)V
    .locals 3

    .line 985
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mTempCoors:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 986
    iget-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->isLeft:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v0

    iget v0, v0, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v0

    iget v0, v0, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    .line 987
    :goto_0
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mTempCoors:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr p2, v1

    .line 988
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, p1, p2, v0}, Lcom/tgs/aics/selecttext/SelectUtils;->getHysteresisOffset(Landroid/widget/TextView;III)I

    move-result p1

    if-eq p1, v0, :cond_4

    .line 990
    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5200(Lcom/tgs/aics/selecttext/SelectTextHelper;)V

    .line 991
    iget-boolean p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->isLeft:Z

    if-eqz p2, :cond_2

    .line 992
    iget p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mBeforeDragEnd:I

    if-le p1, p2, :cond_1

    .line 993
    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5300(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    move-result-object p2

    .line 994
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->changeDirection()V

    .line 995
    invoke-direct {p2}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->changeDirection()V

    .line 996
    iget v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mBeforeDragEnd:I

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mBeforeDragStart:I

    .line 997
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v1, v0, p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5400(Lcom/tgs/aics/selecttext/SelectTextHelper;II)V

    .line 998
    invoke-direct {p2}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->updateCursorHandle()V

    goto :goto_1

    .line 1000
    :cond_1
    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    const/4 v0, -0x1

    invoke-static {p2, p1, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5400(Lcom/tgs/aics/selecttext/SelectTextHelper;II)V

    .line 1002
    :goto_1
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->updateCursorHandle()V

    goto :goto_3

    .line 1004
    :cond_2
    iget p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mBeforeDragStart:I

    if-ge p1, p2, :cond_3

    .line 1005
    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p2, v2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5300(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    move-result-object p2

    .line 1006
    invoke-direct {p2}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->changeDirection()V

    .line 1007
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->changeDirection()V

    .line 1008
    iget v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mBeforeDragStart:I

    iput v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->mBeforeDragEnd:I

    .line 1009
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v1, p1, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5400(Lcom/tgs/aics/selecttext/SelectTextHelper;II)V

    .line 1010
    invoke-direct {p2}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->updateCursorHandle()V

    goto :goto_2

    .line 1012
    :cond_3
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0, p2, p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5400(Lcom/tgs/aics/selecttext/SelectTextHelper;II)V

    .line 1014
    :goto_2
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->updateCursorHandle()V

    :cond_4
    :goto_3
    return-void
.end method
