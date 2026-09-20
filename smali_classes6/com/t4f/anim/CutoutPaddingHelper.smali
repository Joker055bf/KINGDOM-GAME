.class public Lcom/t4f/anim/CutoutPaddingHelper;
.super Ljava/lang/Object;
.source "CutoutPaddingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyCutoutPadding(Landroid/app/Activity;)V
    .locals 2

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 29
    invoke-static {p0}, Lcom/t4f/anim/CutoutPaddingHelper;->applyCutoutPaddingAPI28(Landroid/app/Activity;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/t4f/anim/CutoutPaddingHelper;->applyCutoutPaddingLegacy(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private static applyCutoutPaddingAPI28(Landroid/app/Activity;)V
    .locals 5

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    .line 49
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    .line 50
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    .line 51
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    const v4, 0x1020002

    .line 54
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 55
    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 58
    invoke-static {p0, v1, v2, v3, v0}, Lcom/t4f/anim/CutoutPaddingHelper;->logCutoutInfo(Landroid/app/Activity;IIII)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/t4f/anim/CutoutPaddingHelper;->applyStatusBarPadding(Landroid/app/Activity;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p0}, Lcom/t4f/anim/CutoutPaddingHelper;->applyStatusBarPadding(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private static applyCutoutPaddingLegacy(Landroid/app/Activity;)V
    .locals 6

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 75
    invoke-static {p0, v0, v1}, Lcom/t4f/anim/CutoutPaddingHelper;->getCutoutInfoForDevice(Landroid/app/Activity;II)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x1020002

    .line 78
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 79
    iget v2, v0, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;->left:I

    iget v3, v0, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;->top:I

    iget v4, v0, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;->right:I

    iget v5, v0, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 81
    iget v1, v0, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;->left:I

    iget v2, v0, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;->top:I

    iget v3, v0, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;->right:I

    iget v0, v0, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;->bottom:I

    invoke-static {p0, v1, v2, v3, v0}, Lcom/t4f/anim/CutoutPaddingHelper;->logCutoutInfo(Landroid/app/Activity;IIII)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/t4f/anim/CutoutPaddingHelper;->applyStatusBarPadding(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private static applyStatusBarPadding(Landroid/app/Activity;)V
    .locals 2

    .line 243
    invoke-static {p0}, Lcom/t4f/anim/CutoutPaddingHelper;->getStatusBarHeightFromResource(Landroid/content/Context;)I

    move-result v0

    const v1, 0x1020002

    .line 244
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method private static calculateCutoutPadding(Landroid/app/Activity;III)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;
    .locals 0

    .line 218
    invoke-static {p0}, Lcom/t4f/anim/CutoutPaddingHelper;->getStatusBarHeightFromResource(Landroid/content/Context;)I

    move-result p0

    .line 219
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    if-eqz p3, :cond_3

    const/4 p2, 0x1

    if-eq p3, p2, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    const/4 p2, 0x3

    if-eq p3, p2, :cond_0

    .line 235
    new-instance p2, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    invoke-direct {p2, p1, p0, p1, p1}, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;-><init>(IIII)V

    return-object p2

    .line 232
    :cond_0
    new-instance p2, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    invoke-direct {p2, p1, p1, p0, p1}, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;-><init>(IIII)V

    return-object p2

    .line 229
    :cond_1
    new-instance p2, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    invoke-direct {p2, p1, p1, p1, p0}, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;-><init>(IIII)V

    return-object p2

    .line 226
    :cond_2
    new-instance p2, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    invoke-direct {p2, p0, p1, p1, p1}, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;-><init>(IIII)V

    return-object p2

    .line 223
    :cond_3
    new-instance p2, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    invoke-direct {p2, p1, p0, p1, p1}, Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;-><init>(IIII)V

    return-object p2
.end method

.method private static dpToPx(Landroid/content/Context;F)I
    .locals 0

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static getCutoutInfoForDevice(Landroid/app/Activity;II)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;
    .locals 2

    .line 92
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {p0, p1, p2}, Lcom/t4f/anim/CutoutPaddingHelper;->getHuaweiCutoutInfo(Landroid/app/Activity;II)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "xiaomi"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-static {p0, p1, p2}, Lcom/t4f/anim/CutoutPaddingHelper;->getXiaomiCutoutInfo(Landroid/app/Activity;II)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "oppo"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-static {p0, p1, p2}, Lcom/t4f/anim/CutoutPaddingHelper;->getOppoCutoutInfo(Landroid/app/Activity;II)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "vivo"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    invoke-static {p0, p1, p2}, Lcom/t4f/anim/CutoutPaddingHelper;->getVivoCutoutInfo(Landroid/app/Activity;II)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "oneplus"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    invoke-static {p0, p1, p2}, Lcom/t4f/anim/CutoutPaddingHelper;->getOnePlusCutoutInfo(Landroid/app/Activity;II)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getHuaweiCutoutInfo(Landroid/app/Activity;II)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;
    .locals 3

    .line 114
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "com.huawei.android.util.HwNotchSizeUtil"

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "hasNotchInScreen"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 116
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 117
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getNotchSize"

    new-array v2, v1, [Ljava/lang/Class;

    .line 120
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 121
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_0

    .line 123
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 124
    aget v0, p1, v1

    const/4 v1, 0x1

    .line 125
    aget p1, p1, v1

    .line 127
    invoke-static {p0, v0, p1, p2}, Lcom/t4f/anim/CutoutPaddingHelper;->calculateCutoutPadding(Landroid/app/Activity;III)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOnePlusCutoutInfo(Landroid/app/Activity;II)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;
    .locals 7

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 200
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 201
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ro.oneplus.screen.heteromorphism"

    aput-object v2, v1, v5

    .line 202
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 205
    invoke-static {p0}, Lcom/t4f/anim/CutoutPaddingHelper;->getStatusBarHeightFromResource(Landroid/content/Context;)I

    move-result v0

    .line 206
    invoke-static {p0, v5, v0, p2}, Lcom/t4f/anim/CutoutPaddingHelper;->calculateCutoutPadding(Landroid/app/Activity;III)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 209
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object p1
.end method

.method private static getOppoCutoutInfo(Landroid/app/Activity;II)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;
    .locals 6

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "com.oppo.feature.screen.heteromorphism.OppoHeteromorphismManager"

    .line 161
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "hasFeature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 162
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p0}, Lcom/t4f/anim/CutoutPaddingHelper;->getStatusBarHeightFromResource(Landroid/content/Context;)I

    move-result v0

    .line 167
    invoke-static {p0, v5, v0, p2}, Lcom/t4f/anim/CutoutPaddingHelper;->calculateCutoutPadding(Landroid/app/Activity;III)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object p1
.end method

.method private static getRotationName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "LANDSCAPE_RIGHT"

    return-object p0

    :cond_1
    const-string p0, "PORTRAIT_REVERSE"

    return-object p0

    :cond_2
    const-string p0, "LANDSCAPE_LEFT"

    return-object p0

    :cond_3
    const-string p0, "PORTRAIT"

    return-object p0
.end method

.method private static getStatusBarHeightFromResource(Landroid/content/Context;)I
    .locals 4

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/high16 v0, 0x41c00000    # 24.0f

    .line 256
    invoke-static {p0, v0}, Lcom/t4f/anim/CutoutPaddingHelper;->dpToPx(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method private static getVivoCutoutInfo(Landroid/app/Activity;II)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;
    .locals 5

    .line 180
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "android.util.FtFeature"

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "isFeatureSupport"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 182
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x20

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    invoke-static {p0}, Lcom/t4f/anim/CutoutPaddingHelper;->getStatusBarHeightFromResource(Landroid/content/Context;)I

    move-result p1

    .line 187
    invoke-static {p0, v4, p1, p2}, Lcom/t4f/anim/CutoutPaddingHelper;->calculateCutoutPadding(Landroid/app/Activity;III)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getXiaomiCutoutInfo(Landroid/app/Activity;II)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;
    .locals 7

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 141
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 142
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ro.miui.notch"

    aput-object v2, v1, v5

    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 147
    invoke-static {p0}, Lcom/t4f/anim/CutoutPaddingHelper;->getStatusBarHeightFromResource(Landroid/content/Context;)I

    move-result v0

    .line 148
    invoke-static {p0, v5, v0, p2}, Lcom/t4f/anim/CutoutPaddingHelper;->calculateCutoutPadding(Landroid/app/Activity;III)Lcom/t4f/anim/CutoutPaddingHelper$CutoutInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object p1
.end method

.method private static logCutoutInfo(Landroid/app/Activity;IIII)V
    .locals 2

    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 271
    invoke-static {p0}, Lcom/t4f/anim/CutoutPaddingHelper;->getRotationName(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "Rotation: %s, Padding - Left: %d, Top: %d, Right: %d, Bottom: %d"

    .line 273
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CutoutPadding"

    invoke-static {p1, p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
