.class Lcom/openmediation/sdk/a/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/a/j;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/openmediation/sdk/a/j;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/j$a;->a:Lcom/openmediation/sdk/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/j$a;->a:Lcom/openmediation/sdk/a/j;

    invoke-static {v0}, Lcom/openmediation/sdk/a/j;->a(Lcom/openmediation/sdk/a/j;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/j$a;->a:Lcom/openmediation/sdk/a/j;

    invoke-static {v0}, Lcom/openmediation/sdk/a/j;->b(Lcom/openmediation/sdk/a/j;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "PromotionAdView"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
