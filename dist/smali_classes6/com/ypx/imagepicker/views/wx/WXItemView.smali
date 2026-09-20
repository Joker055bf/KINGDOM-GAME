.class public Lcom/ypx/imagepicker/views/wx/WXItemView;
.super Lcom/ypx/imagepicker/views/base/PickerItemView;
.source "WXItemView.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxPanel:Landroid/widget/FrameLayout;

.field private mImageView:Lcom/ypx/imagepicker/widget/ShowTypeImageView;

.field private mVMasker:Landroid/view/View;

.field private mVideoLayout:Landroid/widget/LinearLayout;

.field private mVideoTime:Landroid/widget/TextView;

.field private selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/PickerItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public disableItem(Lcom/ypx/imagepicker/bean/ImageItem;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mVMasker:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mVMasker:Landroid/view/View;

    const-string p2, "#80FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public enableItem(Lcom/ypx/imagepicker/bean/ImageItem;ZI)V
    .locals 3

    .line 98
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result p3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 99
    iget-object p3, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mVideoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object p3, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mVideoTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->getDurationFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p3, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mImageView:Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    const/4 v2, 0x3

    invoke-virtual {p3, v2}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->setType(I)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p3, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mVideoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object p3, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mImageView:Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    invoke-virtual {p3, p1}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->setTypeFromImage(Lcom/ypx/imagepicker/bean/ImageItem;)V

    .line 108
    :goto_0
    iget-object p3, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 109
    iget-object p3, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mCheckBoxPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 111
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isVideoSinglePickAndAutoComplete()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p3

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-nez p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isSinglePickAutoComplete()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMaxCount()I

    move-result p1

    if-gt p1, p3, :cond_3

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mCheckBoxPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mVMasker:Landroid/view/View;

    if-eqz p2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mVMasker:Landroid/view/View;

    if-eqz p2, :cond_5

    const-string p2, "#80000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public getCameraView(Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Landroid/view/View;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXItemView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/ypx/imagepicker/R$layout;->picker_item_camera:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    sget v0, Lcom/ypx/imagepicker/R$id;->tv_camera:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isOnlyShowVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_item_take_video:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_item_take_photo:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 68
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getCheckBoxView()Landroid/view/View;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mCheckBoxPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 45
    sget v0, Lcom/ypx/imagepicker/R$layout;->picker_image_grid_item:I

    return v0
.end method

.method public initItem(Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V
    .locals 2

    .line 81
    iput-object p3, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    .line 82
    iget-object p3, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mImageView:Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    invoke-virtual {p3}, Lcom/ypx/imagepicker/widget/ShowTypeImageView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p2, p3, p1, v0, v1}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->displayImage(Landroid/view/View;Lcom/ypx/imagepicker/bean/ImageItem;IZ)V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 50
    sget v0, Lcom/ypx/imagepicker/R$id;->mImageView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mImageView:Lcom/ypx/imagepicker/widget/ShowTypeImageView;

    .line 51
    sget v0, Lcom/ypx/imagepicker/R$id;->v_masker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mVMasker:Landroid/view/View;

    .line 52
    sget v0, Lcom/ypx/imagepicker/R$id;->mCheckBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 53
    sget v0, Lcom/ypx/imagepicker/R$id;->mCheckBoxPanel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mCheckBoxPanel:Landroid/widget/FrameLayout;

    .line 54
    sget v0, Lcom/ypx/imagepicker/R$id;->mVideoTime:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mVideoTime:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/ypx/imagepicker/R$id;->mVideoLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mVideoLayout:Landroid/widget/LinearLayout;

    .line 57
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/ypx/imagepicker/R$mipmap;->picker_wechat_unselect:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, -0x1

    .line 59
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 60
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$mipmap;->picker_wechat_select:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ypx/imagepicker/views/wx/WXItemView;->setCheckBoxDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckBoxDrawable(II)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {v0, p2, p1}, Lcom/ypx/imagepicker/utils/PCornerUtils;->setCheckBoxDrawable(Landroid/widget/CheckBox;II)V

    return-void
.end method

.method public setCheckBoxDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {v0, p2, p1}, Lcom/ypx/imagepicker/utils/PCornerUtils;->setCheckBoxDrawable(Landroid/widget/CheckBox;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
