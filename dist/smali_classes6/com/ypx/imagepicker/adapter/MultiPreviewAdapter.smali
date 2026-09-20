.class public Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MultiPreviewAdapter.java"

# interfaces
.implements Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;",
        ">;",
        "Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperAdapter;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

.field private previewImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

.field private previewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Lcom/ypx/imagepicker/presenter/IPickerPresenter;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->previewList:Ljava/util/ArrayList;

    .line 40
    iput-object p2, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    return-void
.end method

.method static synthetic access$100(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public dp(F)I
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->previewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->onBindViewHolder(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;I)V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->previewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 61
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->previewImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/ypx/imagepicker/bean/ImageItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 62
    :goto_0
    invoke-static {p1}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;->access$000(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;)Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    move-result-object v3

    invoke-static {}, Lcom/ypx/imagepicker/ImagePicker;->getThemeColor()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->setSelect(ZI)V

    .line 63
    invoke-static {p1}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;->access$000(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;)Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->setTypeFromImage(Lcom/ypx/imagepicker/bean/ImageItem;)V

    .line 64
    invoke-static {p1}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;->access$000(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;)Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    move-result-object v0

    new-instance v3, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$1;-><init>(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;Lcom/ypx/imagepicker/bean/ImageItem;)V

    invoke-virtual {v0, v3}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-static {p1}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;->access$000(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;)Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    move-result-object p1

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->displayImage(Landroid/view/View;Lcom/ypx/imagepicker/bean/ImageItem;IZ)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;
    .locals 2

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->context:Landroid/content/Context;

    .line 47
    new-instance p1, Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    iget-object p2, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->dp(F)I

    move-result v0

    invoke-direct {p2, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 49
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->dp(F)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 50
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->dp(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 51
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->dp(F)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 52
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->dp(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 53
    invoke-virtual {p1, p2}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 55
    new-instance p2, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onItemDismiss(I)V
    .locals 0

    return-void
.end method

.method public onItemMove(II)Z
    .locals 2

    const/4 v0, 0x1

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->previewList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->previewList:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->previewList:Ljava/util/ArrayList;

    invoke-static {v1, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->notifyItemMoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public setPreviewImageItem(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->previewImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    .line 35
    invoke-virtual {p0}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->notifyDataSetChanged()V

    return-void
.end method
