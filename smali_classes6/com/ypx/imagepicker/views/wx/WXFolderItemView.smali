.class public Lcom/ypx/imagepicker/views/wx/WXFolderItemView;
.super Lcom/ypx/imagepicker/views/base/PickerFolderItemView;
.source "WXFolderItemView.java"


# instance fields
.field private mCover:Landroid/widget/ImageView;

.field private mDivider:Landroid/view/View;

.field private mIndicator:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;

.field private mSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/PickerFolderItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public displayCoverImage(Lcom/ypx/imagepicker/bean/ImageSet;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->getThemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 56
    iget-object v0, p1, Lcom/ypx/imagepicker/bean/ImageSet;->cover:Lcom/ypx/imagepicker/bean/ImageItem;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mCover:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/ypx/imagepicker/bean/ImageSet;->cover:Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object v2, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    invoke-interface {p2, v0, p1, v2, v1}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->displayImage(Landroid/view/View;Lcom/ypx/imagepicker/bean/ImageItem;IZ)V

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {v0}, Lcom/ypx/imagepicker/bean/ImageItem;-><init>()V

    .line 60
    iget-object v2, p1, Lcom/ypx/imagepicker/bean/ImageSet;->coverPath:Ljava/lang/String;

    iput-object v2, v0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    .line 61
    iget-object p1, p1, Lcom/ypx/imagepicker/bean/ImageSet;->coverPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/ImageItem;->setUriPath(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mCover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    invoke-interface {p2, p1, v0, v2, v1}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->displayImage(Landroid/view/View;Lcom/ypx/imagepicker/bean/ImageItem;IZ)V

    :goto_0
    return-void
.end method

.method public getItemHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 34
    sget v0, Lcom/ypx/imagepicker/R$layout;->picker_folder_item:I

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    .line 39
    sget v0, Lcom/ypx/imagepicker/R$id;->cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mCover:Landroid/widget/ImageView;

    .line 40
    sget v0, Lcom/ypx/imagepicker/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mName:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/ypx/imagepicker/R$id;->size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mSize:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/ypx/imagepicker/R$id;->indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mIndicator:Landroid/widget/ImageView;

    .line 43
    sget v0, Lcom/ypx/imagepicker/R$id;->mDivider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mDivider:Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/ypx/imagepicker/R$drawable;->picker_selector_list_item_bg:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->getThemeColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public loadItem(Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ypx/imagepicker/bean/ImageSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mSize:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/ypx/imagepicker/bean/ImageSet;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 71
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/ypx/imagepicker/R$string;->picker_str_folder_image_unit:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%d%s"

    .line 70
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-boolean p1, p1, Lcom/ypx/imagepicker/bean/ImageSet;->isSelected:Z

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mIndicator:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setCountTextColor(I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mSize:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNameTextColor(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
