.class public abstract Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;
.super Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;
.source "BottomDialog.java"


# instance fields
.field protected maskView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 30
    sget v0, Lcom/tgs/service/ai/R$style;->DialogTheme_Sheet:I

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;-><init>(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method protected addMaskView()V
    .locals 6

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 64
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x1

    .line 65
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 66
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 67
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 68
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 69
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x30

    .line 70
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    .line 74
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 76
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    :goto_0
    const/16 v1, 0x500

    .line 79
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/16 v1, 0x3e8

    .line 80
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    .line 81
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 82
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v1, 0x12

    .line 83
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 84
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->maskView:Landroid/view/View;

    const/high16 v2, 0x7f000000

    .line 85
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 86
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->maskView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 87
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->maskView:Landroid/view/View;

    new-instance v2, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 94
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->maskView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected enableMaskView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$addMaskView$0$com-tgs-aics-thirdtool-datapicker-common-BottomDialog(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->removeMaskView()V

    .line 104
    invoke-super {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onInit(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->onInit(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->setCancelable(Z)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->setCanceledOnTouchOutside(Z)V

    .line 42
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->setWidth(I)V

    const/16 p1, 0x50

    .line 43
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->setGravity(I)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->onShow(Landroid/content/DialogInterface;)V

    .line 49
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->enableMaskView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->addMaskView()V

    :cond_0
    return-void
.end method

.method protected removeMaskView()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->maskView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BottomDialog;->maskView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
