.class Lcom/crosspromotion/sdk/utils/webview/WebUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crosspromotion/sdk/utils/webview/WebUtil;->sendEvent(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$script:Ljava/lang/String;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/WebUtil$1;->val$webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/crosspromotion/sdk/utils/webview/WebUtil$1;->val$script:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/WebUtil$1;->val$webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/webview/WebUtil$1;->val$script:Ljava/lang/String;

    new-instance v2, Lcom/crosspromotion/sdk/utils/webview/WebUtil$1$1;

    invoke-direct {v2, p0}, Lcom/crosspromotion/sdk/utils/webview/WebUtil$1$1;-><init>(Lcom/crosspromotion/sdk/utils/webview/WebUtil$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
