.class public Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;
.super Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;
.source "MultiImagePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;
.implements Lcom/ypx/imagepicker/data/IReloadExecutor;


# instance fields
.field private bottomBarContainer:Landroid/widget/FrameLayout;

.field private currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

.field private emptyView:Landroid/widget/LinearLayout;

.field private imageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private imageSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            ">;"
        }
    .end annotation
.end field

.field private isLoadMediaSetsComplete:Z

.field private isNeedReloadMedia:Z

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private loadMoreMediaBtn:Landroid/widget/Button;

.field private loadMoreMediaCardView:Landroidx/cardview/widget/CardView;

.field private mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

.field private mContext:Landroidx/fragment/app/FragmentActivity;

.field private mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mImageSetAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTvTime:Landroid/widget/TextView;

.field private onImagePickCompleteListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

.field private onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

.field private selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

.field private titleBarContainer:Landroid/widget/FrameLayout;

.field private uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

.field private v_masker:Landroid/view/View;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageSets:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->isLoadMediaSetsComplete:Z

    .line 88
    iput-boolean v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->isNeedReloadMedia:Z

    .line 190
    new-instance v0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$1;-><init>(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mTvTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;IZ)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectImageFromSet(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Lcom/ypx/imagepicker/adapter/PickerItemAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private findView()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->v_masker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->v_masker:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->mRecyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 169
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->manager_card_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->loadMoreMediaCardView:Landroidx/cardview/widget/CardView;

    .line 170
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->manager_media_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->loadMoreMediaBtn:Landroid/widget/Button;

    .line 171
    new-instance v1, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->mSetRecyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->tv_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mTvTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->titleBarContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->titleBarContainer:Landroid/widget/FrameLayout;

    .line 180
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->bottomBarContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->bottomBarContainer:Landroid/widget/FrameLayout;

    .line 181
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->mEmptyView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->emptyView:Landroid/widget/LinearLayout;

    .line 182
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->mEmptyView_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 183
    new-instance v1, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->initAdapters()V

    .line 185
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->initUI()V

    .line 186
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->setListener()V

    .line 187
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->refreshCompleteState()V

    return-void
.end method

.method private initAdapters()V
    .locals 8

    .line 250
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 251
    new-instance v0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-direct {v0, v1, v2}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;-><init>(Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mImageSetAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    .line 252
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 253
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mImageSetAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageSets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->refreshData(Ljava/util/List;)V

    .line 255
    new-instance v0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    iget-object v6, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v7, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/List;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    const/4 v1, 0x1

    .line 256
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->setHasStableIds(Z)V

    .line 257
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    invoke-virtual {v0, p0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->setOnActionResult(Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;)V

    .line 258
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getColumnCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 259
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 261
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 264
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initUI()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getPickerBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 225
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->titleBarContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->inflateControllerView(Landroid/view/ViewGroup;ZLcom/ypx/imagepicker/views/PickerUiConfig;)Lcom/ypx/imagepicker/views/base/PickerControllerView;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    .line 226
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->bottomBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->inflateControllerView(Landroid/view/ViewGroup;ZLcom/ypx/imagepicker/views/PickerUiConfig;)Lcom/ypx/imagepicker/views/base/PickerControllerView;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    .line 227
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->v_masker:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->setFolderListHeight(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Z)V

    .line 229
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isLandscape()Z

    move-result v1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ypx/imagepicker/utils/CommonUtil;->setSafeArea(Landroid/view/View;ZI)V

    return-void
.end method

.method private intentCrop(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 4

    .line 499
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    new-instance v3, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$3;

    invoke-direct {v3, p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$3;-><init>(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/ypx/imagepicker/ImagePicker;->crop(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-void
.end method

.method private isIntentDataValid()Z
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "MultiSelectConfig"

    .line 103
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    iput-object v2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    const-string v2, "IPickerPresenter"

    .line 104
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->onImagePickCompleteListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    .line 107
    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v2

    .line 106
    invoke-static {v0, v2}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;I)V

    return v1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->onImagePickCompleteListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->SELECT_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    .line 112
    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v2

    .line 111
    invoke-static {v0, v2}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;I)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private selectImageFromSet(IZ)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageSet;

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    if-eqz p2, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->toggleFolderList()V

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageSets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ypx/imagepicker/bean/ImageSet;

    .line 278
    iput-boolean v0, p2, Lcom/ypx/imagepicker/bean/ImageSet;->isSelected:Z

    goto :goto_0

    .line 280
    :cond_1
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/ypx/imagepicker/bean/ImageSet;->isSelected:Z

    .line 281
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mImageSetAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->notifyDataSetChanged()V

    .line 282
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageSet;->isAllMedia()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 283
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isShowCameraInAllMedia()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 284
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1, p2}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setShowCamera(Z)V

    goto :goto_1

    .line 287
    :cond_2
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isShowCameraInAllMedia()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 288
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setShowCamera(Z)V

    .line 291
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->loadMediaItemsFromSet(Lcom/ypx/imagepicker/bean/ImageSet;)V

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->v_masker:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 238
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mImageSetAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    new-instance v1, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$2;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$2;-><init>(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)V

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->setFolderSelectResult(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;)V

    return-void
.end method


# virtual methods
.method protected getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    return-object v0
.end method

.method protected getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    return-object v0
.end method

.method protected getUiConfig()Lcom/ypx/imagepicker/views/PickerUiConfig;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    return-object v0
.end method

.method protected intentPreview(ZI)V
    .locals 8

    if-nez p1, :cond_1

    .line 517
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    iget-object v5, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    new-instance v7, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$4;

    invoke-direct {v7, p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$4;-><init>(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)V

    move v6, p2

    invoke-static/range {v1 .. v7}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->intent(Landroid/app/Activity;Lcom/ypx/imagepicker/bean/ImageSet;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;ILcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;)V

    return-void
.end method

.method synthetic lambda$findView$0$com-ypx-imagepicker-activity-multi-MultiImagePickerFragment(Landroid/view/View;)V
    .locals 1

    .line 172
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->isNeedReloadMedia:Z

    :cond_0
    return-void
.end method

.method synthetic lambda$findView$1$com-ypx-imagepicker-activity-multi-MultiImagePickerFragment(Landroid/view/View;)V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->create(Landroid/content/Context;)Lcom/ypx/imagepicker/utils/PPermissionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->gotoPermissionSet()V

    return-void
.end method

.method protected loadMediaItemsComplete(Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 1

    .line 353
    iget-object v0, p1, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageItems:Ljava/util/ArrayList;

    .line 354
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->controllerViewOnImageSetSelected(Lcom/ypx/imagepicker/bean/ImageSet;)V

    .line 355
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method protected loadMediaSetsComplete(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            ">;)V"
        }
    .end annotation

    .line 327
    iget-boolean v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->isLoadMediaSetsComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->isNeedReloadMedia:Z

    if-nez v0, :cond_0

    const-string p1, "aics.MIPF"

    const-string v0, "loadMediaSetsComplete has done"

    .line 328
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->isLoadMediaSetsComplete:Z

    const/4 v1, 0x0

    .line 333
    iput-boolean v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->isNeedReloadMedia:Z

    .line 334
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->emptyView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    const/16 v3, 0x8

    .line 335
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_3

    .line 337
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/ImageSet;

    iget v0, v0, Lcom/ypx/imagepicker/bean/ImageSet;->count:I

    if-nez v0, :cond_2

    goto :goto_0

    .line 346
    :cond_2
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageSets:Ljava/util/List;

    .line 347
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mImageSetAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->refreshData(Ljava/util/List;)V

    .line 348
    invoke-direct {p0, v1, v1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectImageFromSet(IZ)V

    return-void

    .line 339
    :cond_3
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_4

    .line 340
    sget p1, Lcom/ypx/imagepicker/R$string;->picker_str_tip_media_empty:I

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->tip(Ljava/lang/String;)V

    goto :goto_1

    .line 342
    :cond_4
    sget p1, Lcom/ypx/imagepicker/R$string;->picker_str_tip_media_empty:I

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->tip(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected notifyPickerComplete()V
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-interface {v0, v1, v2, v3}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->interceptPickerCompleteClick(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->onImagePickCompleteListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 546
    sget-boolean v2, Lcom/ypx/imagepicker/ImagePicker;->isOriginalImage:Z

    iput-boolean v2, v1, Lcom/ypx/imagepicker/bean/ImageItem;->isOriginalImage:Z

    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->onImagePickCompleteListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;->onImagePickComplete(Ljava/util/ArrayList;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->toggleFolderList()V

    return v1

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v3}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->interceptPickerCancel(Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->onImagePickCompleteListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    sget-object v1, Lcom/ypx/imagepicker/bean/PickerError;->CANCEL:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public onCheckItem(Lcom/ypx/imagepicker/bean/ImageItem;I)V
    .locals 9

    .line 461
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getSelectMode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    .line 462
    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getMaxCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    .line 463
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 464
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 465
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 467
    :cond_0
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 468
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->interceptClickDisableItem(IZ)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 477
    :cond_2
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    invoke-virtual {p2}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->isPreformClick()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    iget-object v6, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    const/4 v7, 0x1

    move-object v2, p1

    move-object v8, p0

    invoke-interface/range {v0 .. v8}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->interceptItemClick(Landroid/app/Activity;Lcom/ypx/imagepicker/bean/ImageItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/adapter/PickerItemAdapter;ZLcom/ypx/imagepicker/data/IReloadExecutor;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 483
    :cond_3
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 484
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    :cond_4
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :goto_0
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->notifyDataSetChanged()V

    .line 490
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->refreshCompleteState()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->onDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->v_masker:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->toggleFolderList()V

    :cond_1
    return-void
.end method

.method public onClickItem(Lcom/ypx/imagepicker/bean/ImageItem;II)V
    .locals 9

    .line 403
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isShowCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    if-gez p2, :cond_2

    .line 405
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isShowCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->interceptCameraClick(Landroid/app/Activity;Lcom/ypx/imagepicker/data/ICameraExecutor;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->checkTakePhotoOrVideo()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0, p3, v0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->interceptClickDisableItem(IZ)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 417
    :cond_3
    iget-object p3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 420
    iget-object p3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p3}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getSelectMode()I

    move-result p3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_6

    .line 421
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isGif()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 424
    :cond_4
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->intentCrop(Lcom/ypx/imagepicker/bean/ImageItem;)V

    goto :goto_1

    .line 422
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->notifyOnSingleImagePickComplete(Lcom/ypx/imagepicker/bean/ImageItem;)V

    :goto_1
    return-void

    .line 430
    :cond_6
    iget-object p3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    invoke-virtual {p3}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->isPreformClick()Z

    move-result p3

    if-nez p3, :cond_7

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    iget-object v6, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v8, p0

    invoke-interface/range {v0 .. v8}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->interceptItemClick(Landroid/app/Activity;Lcom/ypx/imagepicker/bean/ImageItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/adapter/PickerItemAdapter;ZLcom/ypx/imagepicker/data/IReloadExecutor;)Z

    move-result p3

    if-eqz p3, :cond_7

    return-void

    .line 436
    :cond_7
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p3}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isVideoSinglePickAndAutoComplete()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 437
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->notifyOnSingleImagePickComplete(Lcom/ypx/imagepicker/bean/ImageItem;)V

    return-void

    .line 442
    :cond_8
    iget-object p3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p3}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getMaxCount()I

    move-result p3

    const/4 v0, 0x1

    if-gt p3, v0, :cond_9

    iget-object p3, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p3}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isSinglePickAutoComplete()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 443
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->notifyOnSingleImagePickComplete(Lcom/ypx/imagepicker/bean/ImageItem;)V

    return-void

    .line 448
    :cond_9
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isCanPreviewVideo()Z

    move-result p1

    if-nez p1, :cond_a

    .line 449
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/ypx/imagepicker/R$string;->picker_str_tip_cant_preview_video:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->tip(Ljava/lang/String;)V

    return-void

    .line 454
    :cond_a
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isPreview()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 455
    invoke-virtual {p0, v0, p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->intentPreview(ZI)V

    :cond_b
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 93
    sget p3, Lcom/ypx/imagepicker/R$layout;->picker_activity_multipick:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/views/PickerUiConfig;->setPickerUiProvider(Lcom/ypx/imagepicker/views/PickerUiProvider;)V

    .line 570
    iput-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    .line 571
    iput-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    .line 572
    invoke-super {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->onResume()V

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->loadMediaSets(Z)V

    return-void
.end method

.method public onTakePhotoResult(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getSelectMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 372
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->intentCrop(Lcom/ypx/imagepicker/bean/ImageItem;)V

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getSelectMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 377
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->notifyOnSingleImagePickComplete(Lcom/ypx/imagepicker/bean/ImageItem;)V

    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageSets:Ljava/util/List;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->addItemInImageSets(Ljava/util/List;Ljava/util/List;Lcom/ypx/imagepicker/bean/ImageItem;)V

    .line 382
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->refreshData(Ljava/util/List;)V

    .line 383
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mImageSetAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageSets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->refreshData(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->onCheckItem(Lcom/ypx/imagepicker/bean/ImageItem;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 131
    invoke-super {p0, p1, p2}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    .line 133
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->isIntentDataValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isDefaultOriginal()Z

    move-result p1

    sput-boolean p1, Lcom/ypx/imagepicker/ImagePicker;->isOriginalImage:Z

    .line 135
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->getUiConfig(Landroid/content/Context;)Lcom/ypx/imagepicker/views/PickerUiConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    .line 136
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->setStatusBar()V

    .line 137
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->findView()V

    .line 138
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getLastImageList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getLastImageList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->loadMediaSets(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->refreshCompleteState()V

    :cond_1
    return-void
.end method

.method protected refreshAllVideoSet(Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p1, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    .line 361
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageSets:Ljava/util/List;

    .line 362
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageSets:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 364
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mImageSetAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageSets:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->refreshData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected refuseStoragePermissionCallback()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->emptyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "PermissionRecordPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "refused_storage_permission"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public reloadPickerWithList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 578
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 579
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->imageItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->refreshData(Ljava/util/List;)V

    .line 580
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->refreshCompleteState()V

    return-void
.end method

.method public setOnImagePickCompleteListener(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->onImagePickCompleteListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    return-void
.end method

.method protected toggleFolderList()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->controllerViewOnTransitImageSet(Z)V

    .line 302
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->v_masker:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    .line 305
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/views/PickerUiConfig;->isShowFromBottom()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/ypx/imagepicker/R$anim;->picker_show2bottom:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/ypx/imagepicker/R$anim;->picker_anim_in:I

    .line 304
    :goto_0
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 307
    :cond_1
    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->controllerViewOnTransitImageSet(Z)V

    .line 308
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->v_masker:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    .line 311
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/views/PickerUiConfig;->isShowFromBottom()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/ypx/imagepicker/R$anim;->picker_hide2bottom:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/ypx/imagepicker/R$anim;->picker_anim_up:I

    .line 310
    :goto_1
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    return-void
.end method
