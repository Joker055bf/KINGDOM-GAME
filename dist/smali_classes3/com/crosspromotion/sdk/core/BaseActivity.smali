.class public Lcom/crosspromotion/sdk/core/BaseActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crosspromotion/sdk/core/BaseActivity$d;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/RelativeLayout;

.field protected b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

.field protected c:Lcom/crosspromotion/sdk/bean/AdBean;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:Lcom/crosspromotion/sdk/core/a;

.field protected h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->h:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/crosspromotion/sdk/core/BaseActivity$b;

    invoke-direct {v0, p0}, Lcom/crosspromotion/sdk/core/BaseActivity$b;-><init>(Lcom/crosspromotion/sdk/core/BaseActivity;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/crosspromotion/sdk/core/BaseActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/crosspromotion/sdk/core/BaseActivity$c;-><init>(Lcom/crosspromotion/sdk/core/BaseActivity;Lcom/crosspromotion/sdk/utils/error/Error;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->getInstance()Lcom/crosspromotion/sdk/utils/webview/AdsWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/utils/webview/AdsWebView;->getAdView()Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->b:Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    new-instance v0, Lcom/crosspromotion/sdk/core/BaseActivity$d;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->c:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v1}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/crosspromotion/sdk/core/BaseActivity$d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/crosspromotion/sdk/core/BaseActivity$a;

    invoke-direct {v0, p0}, Lcom/crosspromotion/sdk/core/BaseActivity$a;-><init>(Lcom/crosspromotion/sdk/core/BaseActivity;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b(Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/crosspromotion/sdk/core/a;->d(Lcom/crosspromotion/sdk/utils/error/Error;)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/core/a;->l()V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->h:Z

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/core/a;->m()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->h:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "placementId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->d:Ljava/lang/String;

    const-string v1, "sceneName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->e:Ljava/lang/String;

    const-string v1, "abt"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->f:I

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/openmediation/sdk/a/d;->a(Ljava/lang/String;)Lcom/crosspromotion/sdk/core/a;

    move-result-object v1

    iput-object v1, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->g:Lcom/crosspromotion/sdk/core/a;

    const-string v1, "adBean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crosspromotion/sdk/bean/AdBean;->toAdBean(Ljava/lang/String;)Lcom/crosspromotion/sdk/bean/AdBean;

    move-result-object v0

    iput-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->c:Lcom/crosspromotion/sdk/bean/AdBean;

    const/16 v1, 0x132

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdBean;->getResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->c:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdBean;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->c:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdBean;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/BaseActivity;->a(Lcom/crosspromotion/sdk/utils/error/Error;)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/BaseActivity;->b()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/BaseActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/BaseActivity;->a(Lcom/crosspromotion/sdk/utils/error/Error;)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/BaseActivity;->b()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BaseActivity"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    const/16 p1, 0x133

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/BaseActivity;->a(Lcom/crosspromotion/sdk/utils/error/Error;)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/BaseActivity;->b()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crosspromotion/sdk/core/BaseActivity;->c:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
