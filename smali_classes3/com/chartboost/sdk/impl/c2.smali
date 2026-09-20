.class public Lcom/chartboost/sdk/impl/c2;
.super Lcom/chartboost/sdk/impl/e6;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/c2;",
        "Lcom/chartboost/sdk/impl/e6;",
        "Landroid/content/Context;",
        "context",
        "",
        "html",
        "Lcom/chartboost/sdk/impl/k2;",
        "callback",
        "Lcom/chartboost/sdk/impl/f6;",
        "viewBaseCallback",
        "Lcom/chartboost/sdk/impl/p1;",
        "protocol",
        "Landroid/os/Handler;",
        "uiHandler",
        "baseExternalPathURL",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/impl/k2;Lcom/chartboost/sdk/impl/f6;Lcom/chartboost/sdk/impl/p1;Landroid/os/Handler;Ljava/lang/String;)V",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/impl/k2;Lcom/chartboost/sdk/impl/f6;Lcom/chartboost/sdk/impl/p1;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewBaseCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/chartboost/sdk/impl/e6;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/f6;)V

    const/4 p4, 0x0

    .line 4
    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 5
    invoke-static {}, Lcom/chartboost/sdk/impl/x2;->a()Lcom/chartboost/sdk/impl/x2;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/x2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/e6;->d:Landroid/widget/RelativeLayout;

    .line 8
    new-instance v1, Lcom/chartboost/sdk/impl/s1;

    invoke-direct {v1, p1}, Lcom/chartboost/sdk/impl/s1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/x2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/s1;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    .line 9
    sget-object v1, Lcom/chartboost/sdk/impl/v5;->a:Lcom/chartboost/sdk/impl/v5;

    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/impl/v5;->a(Landroid/content/Context;)V

    .line 10
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    new-instance v2, Lcom/chartboost/sdk/impl/j2;

    invoke-direct {v2, p1, p3}, Lcom/chartboost/sdk/impl/j2;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/k2;)V

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/x2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 12
    new-instance p1, Lcom/chartboost/sdk/impl/q1;

    iget-object p3, p0, Lcom/chartboost/sdk/impl/e6;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-direct {p1, p3, v1, p5, p6}, Lcom/chartboost/sdk/impl/q1;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Lcom/chartboost/sdk/impl/p1;Landroid/os/Handler;)V

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/x2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/impl/q1;

    .line 13
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e6;->c:Lcom/chartboost/sdk/impl/q1;

    .line 15
    iget-object p3, p0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    invoke-virtual {p3, p1}, Lcom/chartboost/sdk/impl/s1;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 18
    :try_start_0
    invoke-static {p4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p6, "Exception while enabling webview debugging "

    invoke-direct {p3, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "CommonWebViewBase"

    invoke-static {p3, p1}, Lcom/chartboost/sdk/impl/s3;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_0

    .line 24
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v1, p7

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/s1;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p1, "Html is null"

    .line 27
    invoke-virtual {p5, p1}, Lcom/chartboost/sdk/impl/p1;->b(Ljava/lang/String;)V

    .line 30
    :goto_1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/e6;->d:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 35
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    iget-object p2, p0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object p2, p0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    invoke-virtual {p2, p4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 38
    iget-object p2, p0, Lcom/chartboost/sdk/impl/e6;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
