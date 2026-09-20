.class public Lcom/mobgame/MobGameSDK;
.super Ljava/lang/Object;
.source "MobGameSDK.java"


# static fields
.field private static INSTANCE:Lcom/mobgame/MobGameSDK; = null

.field private static final POPUP_ADS:Ljava/lang/String; = "popup_ads"

.field private static final POPUP_FLOAT_BUTTON:Ljava/lang/String; = "popup_float_button"

.field public static final POPUP_HELLO:Ljava/lang/String; = "popup_hello"

.field public static final POPUP_LINK:Ljava/lang/String; = "pop_link"

.field public static final POPUP_MAINTAIN:Ljava/lang/String; = "pop_maintain"

.field private static final TAG:Ljava/lang/String; = "MobGameSDK"

.field public static activity:Landroid/app/Activity;

.field public static applicationContext:Landroid/content/Context;

.field public static currentActivity:Landroid/app/Activity;

.field private static shouldShowFloatButton:Z

.field private static viewNotice:Landroid/view/View;


# instance fields
.field private accelerometerListener:Landroid/hardware/SensorEventListener;

.field private accelerometerPresent:Z

.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private canDraw:Z

.field checkTimeInited:Z

.field countDownTimer:Landroid/os/CountDownTimer;

.field private durationOfOneScrollingTextNow:J

.field private ex:Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

.field private isPauseForHideFloatButton:Z

.field private isScrollingText:Z

.field private isShowPopupLink:Z

.field isShowSocialDialog:Z

.field isShowing:Z

.field private listNoti:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/MessInGameObj;",
            ">;"
        }
    .end annotation
.end field

.field private mAccel:F

.field private mAccelCurrent:F

.field private mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field private onOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

.field private queuePopups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scrollAnimIndex:I

.field private scrollAnimRepeatCount:I

.field private scrollTextAnimation:Landroid/animation/ObjectAnimator;

.field private scrollTextLayout:Landroid/widget/FrameLayout;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private startPointOfOneScrollingTextNow:J

.field private textViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/mobgame/MobGameSDK;->onOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobgame/MobGameSDK;->queuePopups:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/mobgame/MobGameSDK;->isShowPopupLink:Z

    .line 118
    iput-boolean v0, p0, Lcom/mobgame/MobGameSDK;->isPauseForHideFloatButton:Z

    const v1, 0x411ce80a

    .line 120
    iput v1, p0, Lcom/mobgame/MobGameSDK;->mAccelCurrent:F

    .line 122
    iput v0, p0, Lcom/mobgame/MobGameSDK;->scrollAnimIndex:I

    .line 123
    iput v0, p0, Lcom/mobgame/MobGameSDK;->scrollAnimRepeatCount:I

    .line 125
    iput-boolean v0, p0, Lcom/mobgame/MobGameSDK;->isScrollingText:Z

    const-wide/16 v1, 0x0

    .line 129
    iput-wide v1, p0, Lcom/mobgame/MobGameSDK;->startPointOfOneScrollingTextNow:J

    .line 130
    iput-wide v1, p0, Lcom/mobgame/MobGameSDK;->durationOfOneScrollingTextNow:J

    .line 135
    new-instance v1, Lcom/mobgame/MobGameSDK$1;

    invoke-direct {v1, p0}, Lcom/mobgame/MobGameSDK$1;-><init>(Lcom/mobgame/MobGameSDK;)V

    iput-object v1, p0, Lcom/mobgame/MobGameSDK;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 231
    iput-boolean v0, p0, Lcom/mobgame/MobGameSDK;->checkTimeInited:Z

    .line 363
    iput-boolean v0, p0, Lcom/mobgame/MobGameSDK;->isShowSocialDialog:Z

    .line 535
    new-instance v1, Lcom/mobgame/MobGameSDK$5;

    invoke-direct {v1, p0}, Lcom/mobgame/MobGameSDK$5;-><init>(Lcom/mobgame/MobGameSDK;)V

    iput-object v1, p0, Lcom/mobgame/MobGameSDK;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 706
    new-instance v1, Lcom/mobgame/MobGameSDK$6;

    invoke-direct {v1, p0}, Lcom/mobgame/MobGameSDK$6;-><init>(Lcom/mobgame/MobGameSDK;)V

    iput-object v1, p0, Lcom/mobgame/MobGameSDK;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 803
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mobgame/MobGameSDK;->listNoti:Ljava/util/ArrayList;

    .line 1072
    iput-boolean v0, p0, Lcom/mobgame/MobGameSDK;->isShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/MobGameSDK;)F
    .locals 0

    .line 90
    iget p0, p0, Lcom/mobgame/MobGameSDK;->mAccelCurrent:F

    return p0
