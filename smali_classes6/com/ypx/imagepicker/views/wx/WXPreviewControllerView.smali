.class public Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;
.super Lcom/ypx/imagepicker/views/base/PreviewControllerView;
.source "WXPreviewControllerView.java"


# instance fields
.field private bottomBarColor:I

.field private currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

.field private isShowBottomBar:Z

.field private isShowCompleteBtn:Z

.field private isShowOriginal:Z

.field private mBottomBar:Landroid/widget/RelativeLayout;

.field private mOriginalCheckBox:Landroid/widget/CheckBox;

.field private mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelectCheckBox:Landroid/widget/CheckBox;

.field private mTitleContainer:Landroid/widget/FrameLayout;

.field private presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

.field private previewAdapter:Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;

.field private selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

.field private selectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

.field private titleBarColor:I

.field private uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->isShowOriginal:Z

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->isShowBottomBar:Z

    .line 54
    iput-boolean p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->isShowCompleteBtn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Landroid/widget/CheckBox;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mSelectCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/bean/ImageItem;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->selectedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/presenter/IPickerPresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)Lcom/ypx/imagepicker/views/base/PickerControllerView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->notifyPreviewList(Lcom/ypx/imagepicker/bean/ImageItem;)V

    return-void
.end method

.method private initPreviewList()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 175
    new-instance v0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;

    iget-object v1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->selectedList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-direct {v0, v1, v2}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;-><init>(Ljava/util/ArrayList;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->previewAdapter:Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;

    .line 176
    iget-object v1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 177
    new-instance v0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;

    iget-object v1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->previewAdapter:Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;

    invoke-direct {v0, v1}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;-><init>(Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperAdapter;)V

    .line 178
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 179
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private initUI()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getPickerUiProvider()Lcom/ypx/imagepicker/views/PickerUiProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/views/PickerUiProvider;->getTitleBar(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerControllerView;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mTitleContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mSelectCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$1;-><init>(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mOriginalCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$2;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView$2;-><init>(Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private notifyPreviewList(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->previewAdapter:Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->setPreviewImageItem(Lcom/ypx/imagepicker/bean/ImageItem;)V

    .line 189
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->selectedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->selectedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCompleteView()Landroid/view/View;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getCanClickToCompleteView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemView(Landroidx/fragment/app/Fragment;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Landroid/view/View;
    .locals 0

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getItemView(Landroidx/fragment/app/Fragment;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getLayoutId()I
    .locals 1

    .line 62
    sget v0, Lcom/ypx/imagepicker/R$layout;->picker_wx_preview_bottombar:I

    return v0
.end method

.method public hideBottomBar()V
    .locals 1

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->isShowBottomBar:Z

    return-void
.end method

.method public hideCompleteBtn()V
    .locals 1

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->isShowCompleteBtn:Z

    return-void
.end method

.method public initData(Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;",
            "Lcom/ypx/imagepicker/presenter/IPickerPresenter;",
            "Lcom/ypx/imagepicker/views/PickerUiConfig;",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    .line 106
    iput-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    .line 107
    iput-object p4, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->selectedList:Ljava/util/ArrayList;

    .line 108
    iput-object p3, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    .line 109
    instance-of p2, p1, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isShowOriginalCheckBox()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->isShowOriginal:Z

    .line 110
    invoke-direct {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->initUI()V

    .line 111
    invoke-direct {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->initPreviewList()V

    .line 112
    iget-boolean p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->isShowBottomBar:Z

    const/16 p2, 0x8

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 120
    :goto_1
    iget-boolean p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->isShowCompleteBtn:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getCanClickToCompleteView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 121
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getCanClickToCompleteView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 68
    sget v0, Lcom/ypx/imagepicker/R$id;->mPreviewRecyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    sget v0, Lcom/ypx/imagepicker/R$id;->bottom_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mBottomBar:Landroid/widget/RelativeLayout;

    .line 70
    sget v0, Lcom/ypx/imagepicker/R$id;->mSelectCheckBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mSelectCheckBox:Landroid/widget/CheckBox;

    .line 71
    sget v0, Lcom/ypx/imagepicker/R$id;->mOriginalCheckBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mOriginalCheckBox:Landroid/widget/CheckBox;

    .line 72
    sget v0, Lcom/ypx/imagepicker/R$id;->mTitleContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mTitleContainer:Landroid/widget/FrameLayout;

    .line 73
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mBottomBar:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 74
    sget p1, Lcom/ypx/imagepicker/R$mipmap;->picker_wechat_unselect:I

    sget v0, Lcom/ypx/imagepicker/R$mipmap;->picker_wechat_select:I

    invoke-virtual {p0, p1, v0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->setOriginalCheckBoxDrawable(II)V

    .line 75
    sget p1, Lcom/ypx/imagepicker/R$mipmap;->picker_wechat_unselect:I

    sget v0, Lcom/ypx/imagepicker/R$mipmap;->picker_wechat_select:I

    invoke-virtual {p0, p1, v0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->setSelectCheckBoxDrawable(II)V

    .line 76
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mOriginalCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_bottom_original:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mSelectCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_bottom_choose:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPageSelected(ILcom/ypx/imagepicker/bean/ImageItem;I)V
    .locals 4

    .line 229
    iput-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    .line 230
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%d/%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->setTitle(Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mSelectCheckBox:Landroid/widget/CheckBox;

    iget-object p3, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->selectedList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    invoke-direct {p0, p2}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->notifyPreviewList(Lcom/ypx/imagepicker/bean/ImageItem;)V

    .line 233
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    iget-object p3, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->selectedList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {p1, p3, v0}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->refreshCompleteViewState(Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V

    .line 235
    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->isShowOriginal:Z

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mOriginalCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mOriginalCheckBox:Landroid/widget/CheckBox;

    sget-boolean p2, Lcom/ypx/imagepicker/ImagePicker;->isOriginalImage:Z

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mOriginalCheckBox:Landroid/widget/CheckBox;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setBottomBarColor(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->bottomBarColor:I

    return-void
.end method

.method public setOriginalCheckBoxDrawable(II)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mOriginalCheckBox:Landroid/widget/CheckBox;

    invoke-static {v0, p2, p1}, Lcom/ypx/imagepicker/utils/PCornerUtils;->setCheckBoxDrawable(Landroid/widget/CheckBox;II)V

    return-void
.end method

.method public setSelectCheckBoxDrawable(II)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mSelectCheckBox:Landroid/widget/CheckBox;

    invoke-static {v0, p2, p1}, Lcom/ypx/imagepicker/utils/PCornerUtils;->setCheckBoxDrawable(Landroid/widget/CheckBox;II)V

    return-void
.end method

.method public setStatusBar()V
    .locals 4

    .line 87
    iget v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBarColor:I

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$color;->white_F5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBarColor:I

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mTitleContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBarColor:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 92
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 93
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBarColor:I

    .line 94
    invoke-static {v1}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->isDarkColor(I)Z

    move-result v1

    const/4 v3, 0x1

    .line 93
    invoke-static {v0, v2, v3, v1}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->setStatusBar(Landroid/app/Activity;IZZ)V

    .line 96
    iget v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->bottomBarColor:I

    if-nez v0, :cond_1

    const-string v0, "#f0303030"

    .line 97
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->bottomBarColor:I

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mBottomBar:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->bottomBarColor:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 100
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->bottomBarColor:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    return-void
.end method

.method public setTitleBarColor(I)V
    .locals 0

    .line 252
    iput p1, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->titleBarColor:I

    return-void
.end method

.method public singleTap()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/ypx/imagepicker/R$anim;->picker_top_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 205
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mTitleContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 206
    iget-boolean v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->isShowBottomBar:Z

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/ypx/imagepicker/R$anim;->picker_fade_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 208
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/ypx/imagepicker/R$anim;->picker_fade_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 210
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/ypx/imagepicker/R$anim;->picker_top_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 214
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mTitleContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 215
    iget-boolean v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->isShowBottomBar:Z

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/ypx/imagepicker/R$anim;->picker_fade_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 217
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/ypx/imagepicker/R$anim;->picker_fade_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 219
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;->mPreviewRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
