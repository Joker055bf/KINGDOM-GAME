.class public Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;
.super Landroid/app/DialogFragment;
.source "MobGameDialogStartWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$EventListener;
    }
.end annotation


# static fields
.field public static final DIALOG_WEBVIEW_TYPE_ADS:Ljava/lang/String; = "webview_ads"

.field public static final DIALOG_WEBVIEW_TYPE_WEBVIEW_DETAIL:Ljava/lang/String; = "webview_detail"

.field private static final TAG:Ljava/lang/String;

.field private static cachedUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mobgame/model/MUrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DefaultKeyboardDP:I

.field private final EstimatedKeyboardDP:I

.field private activity:Landroid/app/Activity;

.field private dialogCloseButton:Landroid/widget/ImageButton;

.field private dialogView:Landroid/view/View;

.field private eventListeners:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

.field private heightDiff:I

.field isCheck:Z

.field private jsHandler:Lcom/game/sdk/comon/js/JsHandler;

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private orientation:I

.field private saveReaded:Z

.field private selectButton:I

.field private type:Ljava/lang/String;

.field private wasOpened:Z

.field private webView:Lcom/mobgame/gui/MobGameWebViewDetail;

.field private webview_detail_title:Ljava/lang/String;

.field private webview_detail_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 120
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->selectButton:I

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->cachedUrls:Ljava/util/HashMap;

    .line 552
    iput-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->isCheck:Z

    .line 687
    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$8;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$8;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    iput-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    const/16 v1, 0x64

    .line 790
    iput v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->DefaultKeyboardDP:I

    const/16 v2, 0x30

    add-int/2addr v2, v1

    .line 792
    iput v2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->EstimatedKeyboardDP:I

    .line 793
    iput v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->heightDiff:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->selectButton:I

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->cachedUrls:Ljava/util/HashMap;

    .line 552
    iput-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->isCheck:Z

    .line 687
    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$8;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$8;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    iput-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    const/16 v1, 0x64

    .line 790
    iput v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->DefaultKeyboardDP:I

    const/16 v2, 0x30

    add-int/2addr v2, v1

    .line 792
    iput v2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->EstimatedKeyboardDP:I

    .line 793
    iput v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->heightDiff:I

    .line 138
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reload 1 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    .line 140
    iput-object p3, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webview_detail_url:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webview_detail_title:Ljava/lang/String;

    const-string p1, "webview_detail"

    .line 142
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->type:Ljava/lang/String;

    .line 143
    invoke-virtual {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->setType(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 144
    sget p2, Lcom/mobgame/R$style;->Theme_AppCompat_Translucent_FullScreen:I

    invoke-virtual {p0, p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->setStyle(II)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 2

    .line 126
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 p2, 0x0

    .line 96
    iput p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->selectButton:I

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->cachedUrls:Ljava/util/HashMap;

    .line 552
    iput-boolean p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->isCheck:Z

    .line 687
    new-instance v0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$8;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$8;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x64

    .line 790
    iput v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->DefaultKeyboardDP:I

    const/16 v1, 0x30

    add-int/2addr v1, v0

    .line 792
    iput v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->EstimatedKeyboardDP:I

    .line 793
    iput p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->heightDiff:I

    .line 129
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    .line 130
    iput-boolean p3, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->saveReaded:Z

    const-string p1, "webview_ads"

    .line 131
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->type:Ljava/lang/String;

    const/4 p1, 0x1

    .line 132
    sget p2, Lcom/mobgame/R$style;->Theme_AppCompat_Translucent_FullScreen:I

    invoke-virtual {p0, p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->setStyle(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->closeDialog()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->heightDiff:I

    return p0
.end method

.method static synthetic access$1002(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->heightDiff:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->wasOpened:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->wasOpened:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->orientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/app/Activity;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->eventListeners:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->selectButton:I

    return p0
.end method

.method static synthetic access$602(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->selectButton:I

    return p1
.end method

.method static synthetic access$700(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/view/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dialogView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->mProgressView:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->EstimatedKeyboardDP:I

    return p0
.end method

.method private closeDialog()V
    .locals 4

    const-string v0, "save_ads"

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    const-string v2, "shared_pref_hide_float_button"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->type:Ljava/lang/String;

    const-string v2, "webview_ads"

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    iget-boolean v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->isCheck:Z

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v1}, Lcom/mobgame/gui/MobGameWebViewDetail;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 270
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    const-string v2, "checkFormData()"

    new-instance v3, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;

    invoke-direct {v3, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/mobgame/gui/MobGameWebViewDetail;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dismiss()V

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 307
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobgame/MobGameSDK;->showPopup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private handlerBackButton()V
    .locals 2

    .line 483
    :try_start_0
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$6;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$6;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 500
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initWebview()V
    .locals 4

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mobgame/gui/MobGameWebViewDetail;->setBackgroundColor(I)V

    .line 321
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/mobgame/gui/MobGameWebViewDetail;->setInitialScale(I)V

    .line 322
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 323
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 325
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 326
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 327
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 328
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 v3, -0x1

    .line 329
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 332
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 333
    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v3, v2}, Lcom/mobgame/gui/MobGameWebViewDetail;->setScrollBarStyle(I)V

    .line 334
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 335
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 336
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 337
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 339
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 340
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 341
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 342
    new-instance v0, Lcom/game/sdk/comon/js/JsHandler;

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/game/sdk/comon/js/JsHandler;-><init>(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->jsHandler:Lcom/game/sdk/comon/js/JsHandler;

    .line 343
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    const-string v2, "JsHandler"

    invoke-virtual {v1, v0, v2}, Lcom/mobgame/gui/MobGameWebViewDetail;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->jsHandler:Lcom/game/sdk/comon/js/JsHandler;

    const-string v1, "mobGetError"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/comon/js/JsHandler;->mobAppSDKexecute(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$3;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$3;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebViewDetail;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 354
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$4;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$4;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebViewDetail;->setOnScrollChangedListener(Lcom/mobgame/gui/MobGameWebViewDetail$OnPropertyChangedListener;)V

    .line 372
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebViewDetail;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 472
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 676
    :try_start_0
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->stopLoading()V

    .line 678
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0, p1}, Lcom/mobgame/gui/MobGameWebViewDetail;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 683
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private postUrl(Lcom/mobgame/model/MUrl;)V
    .locals 0

    .line 624
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->postUrl(Ljava/lang/String;)V

    return-void
.end method

.method private postUrl(Ljava/lang/String;)V
    .locals 2

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mobgame/gui/MobGameWebViewDetail;->postUrl(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 631
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string v0, "game_shared_pref_cookies"

    .line 659
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 660
    invoke-static {p0, v0, v1}, Lcom/mobgame/utils/Preference;->getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 661
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p0

    .line 662
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 663
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 664
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 665
    sget-object v3, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadUrlWithMobHeaders form cookie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 670
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private setKeyboardListener()V
    .locals 3

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;

    invoke-direct {v2, p0, v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 858
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showMobAds()V
    .locals 4

    .line 575
    :try_start_0
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getMobPopup()Lcom/game/sdk/comon/object/SdkConfigObj$Pop;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 578
    invoke-virtual {v2}, Lcom/game/sdk/comon/object/SdkConfigObj;->getMaintenance()Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/game/sdk/comon/object/SdkConfigObj;->getMaintenance()Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 579
    invoke-virtual {v2}, Lcom/game/sdk/comon/object/SdkConfigObj;->getMaintenance()Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "btnc=0"

    .line 581
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;->getCanClose()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dialogCloseButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 582
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dialogCloseButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 586
    :goto_1
    invoke-virtual {p0, v1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 588
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private showProgress(Z)V
    .locals 4

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 539
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 540
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$7;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)V

    .line 541
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 548
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private showWebViewDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "onCreateDialog: url "

    const-string v0, "https://a.smobgame.com"

    .line 556
    :try_start_0
    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 559
    :cond_0
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "isCheck=1"

    .line 560
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 561
    iput-boolean p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->isCheck:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 564
    iput-boolean p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->isCheck:Z

    :goto_0
    const-string p1, "loadUrlWithMobHeaders from showWebViewDetail() "

    .line 566
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0, p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 569
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    const-string v0, "Show "

    .line 519
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 521
    :try_start_0
    sget-object v1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mobgame.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "category"

    const-string v2, "hideShowPopupLink"

    .line 523
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->type:Ljava/lang/String;

    return-object v0
.end method

.method public invokeJavascript(Ljava/lang/String;)V
    .locals 3

    .line 721
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mobgame/gui/MobGameWebViewDetail;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public isConnected()Z
    .locals 5

    const-string v0, "isConn : "

    const/4 v1, 0x0

    .line 728
    :try_start_0
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 729
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 731
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 732
    :goto_0
    sget-object v3, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 735
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 736
    sget-object v2, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/game/sdk/comon/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public loadUrlWithMobHeaders(Ljava/lang/String;)V
    .locals 5

    const-string v0, "Bearer "

    const-string v1, "loadUrlWithMobHeaders: "

    .line 637
    :try_start_0
    sget-object v2, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 639
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 640
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 642
    invoke-static {v1, p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V

    .line 643
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 644
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 645
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Authorization"

    .line 646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->stopLoading()V

    .line 648
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mobgame/gui/MobGameWebViewDetail;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 650
    :cond_1
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 653
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 157
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/game/sdk/comon/game/GameSdk;->setShow(ZLjava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 235
    sget p2, Lcom/mobgame/R$layout;->dialog_after_login:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dialogView:Landroid/view/View;

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 244
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 249
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 250
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 253
    :cond_0
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/game/sdk/comon/game/GameSdk;->setShow(ZLjava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "UploadBitmap"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 183
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 184
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->handlerBackButton()V

    .line 185
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/game/sdk/comon/game/GameSdk;->setShow(ZLjava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "onCreateDialog: activity name: "

    .line 191
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 193
    :try_start_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dialogView:Landroid/view/View;

    sget p2, Lcom/mobgame/R$id;->btn_dialog_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dialogCloseButton:Landroid/widget/ImageButton;

    .line 194
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dialogView:Landroid/view/View;

    sget p2, Lcom/mobgame/R$id;->loading_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 195
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dialogView:Landroid/view/View;

    sget p2, Lcom/mobgame/R$id;->dialog_webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mobgame/gui/MobGameWebViewDetail;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    .line 198
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    .line 199
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 200
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 201
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 202
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x30

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 203
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->initWebview()V

    .line 204
    sget-object p1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dialogCloseButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$1;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$1;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->type:Ljava/lang/String;

    const-string p2, "webview_ads"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->showMobAds()V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->type:Ljava/lang/String;

    const-string p2, "webview_detail"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dialogCloseButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webview_detail_title:Ljava/lang/String;

    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webview_detail_url:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->showWebViewDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_1
    :goto_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lcom/mobgame/R$style;->Theme_AppCompat_Translucent:I

    invoke-direct {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 221
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dialogView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 222
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/MobGameSDK;->unRegisterSensor()V

    .line 224
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->setKeyboardListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public postUrlWithMobHeaders(Lcom/mobgame/model/MUrl;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobgame/model/MUrl;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mobgame/api/PostTask$Callback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 608
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Lcom/mobgame/model/MUrl;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 609
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->toUri()Landroid/net/Uri;

    move-result-object p1

    .line 610
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 612
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-string v0, "hl=en"

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 615
    :cond_0
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebViewDetail;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V

    .line 616
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/mobgame/gui/MobGameWebViewDetail;->postUrl(Ljava/lang/String;[B)V

    goto :goto_1

    .line 619
    :cond_1
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->postUrl(Lcom/mobgame/model/MUrl;)V

    :goto_1
    return-void
.end method

.method public postUrlWithMobHeaders(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 594
    invoke-virtual {p0, p1, p2, v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->postUrlWithMobHeaders(Ljava/lang/String;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V

    return-void
.end method

.method public postUrlWithMobHeaders(Ljava/lang/String;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mobgame/api/PostTask$Callback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 599
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->cachedUrls:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobgame/model/MUrl;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Lcom/mobgame/model/MUrl;

    invoke-direct {v0, p1}, Lcom/mobgame/model/MUrl;-><init>(Ljava/lang/String;)V

    .line 603
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->postUrlWithMobHeaders(Lcom/mobgame/model/MUrl;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->type:Ljava/lang/String;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Show "

    .line 507
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 508
    sget-object p1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.mobgame.broadcast"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "category"

    const-string v0, "isShowPopupLink"

    .line 510
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 513
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showDialog()V
    .locals 3

    .line 743
    :try_start_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "M\u1ea5t k\u1ebft n\u1ed1i"

    .line 744
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v1, "Th\u1eed l\u1ea1i"

    .line 745
    new-instance v2, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;

    invoke-direct {v2, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 775
    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$10;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$10;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 783
    sget v1, Lcom/mobgame/R$string;->error_network:I

    invoke-virtual {p0, v1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 784
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 786
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