.end method

.method static synthetic access$002(Lcom/mobgame/MobGameSDK;F)F
    .locals 0

    .line 90
    iput p1, p0, Lcom/mobgame/MobGameSDK;->mAccelCurrent:F

    return p1
.end method

.method static synthetic access$100(Lcom/mobgame/MobGameSDK;)F
    .locals 0

    .line 90
    iget p0, p0, Lcom/mobgame/MobGameSDK;->mAccel:F

    return p0
.end method

.method static synthetic access$1000(Lcom/mobgame/MobGameSDK;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/mobgame/MobGameSDK;->changeInForegroundStatus(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/mobgame/MobGameSDK;F)F
    .locals 0

    .line 90
    iput p1, p0, Lcom/mobgame/MobGameSDK;->mAccel:F

    return p1
.end method

.method static synthetic access$1100(Lcom/mobgame/MobGameSDK;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/mobgame/MobGameSDK;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mobgame/MobGameSDK;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/mobgame/MobGameSDK;->isShowPopupLink:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/mobgame/MobGameSDK;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/mobgame/MobGameSDK;->removeViewNotice()V

    return-void
.end method

.method static synthetic access$1400()Landroid/view/View;
    .locals 1

    .line 90
    sget-object v0, Lcom/mobgame/MobGameSDK;->viewNotice:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 90
    sput-object p0, Lcom/mobgame/MobGameSDK;->viewNotice:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/mobgame/MobGameSDK;)Landroid/widget/FrameLayout;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/mobgame/MobGameSDK;->scrollTextLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/mobgame/MobGameSDK;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mobgame/MobGameSDK;->scrollTextLayout:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/mobgame/MobGameSDK;Ljava/util/ArrayList;Landroid/graphics/Paint;Landroid/graphics/Rect;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mobgame/MobGameSDK;->initScrollView(Ljava/util/ArrayList;Landroid/graphics/Paint;Landroid/graphics/Rect;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mobgame/MobGameSDK;)Ljava/util/ArrayList;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/mobgame/MobGameSDK;->textViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/mobgame/MobGameSDK;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mobgame/MobGameSDK;->textViews:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/mobgame/MobGameSDK;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/mobgame/MobGameSDK;->scrollAnimIndex:I

    return p0
.end method

.method static synthetic access$1802(Lcom/mobgame/MobGameSDK;I)I
    .locals 0

    .line 90
    iput p1, p0, Lcom/mobgame/MobGameSDK;->scrollAnimIndex:I

    return p1
.end method

.method static synthetic access$1900(Lcom/mobgame/MobGameSDK;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/mobgame/MobGameSDK;->scrollAnimRepeatCount:I

    return p0
.end method

.method static synthetic access$1902(Lcom/mobgame/MobGameSDK;I)I
    .locals 0

    .line 90
    iput p1, p0, Lcom/mobgame/MobGameSDK;->scrollAnimRepeatCount:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/mobgame/MobGameSDK;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mobgame/MobGameSDK;Ljava/util/ArrayList;Landroid/widget/TextView;JFI)V
    .locals 0

    .line 90
    invoke-direct/range {p0 .. p6}, Lcom/mobgame/MobGameSDK;->startScrollingText(Ljava/util/ArrayList;Landroid/widget/TextView;JFI)V

    return-void
.end method

.method static synthetic access$2102(Lcom/mobgame/MobGameSDK;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/mobgame/MobGameSDK;->canDraw:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/mobgame/MobGameSDK;)Landroid/app/AppOpsManager$OnOpChangedListener;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/mobgame/MobGameSDK;->onOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/mobgame/MobGameSDK;Landroid/app/AppOpsManager$OnOpChangedListener;)Landroid/app/AppOpsManager$OnOpChangedListener;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mobgame/MobGameSDK;->onOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mobgame/MobGameSDK;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/mobgame/MobGameSDK;->checkTimeText()V

    return-void
