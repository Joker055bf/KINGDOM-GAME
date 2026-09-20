.class Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;
.super Landroid/webkit/WebViewClient;
.source "MobGameDialogWebviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->initWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$700(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Z)V

    .line 482
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onPageFinished: "

    invoke-static {v0, v2}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$900(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 485
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$900(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v3, Lcom/mobgame/R$drawable;->backward:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$900(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 488
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$900(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v3, Lcom/mobgame/R$drawable;->backward_blur:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 490
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1000(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 492
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1000(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/mobgame/R$drawable;->forward:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1000(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 495
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1000(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/mobgame/R$drawable;->forward_blur:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 497
    :goto_1
    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    .line 500
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 505
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "about:blank"

    .line 449
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$700(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Z)V

    .line 452
    :cond_0
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted: url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 454
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 458
    :cond_1
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$800(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "webview_ads"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    const-string v0, "gobackbtn=0"

    .line 459
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$900(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$900(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_3

    const-string v0, "goforwardbtn=0"

    .line 464
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1000(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$900(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    if-eqz p2, :cond_4

    const-string v0, "refreshbtn=0"

    .line 469
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 470
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1000(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 472
    :cond_4
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$900(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 532
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$200()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onReceivedError: "

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :try_start_0
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    const/4 p3, 0x4

    invoke-static {p2, p3}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$002(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;I)I

    .line 535
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p2, p4}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$302(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->isConnected()Z

    move-result p2

    if-nez p2, :cond_0

    .line 537
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1200(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->showDialog()V

    goto :goto_0

    .line 540
    :cond_0
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p2, p1, p4}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1300(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 542
    :goto_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$700(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 544
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 512
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p3, "onReceivedError: "

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :try_start_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$302(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 515
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$002(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;I)I

    .line 516
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->isConnected()Z

    move-result p1

    const/16 p2, 0x8

    if-nez p1, :cond_0

    .line 517
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1200(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->showDialog()V

    goto :goto_0

    .line 520
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    const/4 p3, 0x5

    invoke-static {p1, p3}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$002(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;I)I

    .line 521
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1200(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 523
    :goto_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$700(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 525
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 426
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appkey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadUrlWithMobHeaders from shouldOverrideUrlLoading() "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1, v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 433
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 438
    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appkey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "loadUrlWithMobHeaders from shouldOverrideUrlLoading() "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 444
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
