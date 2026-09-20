.class Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;
.super Landroid/webkit/WebViewClient;
.source "MobGameDialogStartWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->initWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field endLoadPage:J

.field startLoadPage:J

.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V
    .locals 2

    .line 372
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const-wide/16 v0, 0x0

    .line 373
    iput-wide v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->startLoadPage:J

    iput-wide v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->endLoadPage:J

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$500(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)V

    .line 419
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageFinished: "

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :try_start_0
    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/utils/WvUtil;->parseWebView(Landroid/content/Context;)Ljava/lang/String;

    .line 425
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 429
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->endLoadPage:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 432
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "onPageStarted: url="

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$500(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)V

    .line 405
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 407
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 410
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->startLoadPage:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 412
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 459
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onReceivedError: "

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    const/4 p3, 0x4

    invoke-static {p2, p3}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$602(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;I)I

    .line 461
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$500(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)V

    .line 462
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->isConnected()Z

    move-result p2

    if-nez p2, :cond_0

    .line 463
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$700(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->showDialog()V

    goto :goto_0

    .line 466
    :cond_0
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/game/sdk/comon/utils/WvUtil;->showErrorPage(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 468
    :goto_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p1, p3}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$500(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 439
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceivedError: "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :try_start_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$500(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)V

    .line 442
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$602(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;I)I

    .line 443
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->isConnected()Z

    move-result p1

    const/16 p3, 0x8

    if-nez p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$700(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->showDialog()V

    goto :goto_0

    .line 447
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$602(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;I)I

    .line 448
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$700(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :goto_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$500(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 452
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$500(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)V

    .line 379
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v0}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appkey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadUrlWithMobHeaders from shouldOverrideUrlLoading() "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p1, v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V

    return v1

    .line 386
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$500(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)V

    .line 392
    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "appkey="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "loadUrlWithMobHeaders from shouldOverrideUrlLoading() "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V

    return v1

    .line 398
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