.end method

.method static synthetic access$400(Lcom/mobgame/MobGameSDK;Landroid/content/Context;)Z
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/mobgame/MobGameSDK;->isPhoneIsLockedOrNot(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/mobgame/MobGameSDK;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/mobgame/MobGameSDK;->isPauseForHideFloatButton:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mobgame/MobGameSDK;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/mobgame/MobGameSDK;->isScrollingText:Z

    return p0
.end method

.method static synthetic access$700(Lcom/mobgame/MobGameSDK;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/mobgame/MobGameSDK;->scrollTextAnimation:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mobgame/MobGameSDK;)J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/mobgame/MobGameSDK;->startPointOfOneScrollingTextNow:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/mobgame/MobGameSDK;)J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/mobgame/MobGameSDK;->durationOfOneScrollingTextNow:J

    return-wide v0
.end method

.method private changeInForegroundStatus(Z)V
    .locals 2

    .line 1149
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v1, "isInForeground"

    invoke-static {v0, v1, p1}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method private checkTimeText()V
    .locals 7

    const/4 v0, 0x1

    .line 235
    :try_start_0
    iput-boolean v0, p0, Lcom/mobgame/MobGameSDK;->checkTimeInited:Z

    .line 236
    new-instance v0, Lcom/mobgame/MobGameSDK$2;

    const-wide/32 v3, 0x927c0

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mobgame/MobGameSDK$2;-><init>(Lcom/mobgame/MobGameSDK;JJ)V

    .line 255
    invoke-virtual {v0}, Lcom/mobgame/MobGameSDK$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/mobgame/MobGameSDK;->countDownTimer:Landroid/os/CountDownTimer;

    .line 257
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private close(Z)V
    .locals 2

    .line 417
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.mobgame.broadcast"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "category"

    const-string v1, "dashboard_close"

    .line 418
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 420
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/config/GameConfigs;->getShow_qc()Z

    move-result p1

    if-nez p1, :cond_0

    .line 421
    iget-object p1, p0, Lcom/mobgame/MobGameSDK;->queuePopups:Ljava/util/ArrayList;

    const-string v0, "popup_float_button"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 423
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 266
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    sget-object v1, Lcom/mobgame/MobGameSDK;->applicationContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 269
    sget-object v1, Lcom/mobgame/MobGameSDK;->currentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 272
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/mobgame/MobGameSDK;
    .locals 2

    .line 178
    sget-object v0, Lcom/mobgame/MobGameSDK;->INSTANCE:Lcom/mobgame/MobGameSDK;

    if-nez v0, :cond_1

    .line 179
    const-class v0, Lcom/mobgame/MobGameSDK;

    monitor-enter v0

    .line 180
    :try_start_0
    sget-object v1, Lcom/mobgame/MobGameSDK;->INSTANCE:Lcom/mobgame/MobGameSDK;

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Lcom/mobgame/MobGameSDK;

    invoke-direct {v1}, Lcom/mobgame/MobGameSDK;-><init>()V

    sput-object v1, Lcom/mobgame/MobGameSDK;->INSTANCE:Lcom/mobgame/MobGameSDK;

    .line 183
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 185
    :cond_1
    :goto_0
    sget-object v0, Lcom/mobgame/MobGameSDK;->INSTANCE:Lcom/mobgame/MobGameSDK;

    return-object v0
.end method

