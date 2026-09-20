.class Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PickerFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private pickerFolderItemView:Lcom/ypx/imagepicker/views/base/PickerFolderItemView;

.field final synthetic this$0:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;Landroid/view/View;Lcom/ypx/imagepicker/views/PickerUiConfig;)V
    .locals 1

    .line 83
    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;->this$0:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    .line 84
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 85
    invoke-virtual {p3}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getPickerUiProvider()Lcom/ypx/imagepicker/views/PickerUiProvider;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ypx/imagepicker/views/PickerUiProvider;->getFolderItemView(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerFolderItemView;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;->pickerFolderItemView:Lcom/ypx/imagepicker/views/base/PickerFolderItemView;

    if-nez p1, :cond_0

    .line 87
    new-instance p1, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;->pickerFolderItemView:Lcom/ypx/imagepicker/views/base/PickerFolderItemView;

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/ypx/imagepicker/R$id;->mRoot:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 90
    iget-object p2, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;->pickerFolderItemView:Lcom/ypx/imagepicker/views/base/PickerFolderItemView;

    invoke-virtual {p2}, Lcom/ypx/imagepicker/views/base/PickerFolderItemView;->getItemHeight()I

    move-result p2

    .line 91
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, -0x2

    :goto_0
    const/4 v0, -0x1

    .line 92
    invoke-direct {p3, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 94
    iget-object p2, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;->pickerFolderItemView:Lcom/ypx/imagepicker/views/base/PickerFolderItemView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;)Lcom/ypx/imagepicker/views/base/PickerFolderItemView;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$ViewHolder;->pickerFolderItemView:Lcom/ypx/imagepicker/views/base/PickerFolderItemView;

    return-object p0
.end method
