.class public Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;
.super Ljava/lang/Object;
.source "EmotionKeyboard.java"


# static fields
.field private static final SHARE_PREFERENCE_NAME:Ljava/lang/String; = "com.tgs.aics.EK"

.field private static final SHARE_PREFERENCE_TAG:Ljava/lang/String; = "soft_input_height"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mEmotionLayout:Landroid/view/View;

.field private mExtendLayout:Landroid/view/View;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private navigationBarHeight:I

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSoftButtonsBarHeight()I
    .locals 4

    const/4 v0, 0x0

    .line 243
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 244
    iget-object v2, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 245
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 246
    iget-object v3, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 247
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    return v1

    :catch_0
    :cond_0
    return v0
.end method

.method private getSupportSoftInputHeight()I
    .locals 3

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 226
    iget-object v1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 227
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->navigationBarHeight:I

    sub-int/2addr v1, v0

    .line 230
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->getSoftButtonsBarHeight()I

    move-result v0

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    const-string v0, "EmotionKeyboard"

    const-string v2, "Warning: value of softInputHeight is below zero!"

    .line 233
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "soft_input_height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return v1
.end method

.method private hideLayout(Landroid/view/View;Z)V
    .locals 1

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->showSoftInput()V

    :cond_0
    return-void
.end method

.method private hideSoftInput()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private isSoftInputShown()Z
    .locals 1

    .line 220
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->getSupportSoftInputHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lockContentHeight()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 202
    iget-object v1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 203
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method private showLayout(Landroid/view/View;)V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->getSupportSoftInputHeight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->sp:Landroid/content/SharedPreferences;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/ViewUtil;->dpToPixel(F)I

    move-result v1

    iget v2, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->navigationBarHeight:I

    add-int/2addr v1, v2

    const-string v2, "soft_input_height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->hideSoftInput()V

    .line 180
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->getSoftButtonsBarHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showSoftInput()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 212
    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unlockContentHeightDelayed()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;
    .locals 3

    .line 41
    new-instance v0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    invoke-direct {v0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;-><init>()V

    .line 42
    iput-object p0, v0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    .line 43
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, v0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "com.tgs.aics.EK"

    const/4 v2, 0x0

    .line 44
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public bindToContent(Landroid/view/View;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public bindToEditText(Landroid/widget/EditText;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;
    .locals 1

    .line 55
    iput-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEditText:Landroid/widget/EditText;

    .line 56
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 57
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p0
.end method

.method public bindToEmotionButton(Landroid/view/View;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;
    .locals 1

    .line 90
    new-instance v0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public bindToExtendButton(Landroid/view/View;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;
    .locals 1

    .line 121
    new-instance v0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public build()Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 157
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->hideSoftInput()V

    return-object p0
.end method

.method public interceptBackPress()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->hideLayout(Landroid/view/View;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method synthetic lambda$bindToEditText$0$com-tgs-aics-emotionkeyboard-EmotionKeyboard()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->unlockContentHeightDelayed()V

    return-void
.end method

.method synthetic lambda$bindToEditText$1$com-tgs-aics-emotionkeyboard-EmotionKeyboard()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->unlockContentHeightDelayed()V

    return-void
.end method

.method synthetic lambda$bindToEditText$2$com-tgs-aics-emotionkeyboard-EmotionKeyboard(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 64
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    const-wide/16 v0, 0xc8

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    sget-boolean p1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->hideLayout(Landroid/view/View;Z)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->lockContentHeight()V

    .line 69
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->hideLayout(Landroid/view/View;Z)V

    .line 70
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEditText:Landroid/widget/EditText;

    new-instance p2, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mExtendLayout:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->lockContentHeight()V

    .line 74
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mExtendLayout:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->hideLayout(Landroid/view/View;Z)V

    .line 75
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEditText:Landroid/widget/EditText;

    new-instance p2, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard$$ExternalSyntheticLambda6;-><init>(Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$bindToEmotionButton$3$com-tgs-aics-emotionkeyboard-EmotionKeyboard(Landroid/view/View;)V
    .locals 3

    .line 91
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    sget-boolean p1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->hideLayout(Landroid/view/View;Z)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->sp:Landroid/content/SharedPreferences;

    const-string v1, "soft_input_height"

    const/4 v2, -0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->lockContentHeight()V

    .line 97
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->hideLayout(Landroid/view/View;Z)V

    .line 98
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->unlockContentHeightDelayed()V

    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->hideLayout(Landroid/view/View;Z)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->isSoftInputShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 105
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->lockContentHeight()V

    .line 106
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->showLayout(Landroid/view/View;)V

    .line 107
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->unlockContentHeightDelayed()V

    goto :goto_0

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mExtendLayout:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 110
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mExtendLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->hideLayout(Landroid/view/View;Z)V

    .line 112
    :cond_4
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->showLayout(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$bindToExtendButton$4$com-tgs-aics-emotionkeyboard-EmotionKeyboard(Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mExtendLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->lockContentHeight()V

    .line 124
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mExtendLayout:Landroid/view/View;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->hideLayout(Landroid/view/View;Z)V

    .line 125
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->unlockContentHeightDelayed()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->isSoftInputShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->lockContentHeight()V

    .line 129
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mExtendLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->showLayout(Landroid/view/View;)V

    .line 130
    invoke-direct {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->unlockContentHeightDelayed()V

    goto :goto_0

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->hideLayout(Landroid/view/View;Z)V

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mExtendLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->showLayout(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$showSoftInput$6$com-tgs-aics-emotionkeyboard-EmotionKeyboard()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method synthetic lambda$unlockContentHeightDelayed$5$com-tgs-aics-emotionkeyboard-EmotionKeyboard()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method public setEmotionView(Landroid/view/View;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mEmotionLayout:Landroid/view/View;

    return-object p0
.end method

.method public setExtendView(Landroid/view/View;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->mExtendLayout:Landroid/view/View;

    return-object p0
.end method

.method public setNavigationBarHeight(I)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;
    .locals 0

    .line 84
    iput p1, p0, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->navigationBarHeight:I

    return-object p0
.end method
