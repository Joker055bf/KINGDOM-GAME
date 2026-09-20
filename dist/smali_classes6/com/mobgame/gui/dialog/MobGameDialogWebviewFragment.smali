.class public Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;
.super Landroid/app/DialogFragment;
.source "MobGameDialogWebviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field public static final DIALOG_WEBVIEW_TYPE_ADS:Ljava/lang/String; = "webview_ads"

.field public static final DIALOG_WEBVIEW_TYPE_WEBVIEW_DETAIL:Ljava/lang/String; = "webview_detail"

.field private static final TAG:Ljava/lang/String; = "com.mobgame.gui.dialog.MobGameDialogWebviewFragment"

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

.field private dialogBackwardButton:Landroid/widget/ImageButton;

.field private dialogCloseButton:Landroid/widget/ImageButton;

.field private dialogForwardButton:Landroid/widget/ImageButton;

.field private dialogReloadButton:Landroid/widget/ImageButton;

.field private dialogView:Landroid/view/View;

.field private eventListeners:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

.field private heightDiff:I

.field isCheck:Z

.field private isShowAds:Z

.field private jsHandler:Lcom/game/sdk/comon/js/JsHandler;

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private orientation:I

.field private selectButton:I

.field private type:Ljava/lang/String;

.field private urlLoadFail:Ljava/lang/String;

.field private wasOpened:Z

.field private webView:Lcom/mobgame/gui/MobGameWebViewDetail;

.field private webview_detail_title:Ljava/lang/String;

