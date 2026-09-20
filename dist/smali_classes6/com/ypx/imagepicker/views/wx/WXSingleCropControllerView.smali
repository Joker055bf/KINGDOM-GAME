.class public Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;
.super Lcom/ypx/imagepicker/views/base/SingleCropControllerView;
.source "WXSingleCropControllerView.java"


# instance fields
.field private mCompleteBtn:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/SingleCropControllerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCompleteView()Landroid/view/View;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->mCompleteBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 28
    sget v0, Lcom/ypx/imagepicker/R$layout;->picker_wx_crop_titlebar:I

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    .line 33
    sget v0, Lcom/ypx/imagepicker/R$id;->mTitleBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 34
    sget v1, Lcom/ypx/imagepicker/R$id;->iv_back:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 35
    sget v2, Lcom/ypx/imagepicker/R$id;->tv_title:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->mTitle:Landroid/widget/TextView;

    .line 36
    sget v2, Lcom/ypx/imagepicker/R$id;->tv_rightBtn:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->mCompleteBtn:Landroid/widget/TextView;

    const/4 p1, -0x1

    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 38
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->mCompleteBtn:Landroid/widget/TextView;

    invoke-static {}, Lcom/ypx/imagepicker/ImagePicker;->getThemeColor()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v2}, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    new-instance p1, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView$1;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView$1;-><init>(Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->mCompleteBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_title_crop_right:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_title_crop:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCropViewParams(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    .line 61
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->dp(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 62
    invoke-virtual {p1, p2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setStatusBar()V
    .locals 4

    .line 51
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v0, v3, v1, v2}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->setStatusBar(Landroid/app/Activity;IZZ)V

    return-void
.end method
