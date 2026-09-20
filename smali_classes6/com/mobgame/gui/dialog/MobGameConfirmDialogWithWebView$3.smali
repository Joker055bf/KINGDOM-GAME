.class Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$3;
.super Landroid/webkit/WebViewClient;
.source "MobGameConfirmDialogWithWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->initWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$3;->this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 154
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 143
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$3;->this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->access$000(Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
