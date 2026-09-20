.class Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;
.super Ljava/lang/Object;
.source "SelectTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/selecttext/SelectTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperateWindow"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private ivArrow:Landroid/widget/ImageView;

.field private listAdapter:Lcom/tgs/aics/selecttext/SelectTextPopAdapter;

.field private mHeight:I

.field private mTempCoors:[I

.field private mWidth:I

.field private mWindow:Landroid/widget/PopupWindow;

.field private rvContent:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/selecttext/SelectTextHelper;Landroid/content/Context;)V
    .locals 4

    .line 761
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 754
    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mTempCoors:[I

    .line 762
    iput-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->context:Landroid/content/Context;

    .line 764
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "tgs_aics_selecttext_pop_operate"

    invoke-static {p2, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "rv_content"

    .line 765
    invoke-static {p2, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "iv_arrow"

    .line 766
    invoke-static {p2, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->ivArrow:Landroid/widget/ImageView;

    .line 767
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4000(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4000(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundResource(I)V

    .line 770
    :cond_0
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4100(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->ivArrow:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4100(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 773
    :cond_1
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4200(Lcom/tgs/aics/selecttext/SelectTextHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 775
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4300(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    add-int/lit8 v2, v2, 0x30

    int-to-float v2, v2

    invoke-static {v2}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result v2

    iput v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWidth:I

    .line 777
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4300(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v2

    div-int v2, v1, v2

    .line 778
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4300(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v3

    rem-int/2addr v1, v3

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v1, v1, 0xc

    mul-int/lit8 v2, v2, 0x34

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    .line 780
    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mHeight:I

    .line 781
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWindow:Landroid/widget/PopupWindow;

    .line 787
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 789
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4400(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 790
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4400(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 792
    :cond_3
    new-instance v0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4200(Lcom/tgs/aics/selecttext/SelectTextHelper;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->listAdapter:Lcom/tgs/aics/selecttext/SelectTextPopAdapter;

    .line 793
    new-instance p1, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;)V

    invoke-virtual {v0, p1}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->setOnClickItemListener(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$OnClickItemListener;)V

    .line 797
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->listAdapter:Lcom/tgs/aics/selecttext/SelectTextPopAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;)Z
    .locals 0

    .line 750
    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method private isShowing()Z
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 855
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3300(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3300(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;->onDismissCustomPop()V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$com-tgs-aics-selecttext-SelectTextHelper$OperateWindow(I)V
    .locals 1

    .line 794
    invoke-virtual {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->dismiss()V

    .line 795
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4600(Lcom/tgs/aics/selecttext/SelectTextHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder$OnSeparateItemClickListener;

    invoke-interface {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder$OnSeparateItemClickListener;->onClick()V

    return-void
.end method

.method public show()V
    .locals 10

    .line 801
    invoke-static {}, Lcom/tgs/aics/selecttext/SelectUtils;->getDisplayWidth()I

    move-result v0

    .line 802
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4200(Lcom/tgs/aics/selecttext/SelectTextHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 803
    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4300(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_0

    .line 804
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v5}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2700(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v6}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4300(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v6

    invoke-direct {v2, v5, v6, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 806
    :cond_0
    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v6, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v6}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2700(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v1, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 808
    :goto_0
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mTempCoors:[I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 809
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 812
    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v2

    iget v2, v2, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mTempCoors:[I

    aget v5, v5, v4

    add-int/2addr v2, v5

    .line 813
    iget-object v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v5}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v5

    iget v5, v5, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mStart:I

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 814
    iget-object v6, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v6}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v6

    iget v6, v6, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 815
    iget-object v7, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mTempCoors:[I

    aget v3, v7, v3

    add-int/2addr v3, v5

    iget v8, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mHeight:I

    sub-int/2addr v3, v8

    if-gez v3, :cond_1

    move v3, v4

    :cond_1
    if-ne v5, v6, :cond_2

    .line 820
    iget-object v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v5}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$4500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;

    move-result-object v5

    iget v5, v5, Lcom/tgs/aics/selecttext/SelectTextHelper$SelectionInfo;->mEnd:I

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mTempCoors:[I

    aget v5, v5, v4

    add-int/2addr v1, v5

    add-int/2addr v2, v1

    .line 821
    div-int/lit8 v2, v2, 0x2

    iget v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 823
    :cond_2
    aget v1, v7, v4

    iget-object v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v5}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v5}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v1, v5

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iget v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    :goto_1
    sub-int/2addr v2, v1

    if-gtz v2, :cond_3

    move v0, v2

    move v2, v4

    goto :goto_2

    .line 829
    :cond_3
    iget v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWidth:I

    add-int v5, v2, v1

    if-le v5, v0, :cond_4

    sub-int/2addr v0, v1

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_2

    :cond_4
    move v0, v4

    .line 833
    :goto_2
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v5}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1, v5, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const/high16 v1, 0x41800000    # 16.0f

    if-nez v0, :cond_5

    .line 838
    iget v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result v1

    :goto_3
    sub-int/2addr v0, v1

    goto :goto_4

    :cond_5
    if-gez v0, :cond_6

    .line 840
    iget v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_4

    .line 843
    :cond_6
    iget v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result v1

    goto :goto_3

    :goto_4
    const/high16 v1, 0x40800000    # 4.0f

    .line 845
    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 846
    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result v0

    goto :goto_5

    .line 847
    :cond_7
    iget v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWidth:I

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_8

    .line 848
    iget v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->mWidth:I

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 850
    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->ivArrow:Landroid/widget/ImageView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method
