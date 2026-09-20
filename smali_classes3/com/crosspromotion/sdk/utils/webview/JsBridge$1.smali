.class Lcom/crosspromotion/sdk/utils/webview/JsBridge$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crosspromotion/sdk/utils/webview/JsBridge;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crosspromotion/sdk/utils/webview/JsBridge;


# direct methods
.method constructor <init>(Lcom/crosspromotion/sdk/utils/webview/JsBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge$1;->this$0:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge$1;->this$0:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->access$000(Lcom/crosspromotion/sdk/utils/webview/JsBridge;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/webview/JsBridge$1;->this$0:Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->access$000(Lcom/crosspromotion/sdk/utils/webview/JsBridge;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
