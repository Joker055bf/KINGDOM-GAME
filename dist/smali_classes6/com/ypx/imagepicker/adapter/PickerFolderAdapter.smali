.class public Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PickerFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;,
        Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private folderSelectResult:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;

.field private mImageSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

.field private uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;


# direct methods
.method public constructor <init>(Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->mImageSets:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    .line 34
    iput-object p2, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    return-void
.end method

.method static synthetic access$100(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;)Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->folderSelectResult:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;I)Lcom/ypx/imagepicker/bean/ImageSet;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->getItem(I)Lcom/ypx/imagepicker/bean/ImageSet;

    move-result-object p0

    return-object p0
.end method

.method private getItem(I)Lcom/ypx/imagepicker/bean/ImageSet;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->mImageSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageSet;

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->mImageSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->onBindViewHolder(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;I)V
    .locals 2

    .line 56
    invoke-direct {p0, p2}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->getItem(I)Lcom/ypx/imagepicker/bean/ImageSet;

    move-result-object v0

    .line 57
    invoke-static {p1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;->access$000(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;)Lcom/ypx/imagepicker/views/base/PickerFolderItemView;

    move-result-object p1

    .line 58
    iget-object v1, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-virtual {p1, v0, v1}, Lcom/ypx/imagepicker/views/base/PickerFolderItemView;->displayCoverImage(Lcom/ypx/imagepicker/bean/ImageSet;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)V

    .line 59
    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/views/base/PickerFolderItemView;->loadItem(Lcom/ypx/imagepicker/bean/ImageSet;)V

    .line 60
    new-instance v0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$1;-><init>(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;I)V

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/views/base/PickerFolderItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;
    .locals 2

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/ypx/imagepicker/R$layout;->picker_item_root:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    new-instance p2, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-direct {p2, p0, p1, v0}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;-><init>(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;Landroid/view/View;Lcom/ypx/imagepicker/views/PickerUiConfig;)V

    return-object p2
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->mImageSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->mImageSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    invoke-virtual {p0}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFolderSelectResult(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->folderSelectResult:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;

    return-void
.end method
