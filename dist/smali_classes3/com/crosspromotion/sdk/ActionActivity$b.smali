.class Lcom/crosspromotion/sdk/ActionActivity$b;
.super Lcom/crosspromotion/sdk/utils/webview/BaseWebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crosspromotion/sdk/ActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/crosspromotion/sdk/ActionActivity;


# direct methods
.method constructor <init>(Lcom/crosspromotion/sdk/ActionActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/ActionActivity$b;->a:Lcom/crosspromotion/sdk/ActionActivity;

    invoke-direct {p0, p2, p3}, Lcom/crosspromotion/sdk/utils/webview/BaseWebViewClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/crosspromotion/sdk/utils/webview/BaseWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p2}, Lcom/crosspromotion/sdk/utils/GpUtil;->isGp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/crosspromotion/sdk/utils/GpUtil;->goGp(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/crosspromotion/sdk/ActionActivity$b;->a:Lcom/crosspromotion/sdk/ActionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/openmediation/sdk/utils/SdkUtil;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo p2, "shouldOverrideUrlLoading error"

    invoke-static {p2, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/crosspromotion/sdk/ActionActivity$b;->a:Lcom/crosspromotion/sdk/ActionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
