.class public Lcom/game/sdk/comon/utils/KeyboardHeightProvider;
.super Landroid/widget/PopupWindow;
.source "KeyboardHeightProvider.java"


# static fields
.field private static final NAVIGATION_BAR_MIN_HEIGHT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "sample_KeyboardHeightProvider"


# instance fields
.field private activity:Landroid/app/Activity;

.field private isChangedKeyboard:Z

.field private keyboardLandscapeHeight:I

.field private keyboardPortraitHeight:I

.field private navigationBarVisible:Z

.field private observer:Lcom/game/sdk/comon/utils/KeyboardHeightObserver;

.field private parentView:Landroid/view/View;

.field private popupView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 95
    iput-object p1, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->activity:Landroid/app/Activity;

    :try_start_0
    const-string v0, "layout_inflater"

    .line 98
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    sget v1, Lcom/mobgame/R$layout;->popupwindow:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    .line 100
    invoke-virtual {p0, v0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->setContentView(Landroid/view/View;)V

    const/16 v0, 0x15

    .line 102
    invoke-virtual {p0, v0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->setSoftInputMode(I)V

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->setInputMethodMode(I)V

    const v0, 0x1020002

    .line 105
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->parentView:Landroid/view/View;

    .line 107
    invoke-virtual {p0, v3}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->setWidth(I)V

    const/4 p1, -0x1

    .line 108
    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->setHeight(I)V

    .line 110
    iget-object p1, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider$1;-><init>(Lcom/game/sdk/comon/utils/KeyboardHeightProvider;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/comon/utils/KeyboardHeightProvider;)Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/game/sdk/comon/utils/KeyboardHeightProvider;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->handleOnGlobalLayout()V

    return-void
.end method

.method private getScreenOrientation()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private handleOnGlobalLayout()V
    .locals 10

    const-string v0, "TAG"

    const-string v1, "keyboardHeight 2 :"

    const-string v2, "keyboardHeight : 0; screenSize.y : "

    .line 173
    :try_start_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 174
    iget-object v4, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 176
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 177
    iget-object v5, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 179
    invoke-direct {p0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->getScreenOrientation()I

    move-result v5

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "; rect.bottom : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "; screenSize.x : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "; rect.top : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    if-ge v2, v6, :cond_0

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    if-ltz v2, :cond_0

    .line 184
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    move v2, v7

    .line 186
    :goto_0
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    const/4 v9, 0x2

    div-int/2addr v8, v9

    if-le v6, v8, :cond_1

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    if-ge v6, v8, :cond_1

    .line 187
    iget v2, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v2, v9

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_1

    .line 188
    :cond_1
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    if-le v4, v3, :cond_2

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    if-ne v5, v9, :cond_3

    .line 191
    iput v7, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->keyboardPortraitHeight:I

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget v0, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->keyboardPortraitHeight:I

    invoke-direct {p0, v0, v5}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->notifyKeyboardHeightChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private notifyKeyboardHeightChanged(II)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->observer:Lcom/game/sdk/comon/utils/KeyboardHeightObserver;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    const-string v0, "MO BAN PHIM"

    .line 207
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->observer:Lcom/game/sdk/comon/utils/KeyboardHeightObserver;

    invoke-interface {v0, p1, p2}, Lcom/game/sdk/comon/utils/KeyboardHeightObserver;->onKeyboardHeightChanged(II)V

    goto :goto_0

    :cond_0
    const-string p1, "TAT BAN PHIM"

    .line 211
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public checkKeyboardChanged()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->isChangedKeyboard:Z

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->observer:Lcom/game/sdk/comon/utils/KeyboardHeightObserver;

    .line 143
    invoke-virtual {p0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->dismiss()V

    return-void
.end method

.method public setKeyboardHeightObserver(Lcom/game/sdk/comon/utils/KeyboardHeightObserver;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->observer:Lcom/game/sdk/comon/utils/KeyboardHeightObserver;

    return-void
.end method

.method public start()V
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->parentView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method
