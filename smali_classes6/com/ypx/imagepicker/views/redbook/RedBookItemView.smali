.class public Lcom/ypx/imagepicker/views/redbook/RedBookItemView;
.super Lcom/ypx/imagepicker/views/base/PickerItemView;
.source "RedBookItemView.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private mTvDuration:Landroid/widget/TextView;

.field private mTvIndex:Landroid/widget/TextView;

.field private mVMask:Landroid/view/View;

.field private mVSelect:Landroid/view/View;

.field private selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/PickerItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/views/base/PickerItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/ypx/imagepicker/views/base/PickerItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public disableItem(Lcom/ypx/imagepicker/bean/ImageItem;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mVMask:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mVMask:Landroid/view/View;

    const-string p2, "#80FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 96
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mTvIndex:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mVSelect:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public enableItem(Lcom/ypx/imagepicker/bean/ImageItem;ZI)V
    .locals 5

    .line 103
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mTvIndex:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mVSelect:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result p2

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 106
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mTvDuration:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mTvDuration:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->getDurationFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isVideoSinglePick()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isSinglePickAutoComplete()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 109
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mTvIndex:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mVSelect:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mTvDuration:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    if-ltz p3, :cond_2

    .line 117
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mTvIndex:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    add-int/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, v0

    const-string p3, "%d"

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mTvIndex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->getThemeColor()I

    move-result p3

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->dp(F)I

    move-result v3

    const/4 v4, -0x1

    invoke-static {p3, v2, v3, v4}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawableAndStroke(IFII)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 120
    :cond_2
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mTvIndex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/ypx/imagepicker/R$mipmap;->picker_icon_unselect:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mTvIndex:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_1
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isPress()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 125
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mVMask:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->getThemeColor()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->getThemeColor()I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result p2

    .line 127
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->getThemeColor()I

    move-result p3

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result p3

    const/16 v0, 0x64

    .line 126
    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 128
    invoke-virtual {p0, p2}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->dp(F)I

    move-result p2

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->getThemeColor()I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawableAndStroke(IFII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 129
    iget-object p2, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mVMask:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mVMask:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public getCameraView(Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Landroid/view/View;
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/ypx/imagepicker/R$layout;->picker_item_camera:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 70
    sget v0, Lcom/ypx/imagepicker/R$id;->tv_camera:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isOnlyShowVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_item_take_video:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_item_take_photo:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getCheckBoxView()Landroid/view/View;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mVSelect:Landroid/view/View;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 52
    sget v0, Lcom/ypx/imagepicker/R$layout;->picker_item:I

    return v0
.end method

.method public initItem(Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V
    .locals 2

    .line 84
    iput-object p3, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    .line 85
    iget-object p3, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p2, p3, p1, v0, v1}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->displayImage(Landroid/view/View;Lcom/ypx/imagepicker/bean/ImageItem;IZ)V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    .line 60
    sget v0, Lcom/ypx/imagepicker/R$id;->mTvIndex:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mTvIndex:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/ypx/imagepicker/R$id;->v_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mVMask:Landroid/view/View;

    .line 62
    sget v0, Lcom/ypx/imagepicker/R$id;->v_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mVSelect:Landroid/view/View;

    .line 63
    sget v0, Lcom/ypx/imagepicker/R$id;->iv_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->imageView:Landroid/widget/ImageView;

    .line 64
    sget v0, Lcom/ypx/imagepicker/R$id;->mTvDuration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;->mTvDuration:Landroid/widget/TextView;

    return-void
.end method
