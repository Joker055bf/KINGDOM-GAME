.class public Lcom/game/sdk/comon/view/CustomFloatView;
.super Landroid/app/Service;
.source "CustomFloatView.java"


# instance fields
.field private boundHeight:I

.field private boundWidth:I

.field private context:Landroid/content/Context;

.field private defaultPosition:I

.field private density:F

.field private ex:Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

.field private logo:Landroid/widget/ImageView;

.field params:Landroid/view/WindowManager$LayoutParams;

.field private removeView:Landroid/view/View;

.field private timer:Landroid/os/CountDownTimer;

.field private txtDismiss:Landroid/widget/TextView;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0x64

    .line 40
    iput v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->defaultPosition:I

    .line 41
    new-instance v0, Lcom/game/sdk/comon/view/CustomFloatView$1;

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/game/sdk/comon/view/CustomFloatView$1;-><init>(Lcom/game/sdk/comon/view/CustomFloatView;JJ)V

    iput-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->timer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->logo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/os/CountDownTimer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->timer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->removeView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/game/sdk/comon/view/CustomFloatView;FF)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/game/sdk/comon/view/CustomFloatView;->isInDismissArea(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/game/sdk/comon/view/CustomFloatView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->defaultPosition:I

    return p0
.end method

.method static synthetic access$600(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/view/WindowManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/game/sdk/comon/view/CustomFloatView;)Lcom/game/sdk/comon/object/SdkConfigObj$Ex;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->ex:Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    return-object p0
.end method

.method static synthetic access$800(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->txtDismiss:Landroid/widget/TextView;

    return-object p0
.end method

.method private isInDismissArea(FF)Z
    .locals 9

    .line 196
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->ex:Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->isNeverHide()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 199
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->boundWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 200
    iget v2, p0, Lcom/game/sdk/comon/view/CustomFloatView;->boundHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/game/sdk/comon/view/CustomFloatView;->density:F

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v0

    sub-float v3, p1, v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 201
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    int-to-float v2, v2

    sub-float v7, p2, v2

    float-to-double v7, v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 202
    iget v5, p0, Lcom/game/sdk/comon/view/CustomFloatView;->density:F

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/game/sdk/comon/view/CustomFloatView;->boundWidth:I

    div-int/lit8 v6, v6, 0x5

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-double v5, v5

    cmpg-double v3, v3, v5

    if-lez v3, :cond_1

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_2

    float-to-double p1, p1

    int-to-double v2, v0

    sub-double v7, v2, v5

    cmpl-double v0, p1, v7

    if-ltz v0, :cond_2

    add-double/2addr v2, v5

    cmpg-double p1, p1, v2

    if-gtz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 14

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 60
    iput-object p0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->context:Landroid/content/Context;

    .line 61
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj;->getEx()Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->ex:Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    const-string/jumbo v0, "window"

    .line 64
    invoke-virtual {p0, v0}, Lcom/game/sdk/comon/view/CustomFloatView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->windowManager:Landroid/view/WindowManager;

    .line 65
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mobgame/R$layout;->bottom_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->removeView:Landroid/view/View;

    const/16 v1, 0x8

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->removeView:Landroid/view/View;

    sget v1, Lcom/mobgame/R$id;->txt_dismiss_noti:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->txtDismiss:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->density:F

    .line 69
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->boundWidth:I

    .line 70
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->boundHeight:I

    .line 71
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/game/sdk/comon/view/CustomFloatView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->logo:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {p0}, Lcom/game/sdk/comon/view/CustomFloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mobgame/R$dimen;->btn_logo_18:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 73
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 74
    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 75
    invoke-virtual {v1, v0, v0}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lcom/mobgame/R$drawable;->logotuoi:I

    .line 76
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lcom/mobgame/R$drawable;->logotuoi:I

    .line 77
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 78
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 79
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/comon/view/CustomFloatView;->ex:Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    .line 80
    invoke-virtual {v2}, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/comon/view/CustomFloatView;->logo:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 84
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7f6

    const/16 v6, 0x8

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x7d2

    const/16 v12, 0x8

    const/4 v13, -0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 98
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/game/sdk/comon/view/CustomFloatView;->context:Landroid/content/Context;

    const-string v3, "last_x"

    iget v4, p0, Lcom/game/sdk/comon/view/CustomFloatView;->defaultPosition:I

    invoke-static {v2, v3, v4}, Lcom/game/sdk/comon/sharePref/PrefManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 99
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/game/sdk/comon/view/CustomFloatView;->context:Landroid/content/Context;

    const-string v3, "last_y"

    iget v4, p0, Lcom/game/sdk/comon/view/CustomFloatView;->defaultPosition:I

    invoke-static {v2, v3, v4}, Lcom/game/sdk/comon/sharePref/PrefManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 102
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->logo:Landroid/widget/ImageView;

    new-instance v2, Lcom/game/sdk/comon/view/CustomFloatView$2;

    invoke-direct {v2, p0}, Lcom/game/sdk/comon/view/CustomFloatView$2;-><init>(Lcom/game/sdk/comon/view/CustomFloatView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/game/sdk/comon/view/CustomFloatView;->logo:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 161
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x7f6

    const/16 v6, 0x8

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    goto :goto_1

    .line 168
    :cond_2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/16 v11, 0x7d2

    const/16 v12, 0x8

    const/4 v13, -0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    :goto_1
    const/16 v1, 0x51

    .line 174
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 175
    iget-object v1, p0, Lcom/game/sdk/comon/view/CustomFloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/game/sdk/comon/view/CustomFloatView;->removeView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 181
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 182
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->logo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/game/sdk/comon/view/CustomFloatView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->removeView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 185
    iget-object v1, p0, Lcom/game/sdk/comon/view/CustomFloatView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method
