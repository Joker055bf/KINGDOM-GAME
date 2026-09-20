.class Lcom/crosspromotion/sdk/utils/PUtils$1$1;
.super Lcom/crosspromotion/sdk/utils/webview/BaseWebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crosspromotion/sdk/utils/PUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crosspromotion/sdk/utils/PUtils$1;

.field final synthetic val$additionalHttpHeaders:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/crosspromotion/sdk/utils/PUtils$1;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/PUtils$1$1;->this$0:Lcom/crosspromotion/sdk/utils/PUtils$1;

    iput-object p4, p0, Lcom/crosspromotion/sdk/utils/PUtils$1$1;->val$additionalHttpHeaders:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/crosspromotion/sdk/utils/webview/BaseWebViewClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/crosspromotion/sdk/utils/webview/BaseWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://play.google.com/store/apps/details?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/PUtils$1$1;->val$additionalHttpHeaders:Ljava/util/Map;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
