.class public Lcom/ypx/imagepicker/adapter/PickerItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PickerItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;,
        Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_CAMERA:I = 0x0

.field private static final ITEM_TYPE_NORMAL:I = 0x1


# instance fields
.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private isPreformClick:Z

.field private onActionResult:Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;

.field private presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

.field private selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

.field private selectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/List;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;",
            "Lcom/ypx/imagepicker/presenter/IPickerPresenter;",
            "Lcom/ypx/imagepicker/views/PickerUiConfig;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->isPreformClick:Z

    .line 49
    iput-object p2, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->images:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->selectList:Ljava/util/ArrayList;

    .line 51
    iput-object p3, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    .line 52
    iput-object p4, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    .line 53
    iput-object p5, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    return-void
.end method

.method private getItem(I)Lcom/ypx/imagepicker/bean/ImageItem;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->images:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageItem;

    return-object p1

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageItem;

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowCamera()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public isPreformClick()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->isPreformClick:Z

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-ypx-imagepicker-adapter-PickerItemAdapter(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->preformClickItem(Lcom/ypx/imagepicker/bean/ImageItem;I)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-ypx-imagepicker-adapter-PickerItemAdapter(Lcom/ypx/imagepicker/bean/ImageItem;ILandroid/view/View;)V
    .locals 1

    .line 111
    iget-object p3, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->onActionResult:Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->isPreformClick:Z

    .line 113
    invoke-interface {p3, p1, p2}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;->onCheckItem(Lcom/ypx/imagepicker/bean/ImageItem;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$2$com-ypx-imagepicker-adapter-PickerItemAdapter(Lcom/ypx/imagepicker/bean/ImageItem;IILandroid/view/View;)V
    .locals 1

    .line 119
    iget-object p4, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->onActionResult:Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->isPreformClick:Z

    .line 121
    invoke-interface {p4, p1, p2, p3}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;->onClickItem(Lcom/ypx/imagepicker/bean/ImageItem;II)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 33
    check-cast p1, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->onBindViewHolder(Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;I)V
    .locals 7

    .line 93
    invoke-virtual {p0, p2}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->getItemViewType(I)I

    move-result v0

    .line 94
    invoke-direct {p0, p2}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->getItem(I)Lcom/ypx/imagepicker/bean/ImageItem;

    move-result-object v1

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto :goto_2

    .line 99
    :cond_0
    invoke-static {p1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->access$000(Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;)Lcom/ypx/imagepicker/views/base/PickerItemView;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 101
    :goto_0
    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/views/base/PickerItemView;->setPosition(I)V

    .line 102
    invoke-virtual {p1, p0}, Lcom/ypx/imagepicker/views/base/PickerItemView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 103
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v2, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {p1, v1, v0, v2}, Lcom/ypx/imagepicker/views/base/PickerItemView;->initItem(Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V

    .line 105
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 107
    :goto_1
    iget-object v5, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    iget-object v6, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->selectList:Ljava/util/ArrayList;

    invoke-static {v1, v5, v6, v4}, Lcom/ypx/imagepicker/bean/PickerItemDisableCode;->getItemDisableCode(Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Ljava/util/ArrayList;Z)I

    move-result v4

    .line 109
    invoke-virtual {p1}, Lcom/ypx/imagepicker/views/base/PickerItemView;->getCheckBoxView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 110
    invoke-virtual {p1}, Lcom/ypx/imagepicker/views/base/PickerItemView;->getCheckBoxView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v1, v4}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/ypx/imagepicker/adapter/PickerItemAdapter;Lcom/ypx/imagepicker/bean/ImageItem;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_3
    new-instance v5, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v1, p2, v4}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/ypx/imagepicker/adapter/PickerItemAdapter;Lcom/ypx/imagepicker/bean/ImageItem;II)V

    invoke-virtual {p1, v5}, Lcom/ypx/imagepicker/views/base/PickerItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-ltz v0, :cond_4

    move v2, v3

    .line 125
    :cond_4
    invoke-virtual {p1, v1, v2, v0}, Lcom/ypx/imagepicker/views/base/PickerItemView;->enableItem(Lcom/ypx/imagepicker/bean/ImageItem;ZI)V

    if-eqz v4, :cond_5

    .line 127
    invoke-virtual {p1, v1, v4}, Lcom/ypx/imagepicker/views/base/PickerItemView;->disableItem(Lcom/ypx/imagepicker/bean/ImageItem;I)V

    :cond_5
    return-void

    .line 96
    :cond_6
    :goto_2
    iget-object p1, p1, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ypx/imagepicker/adapter/PickerItemAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;
    .locals 7

    .line 84
    new-instance v6, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$layout;->picker_item_root:I

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    move v2, p1

    :cond_0
    iget-object v3, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    iget-object v4, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v5, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$ItemViewHolder;-><init>(Landroid/view/View;ZLcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;)V

    return-object v6
.end method

.method public preformCheckItem(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->onActionResult:Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->isPreformClick:Z

    const/4 v1, 0x0

    .line 64
    invoke-interface {v0, p1, v1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;->onCheckItem(Lcom/ypx/imagepicker/bean/ImageItem;I)V

    :cond_0
    return-void
.end method

.method public preformClickItem(Lcom/ypx/imagepicker/bean/ImageItem;I)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->onActionResult:Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->isPreformClick:Z

    const/4 v1, 0x0

    .line 77
    invoke-interface {v0, p1, p2, v1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;->onClickItem(Lcom/ypx/imagepicker/bean/ImageItem;II)V

    :cond_0
    return-void
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->images:Ljava/util/List;

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionResult(Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->onActionResult:Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;

    return-void
.end method
