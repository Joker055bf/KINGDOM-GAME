.class Lcom/crosspromotion/sdk/utils/PUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crosspromotion/sdk/utils/PUtils;->doClick(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adBean:Lcom/crosspromotion/sdk/bean/AdBean;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/crosspromotion/sdk/bean/AdBean;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/PUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/crosspromotion/sdk/utils/PUtils$1;->val$adBean:Lcom/crosspromotion/sdk/bean/AdBean;

    iput-object p3, p0, Lcom/crosspromotion/sdk/utils/PUtils$1;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string/jumbo v0, "{scene}"

    :try_start_0
    invoke-static {}, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->getInstance()Lcom/crosspromotion/sdk/utils/webview/ActWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crosspromotion/sdk/utils/webview/ActWebView;->getActView()Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    iget-object v2, p0, Lcom/crosspromotion/sdk/utils/PUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;-><init>(Landroid/content/Context;)V

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Cache-Control"

    const-string v4, "no-cache"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/crosspromotion/sdk/utils/PUtils$1$1;

    iget-object v4, p0, Lcom/crosspromotion/sdk/utils/PUtils$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/crosspromotion/sdk/utils/PUtils$1;->val$adBean:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v5}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/crosspromotion/sdk/utils/PUtils$1$1;-><init>(Lcom/crosspromotion/sdk/utils/PUtils$1;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v3, p0, Lcom/crosspromotion/sdk/utils/PUtils$1;->val$placementId:Ljava/lang/String;

    invoke-static {v3}, Lcom/openmediation/sdk/utils/SceneUtil;->getSceneId(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/crosspromotion/sdk/utils/PUtils$1;->val$adBean:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v4}, Lcom/crosspromotion/sdk/bean/AdBean;->getAdUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v1, v4, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AdReport"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
