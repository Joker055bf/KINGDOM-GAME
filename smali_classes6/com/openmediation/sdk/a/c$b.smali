.class Lcom/openmediation/sdk/a/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/a/c;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/openmediation/sdk/a/c;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->j(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/bean/AdBean;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    const/16 v1, 0xdc

    invoke-static {v1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/a/c;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->i(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    new-instance v1, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    iget-object v2, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v2}, Lcom/openmediation/sdk/a/c;->k(Lcom/openmediation/sdk/a/c;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crosspromotion/sdk/utils/webview/BaseWebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/openmediation/sdk/a/c;->a(Lcom/openmediation/sdk/a/c;Lcom/crosspromotion/sdk/utils/webview/BaseWebView;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->l(Lcom/openmediation/sdk/a/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/a/c;->a(Lcom/openmediation/sdk/a/c;Landroid/content/Context;)[I

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v2}, Lcom/openmediation/sdk/a/c;->m(Lcom/openmediation/sdk/a/c;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/openmediation/sdk/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v3}, Lcom/openmediation/sdk/a/c;->c(Lcom/openmediation/sdk/a/c;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/openmediation/sdk/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->b(Lcom/openmediation/sdk/a/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v2}, Lcom/openmediation/sdk/a/c;->i(Lcom/openmediation/sdk/a/c;)Lcom/crosspromotion/sdk/utils/webview/BaseWebView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->d(Lcom/openmediation/sdk/a/c;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->e(Lcom/openmediation/sdk/a/c;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->f(Lcom/openmediation/sdk/a/c;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->b(Lcom/openmediation/sdk/a/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-static {v0}, Lcom/openmediation/sdk/a/c;->b(Lcom/openmediation/sdk/a/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    invoke-virtual {v0}, Lcom/openmediation/sdk/a/c;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/c$b;->a:Lcom/openmediation/sdk/a/c;

    const/16 v2, 0xdd

    invoke-static {v2}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/a/c;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BannerImp drawBanner error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
