.class public Lcom/ypx/imagepicker/utils/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field public static safeAreaPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 44
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 46
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static getSystemModel()Ljava/lang/String;
    .locals 3

    .line 114
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, " "

    const-string v2, "_"

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    :goto_0
    return-object v0
.end method

.method public static hasContainExoPlayerClass()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.BuildConfig"

    .line 101
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 102
    sget-boolean v0, Lcom/ypx/imagepicker/ImagePicker;->isUseIjkPlayer:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$setSafeArea$0(Landroid/view/View;IZLandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 22
    invoke-virtual {p4}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p2

    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 25
    sput p2, Lcom/ypx/imagepicker/utils/CommonUtil;->safeAreaPadding:I

    .line 26
    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p3

    invoke-virtual {p0, p2, p3, p2, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    if-eqz p2, :cond_1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p2

    .line 30
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 28
    invoke-virtual {p0, p3, p2, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    return-object p4
.end method

.method static synthetic lambda$setSafeAreaWithNavigationBar$1(Landroid/view/View;ZZLandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 58
    invoke-virtual {p4}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 60
    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 61
    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p0, p1, p2, p1, p3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ypx/imagepicker/utils/CommonUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    .line 66
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    .line 63
    invoke-virtual {p0, p3, v0, p1, p2}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    return-object p4
.end method

.method public static setNoLimitScreen(Landroid/app/Activity;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 79
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 82
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    .line 84
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 86
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 88
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x1002

    .line 93
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static setSafeArea(Landroid/view/View;ZI)V
    .locals 2

    .line 20
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 21
    new-instance v0, Lcom/ypx/imagepicker/utils/CommonUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/ypx/imagepicker/utils/CommonUtil$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static setSafeAreaWithNavigationBar(Landroid/view/View;ZZ)V
    .locals 2

    .line 56
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Lcom/ypx/imagepicker/utils/CommonUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/ypx/imagepicker/utils/CommonUtil$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;ZZ)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
