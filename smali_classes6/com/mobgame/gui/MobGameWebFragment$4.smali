.class Lcom/mobgame/gui/MobGameWebFragment$4;
.super Landroid/webkit/WebViewClient;
.source "MobGameWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/MobGameWebFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/MobGameWebFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/MobGameWebFragment;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 477
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TITLE_WEBVIEW"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$200(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$200(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mobgame/gui/MobGameWebFragment$EventListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0, p2}, Lcom/mobgame/gui/MobGameWebFragment;->access$300(Lcom/mobgame/gui/MobGameWebFragment;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$000(Lcom/mobgame/gui/MobGameWebFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TROI OI : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->getResultCompareUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const v3, 0x240d5f

    if-eq v1, v3, :cond_4

    const v3, 0x2482d3

    if-eq v1, v3, :cond_3

    const v3, 0x3b1b20c6

    if-eq v1, v3, :cond_2

    const v3, 0x6c09dd9f

    if-eq v1, v3, :cond_1

    const v3, 0x7a9ad519

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "EVENTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "REPORTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v1, "EMAIL_LOGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_1

    :cond_3
    const-string v1, "NEWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const-string v1, "MENU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    goto :goto_1

    :cond_5
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    goto :goto_2

    .line 444
    :cond_7
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$000(Lcom/mobgame/gui/MobGameWebFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event name : Login Email"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_2
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$400(Lcom/mobgame/gui/MobGameWebFragment;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$500(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/view/MobSwipRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->setRefreshing(Z)V

    .line 459
    :cond_8
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$200(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 460
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$200(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mobgame/gui/MobGameWebFragment$EventListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_9
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 468
    iget-object p2, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {p2, p4}, Lcom/mobgame/gui/MobGameWebFragment;->access$602(Lcom/mobgame/gui/MobGameWebFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    iget-object p2, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/game/sdk/comon/utils/WvUtil;->showErrorPage(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {p1}, Lcom/mobgame/gui/MobGameWebFragment;->access$400(Lcom/mobgame/gui/MobGameWebFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {p1}, Lcom/mobgame/gui/MobGameWebFragment;->access$500(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/view/MobSwipRefreshLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 428
    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->isPlfUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment$4;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-virtual {p1, p2}, Lcom/mobgame/gui/MobGameWebFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 433
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
