.class public Lcom/tgs/aics/ui/dialog/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field private dimAmount:F

.field private loadingCancelBtn:Landroid/widget/Button;

.field private loadingTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Loading_Dialog"

    .line 25
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/high16 p1, 0x3f400000    # 0.75f

    .line 19
    iput p1, p0, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dimAmount:F

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->setCancelable(Z)V

    .line 31
    invoke-direct {p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->initWidget()V

    return-void
.end method

.method private initWidget()V
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_aics_dialog_loading"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_loading_tv"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/ui/dialog/LoadingDialog;->loadingTv:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_loading_cancel_btn"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tgs/aics/ui/dialog/LoadingDialog;->loadingCancelBtn:Landroid/widget/Button;

    .line 38
    invoke-virtual {v1}, Landroid/widget/Button;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setPaintFlags(I)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 80
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setLoadingCancelBtnVisible(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/tgs/aics/ui/dialog/LoadingDialog;->loadingCancelBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/tgs/aics/ui/dialog/LoadingDialog;->loadingCancelBtn:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tgs/aics/ui/dialog/LoadingDialog;->loadingTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/tgs/aics/ui/dialog/LoadingDialog;->loadingTv:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setWindowDimAmount(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dimAmount:F

    return-void
.end method

.method public show()V
    .locals 3

    .line 63
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 65
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 67
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 70
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 71
    iget v2, p0, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dimAmount:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
