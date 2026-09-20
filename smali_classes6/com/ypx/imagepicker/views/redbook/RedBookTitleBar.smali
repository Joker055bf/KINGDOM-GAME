.class public Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;
.super Lcom/ypx/imagepicker/views/base/PickerControllerView;
.source "RedBookTitleBar.java"


# instance fields
.field private mArrowImg:Landroid/widget/ImageView;

.field private mTvNext:Landroid/widget/TextView;

.field private mTvSelectNum:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/views/base/PickerControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/ypx/imagepicker/views/base/PickerControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCanClickToCompleteView()Landroid/view/View;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvNext:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCanClickToIntentPreviewView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanClickToToggleFolderListView()Landroid/view/View;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 56
    sget v0, Lcom/ypx/imagepicker/R$layout;->picker_redbook_titlebar:I

    return v0
.end method

.method public getViewHeight()I
    .locals 1

    const/high16 v0, 0x425c0000    # 55.0f

    .line 47
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->dp(F)I

    move-result v0

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 61
    sget v0, Lcom/ypx/imagepicker/R$id;->mBackImg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    sget v1, Lcom/ypx/imagepicker/R$id;->mTvSetName:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvTitle:Landroid/widget/TextView;

    .line 63
    sget v1, Lcom/ypx/imagepicker/R$id;->mArrowImg:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mArrowImg:Landroid/widget/ImageView;

    .line 64
    sget v1, Lcom/ypx/imagepicker/R$id;->mTvNext:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvNext:Landroid/widget/TextView;

    .line 65
    sget v1, Lcom/ypx/imagepicker/R$id;->mTvSelectNum:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvSelectNum:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 66
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    sget p1, Lcom/ypx/imagepicker/R$mipmap;->picker_arrow_down:I

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->setImageSetArrowIconID(I)V

    .line 68
    new-instance p1, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar$1;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar$1;-><init>(Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p1, -0x1000000

    .line 74
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->setBackgroundColor(I)V

    const/4 p1, -0x1

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 76
    iget-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 77
    iget-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvNext:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvNext:Landroid/widget/TextView;

    const-string v0, "#50B0B0B0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvNext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_title_right:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public isAddInParent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onImageSetSelected(Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvTitle:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/ypx/imagepicker/bean/ImageSet;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTransitImageSet(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mArrowImg:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mArrowImg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_0
    return-void
.end method

.method public refreshCompleteViewState(Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V
    .locals 1
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

    const/high16 p2, 0x41f00000    # 30.0f

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvNext:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 129
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvNext:Landroid/widget/TextView;

    const-string v0, "#50B0B0B0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v0, p2}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvSelectNum:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvNext:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 133
    iget-object p1, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvNext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->getThemeColor()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v0, p2}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setImageSetArrowIconID(I)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mArrowImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
