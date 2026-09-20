.class public abstract Lcom/game/sdk/comon/game/BaseDialogWebFragment;
.super Landroid/app/DialogFragment;
.source "BaseDialogWebFragment.java"

# interfaces
.implements Lcom/game/sdk/comon/utils/KeyboardHeightObserver;


# static fields
.field public static URL_WEBVIEW:Ljava/lang/String; = "URL_WEBVIEW"

.field public static isShowLogo:Z = false


# instance fields
.field btnBack:Landroid/widget/TextView;

.field btnClose:Landroid/widget/TextView;

.field private clientListener:Lcom/game/sdk/comon/listener/IWebViewClientListener;

.field private keyboardProvider:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

.field layoutKeyboardSpace:Landroid/widget/LinearLayout;

.field public mActivity:Landroid/app/Activity;

.field swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public webView:Lcom/mobgame/gui/MobGameWebView2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)Lcom/game/sdk/comon/listener/IWebViewClientListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->clientListener:Lcom/game/sdk/comon/listener/IWebViewClientListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->parseWebView()V

    return-void
.end method

.method private changeKeyboardHeight(I)V
    .locals 2

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 336
    :try_start_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 337
    iget-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->layoutKeyboardSpace:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->layoutKeyboardSpace:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->layoutKeyboardSpace:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static isShow()Z
    .locals 1

    .line 106
    sget-boolean v0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->isShowLogo:Z

    return v0
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView2;->stopLoading()V

    .line 303
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {v0, p1}, Lcom/mobgame/gui/MobGameWebView2;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private parseWebView()V
    .locals 4

    const-string v0, "javascript:"

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/comon/utils/WvUtil;->parseWebView(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 311
    iget-object v2, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mobgame/gui/MobGameWebView2;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract getJsHandler()Lcom/game/sdk/comon/js/JsBase;
.end method

.method protected abstract getWebListener()Lcom/game/sdk/comon/listener/IWebViewClientListener;
.end method

.method public goBack()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    if-eqz v0, :cond_0

    .line 319
    new-instance v1, Lcom/game/sdk/comon/game/BaseDialogWebFragment$6;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment$6;-><init>(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebView2;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->getWebListener()Lcom/game/sdk/comon/listener/IWebViewClientListener;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->clientListener:Lcom/game/sdk/comon/listener/IWebViewClientListener;

    .line 147
    sget v0, Lcom/mobgame/R$id;->btnClose:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->btnClose:Landroid/widget/TextView;

    .line 148
    sget v0, Lcom/mobgame/R$id;->btnBack:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->btnBack:Landroid/widget/TextView;

    .line 149
    sget v0, Lcom/mobgame/R$id;->webview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobgame/gui/MobGameWebView2;

    iput-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    .line 150
    sget v0, Lcom/mobgame/R$id;->swRegister:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 151
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->initWebView()V

    .line 152
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->btnClose:Landroid/widget/TextView;

    new-instance v1, Lcom/game/sdk/comon/game/BaseDialogWebFragment$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment$1;-><init>(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->btnBack:Landroid/widget/TextView;

    new-instance v1, Lcom/game/sdk/comon/game/BaseDialogWebFragment$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment$2;-><init>(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/game/sdk/comon/game/BaseDialogWebFragment$3;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment$3;-><init>(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 176
    sget v0, Lcom/mobgame/R$id;->layout_keyboard_space:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->layoutKeyboardSpace:Landroid/widget/LinearLayout;

    .line 177
    new-instance p1, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->keyboardProvider:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    .line 178
    invoke-virtual {p1}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->start()V

    return-void
.end method

.method public initWebView()V
    .locals 4

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebView2;->clearCache(Z)V

    .line 186
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/mobgame/gui/MobGameWebView2;->setInitialScale(I)V

    .line 187
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mobgame/gui/MobGameWebView2;->setLayerType(ILandroid/graphics/Paint;)V

    .line 189
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView2;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 192
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 v3, -0x1

    .line 195
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 199
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    new-instance v1, Lcom/game/sdk/comon/game/BaseDialogWebFragment$4;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment$4;-><init>(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebView2;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 210
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    new-instance v1, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;-><init>(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)V

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebView2;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 261
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->getJsHandler()Lcom/game/sdk/comon/js/JsBase;

    move-result-object v1

    const-string v2, "JsHandler"

    invoke-virtual {v0, v1, v2}, Lcom/mobgame/gui/MobGameWebView2;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->URL_WEBVIEW:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {p0, v0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->loadUrlWithLibraryHeaders(Ljava/lang/String;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    const-string v1, "RegisterFragment"

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebView2;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public loadUrlWithLibraryHeaders(Ljava/lang/String;)V
    .locals 4

    .line 277
    :try_start_0
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 279
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {v2}, Lcom/mobgame/gui/MobGameWebView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/game/sdk/comon/utils/WvUtil;->setCookieToURLWebview(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "access_token"

    .line 282
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Authorization"

    .line 283
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_name"

    .line 284
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_os"

    .line 285
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_resolution"

    .line 286
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sdk_version"

    .line 287
    invoke-static {v0}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_network"

    .line 288
    invoke-static {v0}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "advertising_id"

    .line 289
    invoke-static {v0}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView2;->stopLoading()V

    .line 291
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mobgame/gui/MobGameWebView2;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-direct {p0, p1}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 296
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    iput-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 76
    sget v0, Lcom/mobgame/R$style;->DialogTheme:I

    invoke-virtual {p0, p1, v0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->setStyle(II)V

    .line 77
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/game/sdk/comon/game/GameSdk;->setShow(ZLjava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 91
    sget p3, Lcom/mobgame/R$layout;->dialog_web:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 93
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const p3, 0x3f4ccccd

    invoke-virtual {p2, p3}, Landroid/view/Window;->setDimAmount(F)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 124
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 125
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->keyboardProvider:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->close()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v0, 0x0

    .line 139
    sput-boolean v0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->isShowLogo:Z

    .line 140
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/game/sdk/comon/game/GameSdk;->setShow(ZLjava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    .line 142
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->changeKeyboardHeight(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 118
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 119
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->keyboardProvider:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/game/sdk/comon/utils/KeyboardHeightObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 111
    sput-boolean v0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->isShowLogo:Z

    .line 112
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->keyboardProvider:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/game/sdk/comon/utils/KeyboardHeightObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 130
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 100
    iget-object v1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SCREEN_ORIENTATION_CURRENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 101
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method public showProgressDialog(ZLjava/lang/String;)V
    .locals 0

    .line 134
    iget-object p2, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method
