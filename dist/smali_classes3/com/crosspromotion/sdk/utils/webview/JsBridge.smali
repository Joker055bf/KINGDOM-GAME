.class public Lcom/crosspromotion/sdk/utils/webview/JsBridge;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;
    }
.end annotation


# instance fields
.field private abt:I

.field private campaign:Ljava/lang/String;

.field private isJsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isReportShowCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListener:Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;

.field private mWebView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

.field private placementId:Ljava/lang/String;

.field private sceneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->isJsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->isReportShowCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/crosspromotion/sdk/utils/webview/JsBridge;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->mWebView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    return-object p0
.end method

.method private jsLoaded()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->isJsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->mWebView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->sceneName:Ljava/lang/String;

    iget-object v3, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->campaign:Ljava/lang/String;

    iget v4, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->abt:I

    invoke-static {v1, v2, v3, v4}, Lcom/crosspromotion/sdk/utils/webview/JsReportParams;->buildInitEventParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/crosspromotion/sdk/utils/webview/WebUtil;->buildScript(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/WebUtil;->sendEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->isReportShowCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->reportShowEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->isJsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v1, "jsLoaded"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private openBrowser(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->mWebView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public injectJavaScript(Landroid/webkit/WebView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->mWebView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    const-string v0, "sdk"

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "postMessage :  method : "

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "m"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " data : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const-string v0, "jsLoaded"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->jsLoaded()V

    goto :goto_1

    :cond_2
    const-string v0, "openBrowser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->openBrowser(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_3
    const-string v0, "pushEvent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "close"

    if-nez v0, :cond_4

    :try_start_1
    const-string v0, "click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "wvClick"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "setCloseVisible"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "refreshAd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "reportVideoProgress"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "addRewarded"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->mListener:Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;->onReceiveMessage(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "postMessage"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->isJsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->isReportShowCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->mListener:Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;

    new-instance v0, Lcom/crosspromotion/sdk/utils/webview/JsBridge$1;

    invoke-direct {v0, p0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge$1;-><init>(Lcom/crosspromotion/sdk/utils/webview/JsBridge;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->mWebView:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/webview/JsReportParams;->buildEventParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/webview/WebUtil;->buildScript(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/crosspromotion/sdk/utils/webview/WebUtil;->sendEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public reportShowEvent()V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->isJsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->isReportShowCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, "wv.show"

    invoke-virtual {p0, v0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->reportEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->isReportShowCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public setAbt(I)V
    .locals 0

    iput p1, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->abt:I

    return-void
.end method

.method public setCampaign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->campaign:Ljava/lang/String;

    return-void
.end method

.method public setMessageListener(Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->mListener:Lcom/crosspromotion/sdk/utils/webview/JsBridge$MessageListener;

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->placementId:Ljava/lang/String;

    return-void
.end method

.method public setSceneName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->sceneName:Ljava/lang/String;

    return-void
.end method
