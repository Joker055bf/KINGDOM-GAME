.class Lcom/t4f/sdkpay/paypal/PayPalActivity$1;
.super Landroid/webkit/WebViewClient;
.source "PayPalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/sdkpay/paypal/PayPalActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/sdkpay/paypal/PayPalActivity;

.field final synthetic val$productJson:Ljava/lang/String;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/t4f/sdkpay/paypal/PayPalActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/t4f/sdkpay/paypal/PayPalActivity$1;->this$0:Lcom/t4f/sdkpay/paypal/PayPalActivity;

    iput-object p2, p0, Lcom/t4f/sdkpay/paypal/PayPalActivity$1;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/t4f/sdkpay/paypal/PayPalActivity$1;->val$productJson:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 94
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/t4f/sdkpay/paypal/PayPalActivity$1;->val$webView:Landroid/webkit/WebView;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "javascript:buyItem("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4f/sdkpay/paypal/PayPalActivity$1;->val$productJson:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 88
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
