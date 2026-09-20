.class public Lcom/tgs/aics/ui/dialog/TipsDialog;
.super Landroid/app/Dialog;
.source "TipsDialog.java"


# instance fields
.field private buttonDivider:Landroid/view/View;

.field private contentTV:Landroid/widget/TextView;

.field private dimAmount:F

.field private leftBtn:Landroid/widget/Button;

.field private rightBtn:Landroid/widget/Button;

.field private titleTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Loading_Dialog"

    .line 26
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/ui/dialog/TipsDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/high16 p1, 0x3f400000    # 0.75f

    .line 19
    iput p1, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->dimAmount:F

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setCancelable(Z)V

    .line 32
    invoke-direct {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->initWidget()V

    return-void
.end method

.method private initWidget()V
    .locals 3

    .line 36
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_aics_dialog_tips"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_dialog_tips_title"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->titleTV:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_dialog_tips_content"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->contentTV:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_dialog_tips_left_button"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->leftBtn:Landroid/widget/Button;

    .line 40
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_dialog_tips_right_button"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->rightBtn:Landroid/widget/Button;

    .line 41
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_dialog_tips_button_divider"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->buttonDivider:Landroid/view/View;

    .line 42
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->contentTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->contentTV:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setContentAlign(I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->contentTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->leftBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->leftBtn:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->leftBtn:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setLeftButtonVisible(Z)V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->leftBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 67
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->buttonDivider:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 70
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->rightBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->rightBtn:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->rightBtn:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->titleTV:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->titleTV:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setWindowDimAmount(F)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->dimAmount:F

    return-void
.end method

.method public show()V
    .locals 5

    .line 97
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 99
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 101
    sget-boolean v2, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    div-double/2addr v1, v3

    double-to-int v1, v1

    :cond_0
    const/4 v2, -0x2

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 106
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 107
    iget v2, p0, Lcom/tgs/aics/ui/dialog/TipsDialog;->dimAmount:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