.method private initScrollView(Ljava/util/ArrayList;Landroid/graphics/Paint;Landroid/graphics/Rect;Landroid/widget/FrameLayout;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/MessInGameObj;",
            ">;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Rect;",
            "Landroid/widget/FrameLayout;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 902
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 903
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/comon/object/MessInGameObj;

    invoke-virtual {v2}, Lcom/game/sdk/comon/object/MessInGameObj;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 904
    new-instance v3, Landroid/widget/TextView;

    sget-object v4, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 905
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v5

    invoke-virtual {p2, v4, v0, v5, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 906
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    const/4 v4, 0x1

    .line 907
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 908
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 909
    sget-object v5, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/game/sdk/comon/utils/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    const/high16 v5, 0x41880000    # 17.0f

    .line 910
    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_0
    const/high16 v5, 0x41300000    # 11.0f

    .line 912
    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 915
    :goto_1
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 916
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 917
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/comon/object/MessInGameObj;

    const/4 v5, -0x1

    .line 920
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 921
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/comon/object/MessInGameObj;

    invoke-virtual {v5}, Lcom/game/sdk/comon/object/MessInGameObj;->getType()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_2

    if-eq v5, v6, :cond_1

    goto :goto_2

    .line 957
    :cond_1
    new-instance v4, Lcom/mobgame/MobGameSDK$10;

    invoke-direct {v4, p0, v2}, Lcom/mobgame/MobGameSDK$10;-><init>(Lcom/mobgame/MobGameSDK;Lcom/game/sdk/comon/object/MessInGameObj;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 923
    :cond_2
    new-instance v4, Lcom/mobgame/MobGameSDK$9;

    invoke-direct {v4, p0, v2}, Lcom/mobgame/MobGameSDK$9;-><init>(Lcom/mobgame/MobGameSDK;Lcom/game/sdk/comon/object/MessInGameObj;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    :goto_2
    iget-object v2, p0, Lcom/mobgame/MobGameSDK;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    invoke-virtual {p4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x8

    .line 998
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 1002
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private isInForeground()Z
    .locals 3

    .line 1154
    :try_start_0
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v1, "isInForeground"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private isPhoneIsLockedOrNot(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "keyguard"

    .line 664
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 665
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "power"

    .line 671
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 673
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    xor-int/2addr v1, p1

    .line 678
    :goto_0
    sget-object p1, Lcom/mobgame/MobGameSDK;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isLocked : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static onBackPressed()V
    .locals 2

    .line 351
    :try_start_0
    sget-object v0, Lcom/mobgame/MobGameSDK;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v1, "start_session"

    invoke-static {v0, v1}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v1, "shared_pref_show_dashboard"

    invoke-static {v0, v1}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v0, 0x0

    .line 355
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private removeViewNotice()V
    .locals 2

    .line 846
    :try_start_0
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 847
    sget-object v1, Lcom/mobgame/MobGameSDK;->viewNotice:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 848
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 850
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private showDialogRequestOverlayPermission()V
    .locals 6

    const/4 v0, 0x0

    .line 1076
    :try_start_0
    iget-boolean v1, p0, Lcom/mobgame/MobGameSDK;->isShowing:Z

    if-eqz v1, :cond_0

    return-void

    .line 1080
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const v3, 0x103023a

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1085
    sget-object v2, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    sget-object v3, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1086
    sget-object v3, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    sget v4, Lcom/mobgame/R$string;->attention_overlay:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v3, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    sget v4, Lcom/mobgame/R$string;->overlay_message:I

    .line 1087
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mobgame/MobGameSDK$13;

    invoke-direct {v2, p0}, Lcom/mobgame/MobGameSDK$13;-><init>(Lcom/mobgame/MobGameSDK;)V

    const v3, 0x1040013

    .line 1088
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1116
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    .line 1117
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mobgame/MobGameSDK$12;

    invoke-direct {v2, p0}, Lcom/mobgame/MobGameSDK$12;-><init>(Lcom/mobgame/MobGameSDK;)V

    .line 1118
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1124
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1125
    iput-boolean v4, p0, Lcom/mobgame/MobGameSDK;->isShowing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1127
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1128
    iput-boolean v0, p0, Lcom/mobgame/MobGameSDK;->isShowing:Z

    :goto_0
    return-void
.end method

.method private showFragmentHaveBackButton(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "tag_fragment"

    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, ""

    .line 367
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 368
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 370
    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    const/4 v3, 0x1

    .line 372
    iput-boolean v3, p0, Lcom/mobgame/MobGameSDK;->isShowSocialDialog:Z

    if-nez v2, :cond_0

    .line 374
    new-instance v2, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    new-instance v3, Lcom/mobgame/model/MUrl;

    invoke-direct {v3, p1, p2}, Lcom/mobgame/model/MUrl;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;-><init>(Lcom/mobgame/model/MUrl;)V

    .line 375
    new-instance p1, Lcom/mobgame/MobGameSDK$3;

    invoke-direct {p1, p0}, Lcom/mobgame/MobGameSDK$3;-><init>(Lcom/mobgame/MobGameSDK;)V

    invoke-virtual {v2, p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 391
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 392
    invoke-virtual {p1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 394
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 397
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mobgame/model/MUrl;

    invoke-direct {v0, p1, p2}, Lcom/mobgame/model/MUrl;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->loadUrlWithMobHeaders(Lcom/mobgame/model/MUrl;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 399
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 403
    :cond_1
    sget-object p1, Lcom/mobgame/MobGameSDK;->TAG:Ljava/lang/String;

    const-string p2, "url null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 406
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private startScrollingText(Ljava/util/ArrayList;Landroid/widget/TextView;JFI)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/MessInGameObj;",
            ">;",
            "Landroid/widget/TextView;",
            "JFI)V"
        }
    .end annotation

    move-object v9, p0

    move-object v3, p2

    .line 1008
    :try_start_0
    iget v0, v9, Lcom/mobgame/MobGameSDK;->scrollAnimRepeatCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/mobgame/MobGameSDK;->scrollAnimRepeatCount:I

    .line 1009
    iget-boolean v0, v9, Lcom/mobgame/MobGameSDK;->isScrollingText:Z

    if-nez v0, :cond_0

    .line 1010
    iput-boolean v1, v9, Lcom/mobgame/MobGameSDK;->isScrollingText:Z

    :cond_0
    const/4 v2, 0x0

    .line 1011
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move/from16 v8, p5

    .line 1013
    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setX(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1016
    :try_start_1
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1018
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1020
    :goto_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-long v5, v0

    add-long/2addr v5, p3

    const-wide/16 v10, 0x6

    mul-long/2addr v5, v10

    long-to-float v0, v5

    mul-float/2addr v0, v4

    float-to-long v4, v0

    .line 1022
    iput-wide v4, v9, Lcom/mobgame/MobGameSDK;->durationOfOneScrollingTextNow:J

    const-string v0, "x"

    new-array v1, v1, [F

    .line 1024
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v1, v2

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/mobgame/MobGameSDK;->scrollTextAnimation:Landroid/animation/ObjectAnimator;

    .line 1025
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1026
    iget-object v0, v9, Lcom/mobgame/MobGameSDK;->scrollTextAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1027
    iget-object v0, v9, Lcom/mobgame/MobGameSDK;->scrollTextAnimation:Landroid/animation/ObjectAnimator;

    new-instance v10, Lcom/mobgame/MobGameSDK$11;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move/from16 v4, p6

    move-object v5, p1

    move-wide v6, p3

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/mobgame/MobGameSDK$11;-><init>(Lcom/mobgame/MobGameSDK;Landroid/widget/TextView;ILjava/util/ArrayList;JF)V

    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/mobgame/MobGameSDK;->startPointOfOneScrollingTextNow:J

    .line 1048
    iget-object v0, v9, Lcom/mobgame/MobGameSDK;->scrollTextAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1050
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 412
    invoke-direct {p0, v0}, Lcom/mobgame/MobGameSDK;->close(Z)V

    return-void
.end method

.method public dashboardNew()V
    .locals 9

    const-string v0, "data : "

    .line 479
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/GameConfigs;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mobgame/R$string;->lbl_not_login:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 481
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/game/sdk/comon/utils/ToastUtils;->showErrToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 484
    :cond_0
    :try_start_0
    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-direct {v1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;-><init>()V

    .line 485
    sget-object v2, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 486
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 487
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "Dashboard"

    if-nez v4, :cond_1

    :try_start_1
    const-string v0, "Sdk config null"

    .line 488
    invoke-static {v5, v0}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 491
    :cond_1
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/comon/object/SdkConfigObj;->getMenu()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v0, "Sdk config .Menu null"

    .line 492
    invoke-static {v5, v0}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 495
    :cond_2
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/comon/object/SdkConfigObj;->getMenu()Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    .line 497
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;

    if-eqz v4, :cond_4

    .line 499
    invoke-virtual {v4}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getId()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    const/4 v8, 0x6

    if-eq v7, v8, :cond_3

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    goto :goto_0

    .line 504
    :cond_3
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 505
    invoke-virtual {v4}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getSubMenu()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 509
    :cond_4
    :goto_0
    sget-object v7, Lcom/mobgame/MobGameSDK;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->KEY_DATA:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->KEY_ICON:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getIconActive()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->KEY_ID:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    invoke-virtual {v1, v3}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->setArguments(Landroid/os/Bundle;)V

    .line 515
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v3, "stack"

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const-string v0, "Dashboard Fragment"

    .line 516
    invoke-virtual {v1, v2, v0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 517
    new-instance v0, Lcom/mobgame/MobGameSDK$4;

    invoke-direct {v0, p0}, Lcom/mobgame/MobGameSDK$4;-><init>(Lcom/mobgame/MobGameSDK;)V

    invoke-virtual {v1, v0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->setEventListener(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$EventListener;)V

    .line 526
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobgame/MobGameSDK;->unRegisterSensor()V

    .line 527
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v6}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 529
    sget-object v1, Lcom/mobgame/MobGameSDK;->TAG:Ljava/lang/String;

    const-string v2, "onClick Error"

    invoke-static {v1, v2}, Lcom/game/sdk/comon/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getQueuePopups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1163
    iget-object v0, p0, Lcom/mobgame/MobGameSDK;->queuePopups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hideTextScroll(Landroid/app/Activity;Z)V
    .locals 2

    :try_start_0
    const-string v0, "HERE"

    const-string v1, " Hiding"

    .line 856
    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x1020002

    .line 857
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 858
    iget-boolean v1, p0, Lcom/mobgame/MobGameSDK;->isScrollingText:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    .line 860
    new-instance p2, Lcom/mobgame/MobGameSDK$8;

    invoke-direct {p2, p0, p1, v0}, Lcom/mobgame/MobGameSDK$8;-><init>(Lcom/mobgame/MobGameSDK;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 887
    :cond_0
    :try_start_1
    sget-object p1, Lcom/mobgame/MobGameSDK;->viewNotice:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 888
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 890
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 893
    iput-boolean p1, p0, Lcom/mobgame/MobGameSDK;->isScrollingText:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 896
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 4

    .line 190
    sget-object v0, Lcom/mobgame/MobGameSDK;->TAG:Ljava/lang/String;

    const-string v1, "MobGameSDK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sput-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    .line 192
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mobgame/MobGameSDK;->applicationContext:Landroid/content/Context;

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared_pref_main_activity"

    .line 193
    invoke-static {p1, v1, v0}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobgame/MobGameSDK;->canDraw:Z

    .line 201
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/MobGameSDK;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 202
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/MobGameSDK;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 204
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    const-string v0, "sensor"

    .line 206
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mobgame/MobGameSDK;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 210
    iput-boolean v1, p0, Lcom/mobgame/MobGameSDK;->accelerometerPresent:Z

    .line 211
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/mobgame/MobGameSDK;->accelerometerSensor:Landroid/hardware/Sensor;

    goto :goto_0

    .line 213
    :cond_0
    iput-boolean v3, p0, Lcom/mobgame/MobGameSDK;->accelerometerPresent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "shared_pref_show_dashboard"

    .line 220
    invoke-static {p1, v0}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/mobgame/MobGameSDK;->checkTimeText()V

    .line 223
    invoke-static {p1}, Lcom/game/sdk/comon/game/LifeCycleActivity;->getInstance(Landroid/app/Activity;)Lcom/game/sdk/comon/game/LifeCycleActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/game/LifeCycleActivity;->onCreate()V

    return-void
.end method

.method public isGrantedPermission(Landroid/content/Context;)Z
    .locals 3

    .line 1139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1140
    iget-boolean v0, p0, Lcom/mobgame/MobGameSDK;->canDraw:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1142
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v1, :cond_1

    .line 1143
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 429
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public logout()V
    .locals 3

    const-string v0, "shared_pref_hide_float_button"

    .line 330
    :try_start_0
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v2, "game_shared_pref_cookies"

    invoke-static {v1, v2}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v2, "shared_pref_show_dashboard"

    invoke-static {v1, v2}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v2, "shared_pref_notificatons"

    invoke-static {v1, v2}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 336
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 338
    iget-object v1, p0, Lcom/mobgame/MobGameSDK;->queuePopups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 339
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v2, "shared_pref_float_button_dismiss_time"

    invoke-static {v1, v2}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    sget-object v1, Lcom/mobgame/MobGameSDK;->currentActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 276
    sget-object v0, Lcom/mobgame/MobGameSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult:requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4e22

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object v0

    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/game/sdk/comon/js/command/CmdDashboard;->handleResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0

    .line 281
    :cond_1
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/mobgame/MobGameSDK;->requestOverlayPermission(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 291
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDestroySDK()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1

    .line 474
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/game/sdk/comon/js/command/CmdDashboard;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 300
    :try_start_0
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->hasHardwareButtons()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 302
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1406

    .line 304
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 312
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1404

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerSensor()V
    .locals 4

    .line 684
    :try_start_0
    iget-boolean v0, p0, Lcom/mobgame/MobGameSDK;->accelerometerPresent:Z

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/mobgame/MobGameSDK;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mobgame/MobGameSDK;->accelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/mobgame/MobGameSDK;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 691
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public requestOverlayPermission(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1057
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mobgame/MobGameSDK;->isGrantedPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    invoke-direct {p0}, Lcom/mobgame/MobGameSDK;->showDialogRequestOverlayPermission()V

    goto :goto_0

    .line 1060
    :cond_0
    invoke-direct {p0}, Lcom/mobgame/MobGameSDK;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/mobgame/MobGameSDK;->shouldShowFloatButton:Z

    if-nez v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/mobgame/MobGameSDK;->ex:Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    if-eqz v0, :cond_1

    const-string v0, "need show 18+"

    const/4 v1, 0x1

    .line 1062
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1068
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showPopup()V
    .locals 6

    const-string v0, "Show popup: "

    .line 435
    iget-object v1, p0, Lcom/mobgame/MobGameSDK;->queuePopups:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 439
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mobgame/MobGameSDK;->queuePopups:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 440
    sget-object v3, Lcom/mobgame/MobGameSDK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/mobgame/MobGameSDK;->queuePopups:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, -0x2e09c047

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v3, :cond_3

    const v3, 0x26e38128

    if-eq v0, v3, :cond_2

    const v2, 0x6a9e5328

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "popup_float_button"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v4

    goto :goto_1

    :cond_2
    const-string v0, "pop_link"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_3
    const-string v0, "pop_maintain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v0, "save_ads"

    const-string v1, "dialog webview"

    if-eqz v2, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    goto :goto_2

    .line 458
    :cond_5
    :try_start_1
    sput-boolean v5, Lcom/mobgame/MobGameSDK;->shouldShowFloatButton:Z

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mobgame.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "category"

    const-string v2, "float_button"

    .line 460
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_2

    .line 452
    :cond_6
    sput-boolean v5, Lcom/mobgame/MobGameSDK;->shouldShowFloatButton:Z

    .line 453
    new-instance v2, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    sget-object v3, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, v5, v5}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;-><init>(Landroid/app/Activity;ZZ)V

    .line 454
    sget-object v3, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 455
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v1, v0, v5}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_2

    .line 445
    :cond_7
    sput-boolean v5, Lcom/mobgame/MobGameSDK;->shouldShowFloatButton:Z

    .line 446
    new-instance v2, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    sget-object v3, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, v5, v5}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;-><init>(Landroid/app/Activity;ZZ)V

    .line 447
    sget-object v3, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 448
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v1, v0, v5}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_2
    return-void
.end method

.method public showTextScroll(Landroid/app/Activity;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/MessInGameObj;",
            ">;)V"
        }
    .end annotation

    .line 807
    :try_start_0
    new-instance v0, Lcom/mobgame/MobGameSDK$7;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/mobgame/MobGameSDK$7;-><init>(Lcom/mobgame/MobGameSDK;Landroid/app/Activity;Ljava/util/ArrayList;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 840
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showTextScroll(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/MessInGameObj;",
            ">;)V"
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/mobgame/MobGameSDK;->listNoti:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iput-object p1, p0, Lcom/mobgame/MobGameSDK;->listNoti:Ljava/util/ArrayList;

    goto :goto_0

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/mobgame/MobGameSDK;->listNoti:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 800
    :goto_0
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/mobgame/MobGameSDK;->showTextScroll(Landroid/app/Activity;ILjava/util/ArrayList;)V

    return-void
.end method

.method public unRegisterSensor()V
    .locals 2

    .line 697
    :try_start_0
    iget-boolean v0, p0, Lcom/mobgame/MobGameSDK;->accelerometerPresent:Z

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/mobgame/MobGameSDK;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mobgame/MobGameSDK;->accelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 701
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
