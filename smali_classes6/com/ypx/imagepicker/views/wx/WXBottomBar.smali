.class public Lcom/ypx/imagepicker/views/wx/WXBottomBar;
.super Lcom/ypx/imagepicker/views/base/PickerControllerView;
.source "WXBottomBar.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDirButton:Landroid/widget/Button;

.field private mPreview:Landroid/widget/Button;

.field private previewText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$initView$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 54
    sput-boolean p1, Lcom/ypx/imagepicker/ImagePicker;->isOriginalImage:Z

    return-void
.end method


# virtual methods
.method public getCanClickToCompleteView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanClickToIntentPreviewView()Landroid/view/View;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mPreview:Landroid/widget/Button;

    return-object v0
.end method

.method public getCanClickToToggleFolderListView()Landroid/view/View;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mDirButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 44
    sget v0, Lcom/ypx/imagepicker/R$layout;->picker_default_bottombar:I

    return v0
.end method

.method public getViewHeight()I
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    .line 39
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->dp(F)I

    move-result v0

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 49
    sget v0, Lcom/ypx/imagepicker/R$id;->mDirButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mDirButton:Landroid/widget/Button;

    .line 50
    sget v0, Lcom/ypx/imagepicker/R$id;->mPreview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mPreview:Landroid/widget/Button;

    .line 51
    sget v0, Lcom/ypx/imagepicker/R$id;->mCheckBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mCheckBox:Landroid/widget/CheckBox;

    .line 52
    sget p1, Lcom/ypx/imagepicker/R$mipmap;->picker_wechat_unselect:I

    sget v0, Lcom/ypx/imagepicker/R$mipmap;->picker_wechat_select:I

    invoke-virtual {p0, p1, v0}, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->setCheckBoxDrawable(II)V

    const-string p1, "#303030"

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->setBottomBarColor(I)V

    .line 54
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/ypx/imagepicker/views/wx/WXBottomBar$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/ypx/imagepicker/views/wx/WXBottomBar$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/ypx/imagepicker/R$string;->picker_str_send:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->previewText:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mPreview:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_bottom_original:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onImageSetSelected(Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mDirButton:Landroid/widget/Button;

    iget-object p1, p1, Lcom/ypx/imagepicker/bean/ImageSet;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTransitImageSet(Z)V
    .locals 0

    return-void
.end method

.method public refreshCompleteViewState(Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V
    .locals 4
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

    .line 96
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mPreview:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    instance-of v0, p2, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    if-eqz v0, :cond_1

    .line 99
    check-cast p2, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    .line 100
    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isShowOriginalCheckBox()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mCheckBox:Landroid/widget/CheckBox;

    sget-boolean v3, Lcom/ypx/imagepicker/ImagePicker;->isOriginalImage:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 107
    :goto_0
    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isPreview()Z

    move-result p2

    if-nez p2, :cond_1

    .line 108
    iget-object p2, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mPreview:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 113
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mPreview:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mPreview:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public setBottomBarColor(I)V
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->setBackgroundColor(I)V

    return-void
.end method

.method public setCheckBoxDrawable(II)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {v0, p2, p1}, Lcom/ypx/imagepicker/utils/PCornerUtils;->setCheckBoxDrawable(Landroid/widget/CheckBox;II)V

    return-void
.end method

.method public setCheckBoxDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {v0, p2, p1}, Lcom/ypx/imagepicker/utils/PCornerUtils;->setCheckBoxDrawable(Landroid/widget/CheckBox;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPreviewBtnBackground(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mPreview:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public setPreviewText(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mPreview:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;->mDirButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
