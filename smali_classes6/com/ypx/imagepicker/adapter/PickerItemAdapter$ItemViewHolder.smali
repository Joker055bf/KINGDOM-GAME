.class Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PickerItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/adapter/PickerItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemViewHolder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private context:Landroid/content/Context;

.field private pickerItemView:Lcom/ypx/imagepicker/views/base/PickerItemView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    const-class v0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    return-void
.end method

.method constructor <init>(Landroid/view/View;ZLcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;)V
    .locals 2

    .line 172
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->context:Landroid/content/Context;

    .line 174
    sget v0, Lcom/ypx/imagepicker/R$id;->mRoot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 175
    invoke-virtual {p0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->getScreenWidth()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p3}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getColumnCount()I

    move-result v1

    div-int/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 176
    invoke-static {p1, v0, v1}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->setViewSize(Landroid/view/View;IF)V

    .line 178
    invoke-virtual {p5}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getPickerUiProvider()Lcom/ypx/imagepicker/views/PickerUiProvider;

    move-result-object p5

    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p5, v0}, Lcom/ypx/imagepicker/views/PickerUiProvider;->getItemView(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerItemView;

    move-result-object p5

    iput-object p5, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->pickerItemView:Lcom/ypx/imagepicker/views/base/PickerItemView;

    .line 179
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 180
    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p5, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->dp(I)I

    move-result v1

    iput v1, p5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 183
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->dp(I)I

    move-result v1

    iput v1, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 184
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->dp(I)I

    move-result v1

    iput v1, p5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 185
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->dp(I)I

    move-result v0

    iput v0, p5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz p2, :cond_0

    .line 187
    iget-object p2, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->pickerItemView:Lcom/ypx/imagepicker/views/base/PickerItemView;

    invoke-virtual {p2, p3, p4}, Lcom/ypx/imagepicker/views/base/PickerItemView;->getCameraView(Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p2, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->pickerItemView:Lcom/ypx/imagepicker/views/base/PickerItemView;

    invoke-virtual {p1, p2, p5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;)Lcom/ypx/imagepicker/views/base/PickerItemView;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->pickerItemView:Lcom/ypx/imagepicker/views/base/PickerItemView;

    return-object p0
.end method


# virtual methods
.method dp(I)I
    .locals 2

    int-to-float p1, p1

    .line 202
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->context:Landroid/content/Context;

    .line 203
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 202
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method getScreenWidth()I
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 195
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 197
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 198
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