.field private webview_detail_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 128
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->selectButton:I

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->cachedUrls:Ljava/util/HashMap;

    .line 616
    iput-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->isCheck:Z

    .line 752
    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$11;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$11;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    iput-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    const/16 v1, 0x64

    .line 935
    iput v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->DefaultKeyboardDP:I

    const/16 v2, 0x30

    add-int/2addr v2, v1

    .line 937
    iput v2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->EstimatedKeyboardDP:I

    .line 938
    iput v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->heightDiff:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 134
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->selectButton:I

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->cachedUrls:Ljava/util/HashMap;

    .line 616
    iput-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->isCheck:Z

    .line 752
    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$11;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$11;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    iput-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    const/16 v1, 0x64

    .line 935
    iput v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->DefaultKeyboardDP:I

    const/16 v2, 0x30

    add-int/2addr v2, v1

    .line 937
    iput v2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->EstimatedKeyboardDP:I

    .line 938
    iput v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->heightDiff:I

    .line 136
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reload 1 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    .line 138
    iput-object p3, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webview_detail_url:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webview_detail_title:Ljava/lang/String;

    const-string p1, "webview_detail"

    .line 140
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->type:Ljava/lang/String;

    .line 141
    invoke-virtual {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->setType(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 142
    sget p2, Lcom/mobgame/R$style;->Theme_AppCompat_Translucent_FullScreen:I

    invoke-virtual {p0, p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->setStyle(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->selectButton:I

    return p0
.end method

.method static synthetic access$002(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->selectButton:I

    return p1
.end method

.method static synthetic access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogForwardButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->parseWebView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/view/View;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->showErrorPage(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->mProgressView:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->EstimatedKeyboardDP:I

    return p0
.end method

.method static synthetic access$1600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->heightDiff:I

    return p0
.end method

.method static synthetic access$1602(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->heightDiff:I

    return p1
.end method

.method static synthetic access$1700(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->wasOpened:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->wasOpened:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->orientation:I

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->urlLoadFail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->urlLoadFail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->closeDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/app/Activity;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->eventListeners:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogBackwardButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private closeDialog()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    const-string v1, "shared_pref_hide_float_button"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->type:Ljava/lang/String;

    const-string v1, "webview_ads"

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    .line 319
    :cond_0
    iget-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->isCheck:Z

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$5;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$5;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    const-string v2, "checkFormData()"

    invoke-virtual {v0, v2, v1}, Lcom/mobgame/gui/MobGameWebViewDetail;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dismiss()V

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    const-string v1, "save_ads"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 359
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobgame/MobGameSDK;->showPopup()V

    :cond_2
    return-void
.end method

.method private handlerBackButton()V
    .locals 2

    .line 554
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$9;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$9;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private initWebview()V
    .locals 4

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/mobgame/gui/MobGameWebViewDetail;->setInitialScale(I)V

    .line 369
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 370
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 371
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 372
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 373
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 375
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 v3, -0x1

    .line 376
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 379
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 380
    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v3, v2}, Lcom/mobgame/gui/MobGameWebViewDetail;->setScrollBarStyle(I)V

    .line 381
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 382
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 383
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 384
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 386
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 387
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 388
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 389
    new-instance v0, Lcom/game/sdk/comon/js/JsHandler;

    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0}, Lcom/game/sdk/comon/js/JsHandler;-><init>(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->jsHandler:Lcom/game/sdk/comon/js/JsHandler;

    .line 390
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->jsHandler:Lcom/game/sdk/comon/js/JsHandler;

    const-string v2, "JsHandler"

    invoke-virtual {v0, v1, v2}, Lcom/mobgame/gui/MobGameWebViewDetail;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->jsHandler:Lcom/game/sdk/comon/js/JsHandler;

    const-string v1, "mobGetError"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/comon/js/JsHandler;->mobAppSDKexecute(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$6;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$6;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebViewDetail;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 402
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$7;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$7;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebViewDetail;->setOnScrollChangedListener(Lcom/mobgame/gui/MobGameWebViewDetail$OnPropertyChangedListener;)V

    .line 420
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebViewDetail;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 549
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 740
    :try_start_0
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->stopLoading()V

    .line 742
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0, p1}, Lcom/mobgame/gui/MobGameWebViewDetail;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 748
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;
    .locals 3

    .line 577
    new-instance v0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-direct {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;-><init>()V

    .line 578
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 579
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param2"

    .line 580
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0, v1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private parseWebView()V
    .locals 18

    const-string v0, "javascript:"

    const-string v1, "\');\t\tform_action = updateURLParameter(form_action, \'mobgame-appsflyer-id\tform_elem.setAttribute(\'action\', form_action);\t\t\t\t\t} catch (err) {\t\t\t\t\t\t\t\t\t\t\t\t\t\tconsole.log(err);\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"

    const-string v2, "\');\t\tform_action = updateURLParameter(form_action, \'mobgame-appsflyer-id\tform_action = updateURLParameter(form_action, \'mobgame-distributor\', \'"

    const-string v3, "\');\t\tform_action = updateURLParameter(form_action, \'mobgame-advertising-id\', \'"

    const-string v4, "\');\t\tform_action = updateURLParameter(form_action, \'mobgame_lang\', \'"

    const-string v5, "\');\t\t\t\tform_action = updateURLParameter(form_action, \'mobgame-orientation\', \'"

    const-string v6, "\');\t\t\t\t\t\tform_action = updateURLParameter(form_action, \'mobgame-token\', \'"

    const-string v7, "\');\t\t\t\tform_action = updateURLParameter(form_action, \'mobgame-device\', \'"

    const-string v8, "\');\t\t\tform_action = updateURLParameter(form_action, \'mobgame-network\', \'"

    const-string v9, "\');\t\t\tform_action = updateURLParameter(form_action, \'mobgame-app-version-code\', \'"

    const-string v10, "\');\t\t\t\t\t\tform_action = updateURLParameter(form_action, \'mobgame-app-version\', \'"

    const-string v11, "\');\t\t\t\tform_action = updateURLParameter(form_action, \'mobgame-appkey\', \'"

    const-string v12, "\');\t\tform_action = updateURLParameter(form_action, \'mobgame-sdk-version\', \'"

    const-string v13, "\');\t\t\t\t\t\t\tform_action = updateURLParameter(form_action, \'mobgame-resolution\', \'"

    const-string v14, "\');\t\t\t\t\t\t\t\t\t\tform_action = updateURLParameter(form_action, \'mobgame-os\', \'"

    const-string v15, "if (typeof MobAppSDKexecute !== \'function\') {\t\t\t\t\t\tMobAppSDKexecute = function (command, params) {\t\t\t\t\t\ttry {\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar infoText = JSON.stringify(params);\t\t\t\t\t\t\twindow.JsHandler.mobAppSDKexecute(command,infoText);\t\t} catch (err) {\t\t\t\t\t\t\t\t\t\t\t\t\t\tconsole.log(err);\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t};\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tfunction updateURLParameter(url, param, paramVal) {\t\t\t\tvar newAdditionalURL = \'\';\t\t\t\t\t\t\t\t\t\tvar tempArray = url.split(\'?\');\t\t\t\t\t\t\t\t\tvar baseURL = tempArray[0];\t\t\t\t\t\t\t\t\t\tvar additionalURL = tempArray[1];\t\t\t\t\t\t\t\tvar temp = \'\';\t\t\t\t\t\t\t\t\t\t\t\t\tif (additionalURL) {\t\t\t\t\t\t\t\t\t\t\t\ttempArray = additionalURL.split(\'&\');\t\t\t\t\t\t\tfor (var i = 0; i < tempArray.length; i++) {\t\t\t\t\t\tif (tempArray[i].split(\'=\')[0] != param) {\t\t\t\t\t\t\tnewAdditionalURL += temp + tempArray[i];\t\t\t\t\t\ttemp = \'&\';\t\t\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar rows_txt = temp + \'\' + param + \'=\' + encodeURIComponent(paramVal);\t\t\t\treturn baseURL + \'?\' + newAdditionalURL + rows_txt;\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar form_elems = document.getElementsByTagName(\'form\');\t\tfor (var i = 0; i < form_elems.length; i++) {\t\t\t\t\t\ttry {\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar form_elem = form_elems[i];\t\t\t\t\t\t\t\t\tif (!form_elem.getAttribute(\'action\')) {\t\t\t\t\t\t\tform_elem.setAttribute(\'action\', document.URL);\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tvar form_action = updateURLParameter(form_elem.action, \'appkey\', \'"

    .line 1009
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->isAdded()Z

    move-result v16

    if-nez v16, :cond_0

    return-void

    .line 1010
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v17, v0

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1051
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v15

    invoke-virtual {v15}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1053
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1054
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1055
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1056
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v11

    invoke-virtual {v11}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1057
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1058
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/comon/utils/Utils;->getGameVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1059
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1060
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1061
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1062
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/comon/utils/DeviceUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1063
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1064
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1066
    invoke-static/range {v16 .. v16}, Lcom/game/sdk/comon/utils/Utils;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    .line 1074
    :try_start_1
    iget-object v2, v1, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    .line 1076
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private postUrl(Lcom/mobgame/model/MUrl;)V
    .locals 0

    .line 687
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->postUrl(Ljava/lang/String;)V

    return-void
.end method

.method private postUrl(Ljava/lang/String;)V
    .locals 2

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mobgame/gui/MobGameWebViewDetail;->postUrl(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 694
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string v0, "game_shared_pref_cookies"

    .line 723
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 724
    invoke-static {p0, v0, v1}, Lcom/mobgame/utils/Preference;->getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 725
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p0

    .line 726
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 727
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 728
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 729
    sget-object v3, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->TAG:Ljava/lang/String;

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

    .line 730
    invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 732
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 734
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private setKeyboardListener()V
    .locals 3

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 946
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;

    invoke-direct {v2, p0, v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1003
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showErrorPage(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7

    const-string v0, "<!DOCTYPE html>\t\t\t\t\t\t\t\t\t\t\t\t<html>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<head>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<meta content=\'text/html; charset=UTF-8\' http-equiv=\'Content-Type\'/> \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<meta name=\"viewport\" content=\"initial-scale=1,maximum-scale=1,user-scalable=no\" /> \t\t\t\t\t\t\t\t\t\t\t\t<style type=\"text/css\">\t\t\t\t\t\t\t\t\t\thtml, body {   \t\t\t\t\t\t\t\t\t\t\t\t\t\theight: 95%;\t\t\t\t\t\t\t\t\t\t\t\t\tpadding: 0px;\t\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tbody {\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tfont-family: Tahoma, Geneva, sans-serif;\t\t\t\t\t\tfont-size: 14px;\t\t\t\t\t\t\t\t\t\t\t\ttext-align: center;\t\t\t\t\t\t\t\t\t\t\t\tline-height: 20px;\t\t                                       background-color: #ffffff\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thtml,body,a,div,p {\t\t\t\t\t\t\t\t\t\t\t\t\tuser-select:none;\t\t\t\t\t\t\t\t\t\t\t\t-webkit-user-select:none;\t\t\t\t\t\t\t\t\t\t-moz-user-select:none;\t\t\t\t\t\t\t\t\t\t\t-webkit-touch-callout: none;\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ta {text-decoration:none}\t\t\t\t\t\t\t\t\t\t.btnTryAgain {\t\t\t\t\t\t\t\t\t\t\t\t\t\tdisplay: block;\t\t\t\t\t\t\t\t\t\t\t\t\tcolor: #607d8b;\t\t\t\t\t\t\t\t\t\t\t\t\tborder: 1px #607d8b solid;\t\t\t\t\t\t\t\t\t\tborder-radius: 10px;\t\t\t\t\t\t\t\t\t\t\t-webkit-border-radius: 10px;\t\t\t\t\t\t\t\t\t-moz-border-radius: 10px;\t\t\t\t\t\t\t\t\t\tfont-size: 18px;\t\t\t\t\t\t\t\t\t\t\t\tfont-weight: bold;\t\t\t\t\t\t\t\t\t\t\t\tline-height: 32px;\t\t\t\t\t\t\t\t\t\t\t\ttext-align: center;\t\t\t\t\t\t\t\t\t\t\t\tdisplay: block;\t\t\t\t\t\t\t\t\t\t\t\t\tmargin: 20px auto;\t\t\t\t\t\t\t\t\t\t\t\twidth: 128px;\t\t\t\t\t\t\t\t\t\t\t\t\tpadding: 5px 20px;\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t.alert {\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpadding: 0 20px;\t\t\t\t\t\t\t\t\t\t\t\tcolor: #607d8b;\t\t\t\t\t\t\t\t\t\t\t\t\tfont-size: 19px;\t\t\t\t\t\t\t\t\t\t\t\tfont-weight: bold;\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t/* Smartphones (landscape) ----------- */\t\t\t\t\t\t@media only screen\t\t\t\t\t\t\t\t\t\t\t\tand (min-width : 321px) {\t\t\t\t\t\t\t\t\t\t\t/* Styles */\t\t\t\t\t\t\t\t\t\t\t\t\t.img-alert {\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth: 64px;\t\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t/* Smartphones (portrait) ----------- */\t\t\t\t\t\t@media only screen\t\t\t\t\t\t\t\t\t\t\t\tand (max-width : 320px) {\t\t\t\t\t\t\t\t\t\t\t/* Styles */\t\t\t\t\t\t\t\t\t\t\t\t\t.img-alert {\t\t\t\t\t\t\t\t\t\t\t\t\t\twidth: 64px;\t\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</style>\t\t\t\t\t\t\t\t\t\t\t\t\t</head>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<body>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<table height=\'100%\' style=\'width:100%;margin:0px;background-color:white;\'>\t\t\t\t<tr><td valign=\'center\'>\t\t\t\t\t\t\t\t\t\t\t<img class=\"img-alert\" src=\"data: image/png;base64,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\">\t\t\t\t\t<p class=\"alert\">"

    .line 788
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/mobgame/R$string;->connection_lost:I

    invoke-static {v0, v2}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</p>\t\t\t\t\t<a href=\"[RELOADLINK]\" class=\"btnTryAgain\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 858
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/mobgame/R$string;->reload:I

    invoke-static {v1, v2}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</a>\t\t\t\t</td></tr>\t\t\t\t\t\t\t\t\t\t\t\t\t</table>\t\t\t\t\t\t\t\t\t\t\t\t\t</body>\t\t\t\t\t\t\t\t\t\t\t\t\t\t</html>\t\t\t\t\t\t\t\t\t\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v1, "[RELOADLINK]"

    .line 863
    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 865
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private showMobAds()V
    .locals 4

    .line 640
    :try_start_0
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getMobPopup()Lcom/game/sdk/comon/object/SdkConfigObj$Pop;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "btnc=0"

    .line 642
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogCloseButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 645
    :cond_0
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogCloseButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 647
    :goto_0
    iget v0, v0, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;->canClose:I

    const/4 v2, 0x1

    .line 648
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->TAG:Ljava/lang/String;

    const-string v2, "loadUrlWithMobHeaders from showMobAds() "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {p0, v1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 651
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private showProgress(Z)V
    .locals 4

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 603
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 604
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->mProgressView:Landroid/widget/ProgressBar;

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

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$10;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Z)V

    .line 605
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 612
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private showWebViewDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "onCreateDialog: url "

    const-string v0, "https://a.smobgame.com"

    .line 620
    :try_start_0
    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 623
    :cond_0
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "isCheck=1"

    .line 624
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 625
    iput-boolean p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->isCheck:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 628
    iput-boolean p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->isCheck:Z

    :goto_0
    const-string p1, "loadUrlWithMobHeaders from showWebViewDetail() "

    .line 630
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {p0, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 633
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->type:Ljava/lang/String;

    return-object v0
.end method

.method public invokeJavascript(Ljava/lang/String;)V
    .locals 3

    .line 782
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

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

    .line 873
    :try_start_0
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 874
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 876
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 877
    :goto_0
    sget-object v3, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->TAG:Ljava/lang/String;

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

    .line 880
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 881
    sget-object v2, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->TAG:Ljava/lang/String;

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

    .line 700
    :try_start_0
    sget-object v2, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 703
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 705
    invoke-static {v1, p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V

    .line 706
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 707
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 708
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Authorization"

    .line 709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->stopLoading()V

    .line 712
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mobgame/gui/MobGameWebViewDetail;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 714
    :cond_1
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 717
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/game/sdk/comon/game/GameSdk;->setShow(ZLjava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    .line 158
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->mParam1:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->mParam2:Ljava/lang/String;

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->orientation:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 192
    sget p2, Lcom/mobgame/R$layout;->fragment_mob_game_dialog_webview:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogView:Landroid/view/View;

    .line 193
    sget p2, Lcom/mobgame/R$id;->btn_dialog_reload:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogReloadButton:Landroid/widget/ImageButton;

    .line 194
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogView:Landroid/view/View;

    sget p2, Lcom/mobgame/R$id;->btn_dialog_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogCloseButton:Landroid/widget/ImageButton;

    .line 195
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogView:Landroid/view/View;

    sget p2, Lcom/mobgame/R$id;->btn_dialog_backward:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogBackwardButton:Landroid/widget/ImageButton;

    .line 196
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogView:Landroid/view/View;

    sget p2, Lcom/mobgame/R$id;->btn_dialog_forward:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogForwardButton:Landroid/widget/ImageButton;

    .line 197
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogView:Landroid/view/View;

    sget p2, Lcom/mobgame/R$id;->loading_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 198
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogView:Landroid/view/View;

    sget p2, Lcom/mobgame/R$id;->dialog_webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mobgame/gui/MobGameWebViewDetail;

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    .line 201
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webview_detail_url:Ljava/lang/String;

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    const-string p3, "gobackbtn=0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogBackwardButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webview_detail_url:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p3, "goforwardbtn=0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 209
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    .line 210
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 211
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 212
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 213
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x30

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    :goto_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogBackwardButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$1;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$1;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->initWebview()V

    .line 230
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogForwardButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$2;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$2;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogReloadButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogCloseButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$4;

    invoke-direct {p2, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$4;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->type:Ljava/lang/String;

    const-string p2, "webview_ads"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 281
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->showMobAds()V

    goto :goto_1

    .line 282
    :cond_2
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->type:Ljava/lang/String;

    const-string p2, "webview_detail"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 283
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogCloseButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 284
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webview_detail_title:Ljava/lang/String;

    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webview_detail_url:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->showWebViewDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_3
    :goto_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    sget p3, Lcom/mobgame/R$style;->Theme_AppCompat_Translucent:I

    invoke-direct {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 288
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 289
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/MobGameSDK;->unRegisterSensor()V

    .line 290
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->setKeyboardListener()V

    .line 291
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dialogView:Landroid/view/View;

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 297
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 302
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 303
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/game/sdk/comon/game/GameSdk;->setShow(ZLjava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    .line 305
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "UploadBitmap"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 177
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 178
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->handlerBackButton()V

    .line 179
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/game/sdk/comon/game/GameSdk;->setShow(ZLjava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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

    .line 672
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Lcom/mobgame/model/MUrl;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 673
    invoke-virtual {p1}, Lcom/mobgame/model/MUrl;->toUri()Landroid/net/Uri;

    move-result-object p1

    .line 674
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 676
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

    .line 677
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

    .line 679
    :cond_0
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebViewDetail;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V

    .line 680
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->webView:Lcom/mobgame/gui/MobGameWebViewDetail;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/mobgame/gui/MobGameWebViewDetail;->postUrl(Ljava/lang/String;[B)V

    goto :goto_1

    .line 682
    :cond_1
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->postUrl(Lcom/mobgame/model/MUrl;)V

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

    .line 657
    invoke-virtual {p0, p1, p2, v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->postUrlWithMobHeaders(Ljava/lang/String;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V

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

    .line 662
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->cachedUrls:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobgame/model/MUrl;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Lcom/mobgame/model/MUrl;

    invoke-direct {v0, p1}, Lcom/mobgame/model/MUrl;-><init>(Ljava/lang/String;)V

    .line 666
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->postUrlWithMobHeaders(Lcom/mobgame/model/MUrl;Ljava/util/HashMap;Lcom/mobgame/api/PostTask$Callback;)V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->type:Ljava/lang/String;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 588
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 589
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 590
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public showDialog()V
    .locals 3

    .line 888
    :try_start_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "M\u1ea5t k\u1ebft n\u1ed1i"

    .line 889
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v1, "Th\u1eed l\u1ea1i"

    .line 890
    new-instance v2, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;

    invoke-direct {v2, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 920
    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$13;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$13;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 928
    sget v1, Lcom/mobgame/R$string;->error_network:I

    invoke-virtual {p0, v1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 929
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 931
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
