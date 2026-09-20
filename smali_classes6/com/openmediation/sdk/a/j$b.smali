.class Lcom/openmediation/sdk/a/j$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/a/j;->a(Landroid/app/Activity;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;Lcom/openmediation/sdk/a/j$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/crosspromotion/sdk/bean/AdBean;

.field final synthetic c:Lcom/openmediation/sdk/a/j$c;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/crosspromotion/sdk/promotion/PromotionAdRect;

.field final synthetic f:Lcom/openmediation/sdk/a/j;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/a/j;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;Lcom/openmediation/sdk/a/j$c;Landroid/app/Activity;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/j$b;->f:Lcom/openmediation/sdk/a/j;

    iput-object p2, p0, Lcom/openmediation/sdk/a/j$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/a/j$b;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    iput-object p4, p0, Lcom/openmediation/sdk/a/j$b;->c:Lcom/openmediation/sdk/a/j$c;

    iput-object p5, p0, Lcom/openmediation/sdk/a/j$b;->d:Landroid/app/Activity;

    iput-object p6, p0, Lcom/openmediation/sdk/a/j$b;->e:Lcom/crosspromotion/sdk/promotion/PromotionAdRect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/j$b;->f:Lcom/openmediation/sdk/a/j;

    iget-object v1, p0, Lcom/openmediation/sdk/a/j$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/a/j$b;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/a/j;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/a/j$b;->c:Lcom/openmediation/sdk/a/j$c;

    if-eqz v0, :cond_0

    const-string v1, "PromotionAd not ready"

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/a/j$c;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/a/j$b;->f:Lcom/openmediation/sdk/a/j;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/openmediation/sdk/a/j$b;->d:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/openmediation/sdk/a/j;->a(Lcom/openmediation/sdk/a/j;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/openmediation/sdk/a/j$b;->f:Lcom/openmediation/sdk/a/j;

    invoke-static {v0}, Lcom/openmediation/sdk/a/j;->c(Lcom/openmediation/sdk/a/j;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/j$b;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/openmediation/sdk/a/j$b;->f:Lcom/openmediation/sdk/a/j;

    invoke-static {v2}, Lcom/openmediation/sdk/a/j;->c(Lcom/openmediation/sdk/a/j;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/j$b;->f:Lcom/openmediation/sdk/a/j;

    iget-object v1, p0, Lcom/openmediation/sdk/a/j$b;->e:Lcom/crosspromotion/sdk/promotion/PromotionAdRect;

    iget-object v2, p0, Lcom/openmediation/sdk/a/j$b;->d:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/a/j;->a(Lcom/openmediation/sdk/a/j;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;Landroid/app/Activity;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/j$b;->f:Lcom/openmediation/sdk/a/j;

    invoke-static {v1}, Lcom/openmediation/sdk/a/j;->d(Lcom/openmediation/sdk/a/j;)Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/openmediation/sdk/a/j$b;->f:Lcom/openmediation/sdk/a/j;

    invoke-static {v1}, Lcom/openmediation/sdk/a/j;->d(Lcom/openmediation/sdk/a/j;)Lcom/crosspromotion/sdk/utils/webview/JsBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crosspromotion/sdk/utils/webview/JsBridge;->reportShowEvent()V

    :cond_2
    iget-object v1, p0, Lcom/openmediation/sdk/a/j$b;->f:Lcom/openmediation/sdk/a/j;

    invoke-static {v1}, Lcom/openmediation/sdk/a/j;->c(Lcom/openmediation/sdk/a/j;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/a/j$b;->f:Lcom/openmediation/sdk/a/j;

    invoke-static {v2}, Lcom/openmediation/sdk/a/j;->b(Lcom/openmediation/sdk/a/j;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "PromotionAdView show success"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/j$b;->f:Lcom/openmediation/sdk/a/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/a/j;->a(Lcom/openmediation/sdk/a/j;Z)Z

    iget-object v0, p0, Lcom/openmediation/sdk/a/j$b;->c:Lcom/openmediation/sdk/a/j$c;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/openmediation/sdk/a/j$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "PromotionAdView"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/j$b;->c:Lcom/openmediation/sdk/a/j$c;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/openmediation/sdk/a/j$c;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
