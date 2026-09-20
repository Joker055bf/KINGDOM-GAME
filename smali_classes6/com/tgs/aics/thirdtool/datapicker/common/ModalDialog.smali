.class public abstract Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;
.super Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;
.source "ModalDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected bodyView:Landroid/view/View;

.field protected cancelView:Landroid/widget/LinearLayout;

.field protected footerView:Landroid/view/View;

.field protected headerView:Landroid/view/View;

.field protected okView:Landroid/widget/TextView;

.field protected titleView:Landroid/widget/TextView;

.field protected topLineView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogStyle()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 38
    sget v0, Lcom/tgs/service/ai/R$style;->DialogTheme_Fade:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/tgs/service/ai/R$style;->DialogTheme_Sheet:I

    .line 37
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method private maybeBuildEllipseButton()V
    .locals 5

    .line 170
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogStyle()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogStyle()I

    move-result v0

    if-eq v0, v2, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogStyle()I

    move-result v0

    const v1, 0x4479c000    # 999.0f

    if-ne v0, v2, :cond_2

    .line 174
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->cancelView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogColor()Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->cancelEllipseColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 177
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->cancelView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->cancelView:Landroid/widget/LinearLayout;

    sget v2, Lcom/tgs/service/ai/R$mipmap;->tgs_aics_dialog_close_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 182
    :cond_2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 183
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->okView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 184
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogColor()Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->cancelEllipseColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 185
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->cancelView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogColor()Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->cancelEllipseColor()I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    .line 192
    :goto_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 193
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->okView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 194
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogColor()Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->okEllipseColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 195
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->okView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogColor()Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->okEllipseColor()I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    return-void
.end method


# virtual methods
.method protected abstract createBodyView()Landroid/view/View;
.end method

.method protected createContentView()Landroid/view/View;
    .locals 6

    .line 62
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->createHeaderView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->headerView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 69
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->headerView:Landroid/view/View;

    .line 70
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->headerView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->createTopLineView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->topLineView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 75
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->topLineView:Landroid/view/View;

    .line 76
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->topLineView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->createBodyView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->bodyView:Landroid/view/View;

    .line 80
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->createFooterView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->footerView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 83
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->footerView:Landroid/view/View;

    .line 84
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->footerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method protected createFooterView()Landroid/view/View;
    .locals 3

    .line 120
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogStyle()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-object v2

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    sget v1, Lcom/tgs/service/ai/R$layout;->tgs_aics_dialog_footer_style_3:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    sget v1, Lcom/tgs/service/ai/R$layout;->tgs_aics_dialog_footer_style_2:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    sget v1, Lcom/tgs/service/ai/R$layout;->tgs_aics_dialog_footer_style_1:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createHeaderView()Landroid/view/View;
    .locals 3

    .line 92
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogStyle()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    sget v1, Lcom/tgs/service/ai/R$layout;->tgs_aics_dialog_header_style_default:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    sget v1, Lcom/tgs/service/ai/R$layout;->tgs_aics_dialog_header_style_3:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    sget v1, Lcom/tgs/service/ai/R$layout;->tgs_aics_dialog_header_style_2:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    sget v1, Lcom/tgs/service/ai/R$layout;->tgs_aics_dialog_header_style_1:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createTopLineView()Landroid/view/View;
    .locals 4

    .line 106
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogStyle()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "#F2F4F7"

    .line 109
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected enableMaskView()Z
    .locals 2

    .line 56
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogStyle()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getBodyView()Landroid/view/View;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->bodyView:Landroid/view/View;

    return-object v0
.end method

.method public final getCancelView()Landroid/widget/LinearLayout;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->cancelView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getFooterView()Landroid/view/View;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->footerView:Landroid/view/View;

    return-object v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->headerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->headerView:Landroid/view/View;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->headerView:Landroid/view/View;

    return-object v0
.end method

.method public final getOkView()Landroid/widget/TextView;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->okView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTopLineView()Landroid/view/View;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->topLineView:Landroid/view/View;

    return-object v0
.end method

.method protected initView()V
    .locals 4

    .line 135
    invoke-super {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->initView()V

    .line 136
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogColor()Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogColor;->contentBackgroundColor()I

    move-result v0

    .line 137
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogStyle()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0, v3, v0}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->setBackgroundColor(II)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->setBackgroundColor(II)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->contentView:Landroid/view/View;

    sget v1, Lcom/tgs/service/ai/R$id;->tgs_aics_back_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->cancelView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->contentView:Landroid/view/View;

    sget v1, Lcom/tgs/service/ai/R$id;->dialog_modal_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->contentView:Landroid/view/View;

    sget v1, Lcom/tgs/service/ai/R$id;->dialog_modal_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->okView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->cancelView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->okView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->maybeBuildEllipseButton()V

    return-void

    .line 159
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ok view id not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Title view id not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cancel view id not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$setTitle$0$com-tgs-aics-thirdtool-datapicker-common-ModalDialog(Ljava/lang/CharSequence;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$setTitle$1$com-tgs-aics-thirdtool-datapicker-common-ModalDialog(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected abstract onCancel()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 225
    sget v0, Lcom/tgs/service/ai/R$id;->tgs_aics_back_layout:I

    if-ne p1, v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->onCancel()V

    .line 227
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->dismiss()V

    goto :goto_0

    .line 228
    :cond_0
    sget v0, Lcom/tgs/service/ai/R$id;->dialog_modal_ok:I

    if-ne p1, v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->onOk()V

    .line 230
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->onInit(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/common/DialogConfig;->getDialogStyle()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 49
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const v0, 0x3f4ccccd

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->setWidth(I)V

    const/16 p1, 0x11

    .line 50
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->setGravity(I)V

    :cond_0
    return-void
.end method

.method protected abstract onOk()V
.end method

.method public final setBodyHeight(I)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->bodyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 252
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->bodyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 254
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 255
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->bodyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setBodyWidth(I)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->bodyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 242
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->bodyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 244
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 245
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->bodyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 215
    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 217
    :cond_0
    invoke-super {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 206
    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 208
    :cond_0
    invoke-super {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
