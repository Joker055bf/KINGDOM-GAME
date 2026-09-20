.class public Lcom/ypx/imagepicker/views/wx/WXTitleBar;
.super Lcom/ypx/imagepicker/views/base/PickerControllerView;
.source "WXTitleBar.java"


# instance fields
.field private canToggleFolderList:Z

.field private completeText:Ljava/lang/String;

.field private ivBack:Landroid/widget/ImageView;

.field private layoutBack:Landroid/widget/LinearLayout;

.field private mCompleteBtn:Landroid/widget/TextView;

.field private mSetArrowImg:Landroid/widget/ImageView;

.field private mTvBack:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private selectColor:I

.field private selectDrawable:Landroid/graphics/drawable/Drawable;

.field private unSelectColor:I

.field private unSelectDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public centerTitle()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method public getCanClickToCompleteView()Landroid/view/View;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCanClickToIntentPreviewView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanClickToToggleFolderListView()Landroid/view/View;
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->canToggleFolderList:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mTvTitle:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 53
    sget v0, Lcom/ypx/imagepicker/R$layout;->picker_default_titlebar:I

    return v0
.end method

.method public getViewHeight()I
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    .line 48
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->dp(F)I

    move-result v0

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    .line 58
    sget v0, Lcom/ypx/imagepicker/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mTvTitle:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/ypx/imagepicker/R$id;->mSetArrowImg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mSetArrowImg:Landroid/widget/ImageView;

    .line 60
    sget v0, Lcom/ypx/imagepicker/R$id;->iv_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->ivBack:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/ypx/imagepicker/R$id;->tv_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mTvBack:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/ypx/imagepicker/R$id;->layout_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->layoutBack:Landroid/widget/LinearLayout;

    .line 63
    sget v0, Lcom/ypx/imagepicker/R$id;->tv_rightBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->setShowArrow(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/ypx/imagepicker/R$color;->white_F5:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->setBackgroundColor(I)V

    .line 67
    sget p1, Lcom/ypx/imagepicker/R$mipmap;->picker_arrow_down:I

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->setImageSetArrowIconID(I)V

    .line 68
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/ypx/imagepicker/R$string;->picker_str_title_right:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->completeText:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->getThemeColor()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->selectDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->getThemeColor()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->getThemeColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 71
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->getThemeColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0x64

    .line 70
    invoke-static {v3, p1, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 72
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->unSelectDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->unSelectColor:I

    .line 74
    iput p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->selectColor:I

    .line 76
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->layoutBack:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/ypx/imagepicker/views/wx/WXTitleBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar$$ExternalSyntheticLambda0;-><init>(Lcom/ypx/imagepicker/views/wx/WXTitleBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-ypx-imagepicker-views-wx-WXTitleBar(Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->onBackPressed()V

    return-void
.end method

.method public onImageSetSelected(Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->canToggleFolderList:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mTvTitle:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/ypx/imagepicker/bean/ImageSet;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTransitImageSet(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mSetArrowImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public refreshCompleteViewState(Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMaxCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isSinglePickAutoComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    iget v3, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->selectColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->completeText:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMaxCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "%s(%d/%d)"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->selectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 124
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 125
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->completeText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    iget p2, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->unSelectColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->unSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public setBackIconID(I)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackText(Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mTvBack:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCanToggleFolderList(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->canToggleFolderList:Z

    return-void
.end method

.method public setCompleteBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->selectDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    iput-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->unSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompleteText(Ljava/lang/String;)V
    .locals 1

    .line 178
    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->completeText:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCompleteTextColor(II)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->selectColor:I

    .line 190
    iput p2, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->unSelectColor:I

    .line 191
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mCompleteBtn:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setImageSetArrowIconID(I)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mSetArrowImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShowArrow(Z)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mSetArrowImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;->mSetArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method
