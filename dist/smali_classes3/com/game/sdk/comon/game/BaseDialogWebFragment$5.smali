.class Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;
.super Landroid/webkit/WebViewClient;
.source "BaseDialogWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/BaseDialogWebFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->showProgressDialog(ZLjava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    iget-object v0, v0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    iget-object v0, v0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 245
    :cond_0
    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-static {v0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->access$100(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    iget-object v0, v0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView2;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    iget-object v0, v0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->btnBack:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    iget-object v0, v0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->btnBack:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-static {v0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->access$000(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)Lcom/game/sdk/comon/listener/IWebViewClientListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-static {v0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->access$000(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)Lcom/game/sdk/comon/listener/IWebViewClientListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/game/sdk/comon/listener/IWebViewClientListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-static {v0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->access$000(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)Lcom/game/sdk/comon/listener/IWebViewClientListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-static {v0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->access$000(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)Lcom/game/sdk/comon/listener/IWebViewClientListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/game/sdk/comon/listener/IWebViewClientListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 236
    iget-object p2, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    const/4 p3, 0x0

    const-string v0, ""

    invoke-virtual {p2, p3, v0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->showProgressDialog(ZLjava/lang/String;)V

    .line 237
    iget-object p2, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    iget-object p2, p2, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1, p4}, Lcom/game/sdk/comon/utils/WvUtil;->showErrorPage(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->showProgressDialog(ZLjava/lang/String;)V

    .line 215
    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->loadUrlWithLibraryHeaders(Ljava/lang/String;)V

    return v2

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-static {v0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->access$000(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)Lcom/game/sdk/comon/listener/IWebViewClientListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$5;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-static {v0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->access$000(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)Lcom/game/sdk/comon/listener/IWebViewClientListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/game/sdk/comon/listener/IWebViewClientListener;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 221
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
