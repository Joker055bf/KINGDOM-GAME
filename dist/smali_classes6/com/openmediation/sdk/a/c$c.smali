.class Lcom/openmediation/sdk/a/c$c;
.super Lcom/crosspromotion/sdk/utils/webview/BaseWebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/openmediation/sdk/a/c;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/a/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/c$c;->b:Lcom/openmediation/sdk/a/c;

    invoke-direct {p0, p2, p3}, Lcom/crosspromotion/sdk/utils/webview/BaseWebViewClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/openmediation/sdk/a/c$c;->a:Z

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/openmediation/sdk/a/c$c;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/openmediation/sdk/a/c$c;->a:Z

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/crosspromotion/sdk/utils/webview/BaseWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {p2}, Lcom/crosspromotion/sdk/utils/GpUtil;->isGp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/crosspromotion/sdk/utils/GpUtil;->goGp(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/openmediation/sdk/utils/SdkUtil;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "shouldOverrideUrlLoading error"

    invoke-static {p2, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/openmediation/sdk/a/c$c;->a:Z

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :cond_3
    :goto_0
    return v1
.end method
