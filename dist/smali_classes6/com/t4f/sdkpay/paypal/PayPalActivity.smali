.class public Lcom/t4f/sdkpay/paypal/PayPalActivity;
.super Landroid/app/Activity;
.source "PayPalActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;
    }
.end annotation


# static fields
.field public static final PRODUCT_JSON:Ljava/lang/String; = "productJson"

.field private static mPaypalPurchaseListener:Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/t4f/sdkpay/paypal/PayPalActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public static setPaypalPurchaseListener(Lcom/t4f/json/Json;Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    sput-object v0, Lcom/t4f/sdkpay/paypal/PayPalActivity;->mPaypalPurchaseListener:Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    const-string v0, "customRandomId"

    .line 141
    invoke-virtual {p0, v0}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    new-instance p0, Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;

    invoke-direct {p0, v0, p1}, Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;-><init>(Ljava/lang/String;Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;)V

    sput-object p0, Lcom/t4f/sdkpay/paypal/PayPalActivity;->mPaypalPurchaseListener:Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;

    :cond_1
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onApproved(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavascriptInterface paypal onApproved "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/t4f/sdkpay/paypal/PayPalActivity;->mPaypalPurchaseListener:Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;

    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0}, Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;->access$000(Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;)Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 109
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;->OnFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "To finish paypal activity while buy approved."

    .line 110
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/t4f/sdkpay/paypal/PayPalActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "Load paypal debug html."

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/t4f/sdkpay/paypal/PayPalActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "productJson"

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Create paypal activity."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lcom/t4f/json/Json;->json(Ljava/lang/String;)Lcom/t4f/json/Json;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "Fail create paypal activity while product json invalid."

    .line 35
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/t4f/sdkpay/paypal/PayPalActivity;->finish()V

    return-void

    :cond_1
    const-string v2, "clientId"

    .line 39
    invoke-virtual {v1, v2}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "secret"

    .line 40
    invoke-virtual {v1, v3}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    goto/16 :goto_2

    .line 46
    :cond_2
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/t4f/sdkpay/paypal/PayPalActivity;->mWebView:Landroid/webkit/WebView;

    .line 48
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/paypal.html"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "file:///android_asset/paypal.html"

    .line 54
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    .line 63
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 64
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 65
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 66
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 68
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v3, 0x0

    .line 71
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 72
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 73
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const-string v3, "UTF-8"

    .line 74
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 76
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 79
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v0, "android"

    .line 83
    invoke-virtual {v1, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/t4f/sdkpay/paypal/PayPalActivity$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/t4f/sdkpay/paypal/PayPalActivity$1;-><init>(Lcom/t4f/sdkpay/paypal/PayPalActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    new-instance p1, Lcom/t4f/sdkpay/paypal/PayPalWebChromeClient;

    invoke-direct {p1, p0}, Lcom/t4f/sdkpay/paypal/PayPalWebChromeClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/t4f/sdkpay/paypal/PayPalActivity;->setContentView(Landroid/view/View;)V

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Created paypal activity."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception load paypal html.e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    invoke-virtual {p0}, Lcom/t4f/sdkpay/paypal/PayPalActivity;->finish()V

    return-void

    :cond_4
    :goto_2
    const-string p1, "Fail create paypal activity while client id invalid."

    .line 42
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/t4f/sdkpay/paypal/PayPalActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/t4f/sdkpay/paypal/PayPalActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 119
    iput-object v1, p0, Lcom/t4f/sdkpay/paypal/PayPalActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 122
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 124
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 126
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Destroyed paypal activity."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 129
    sput-object v1, Lcom/t4f/sdkpay/paypal/PayPalActivity;->mPaypalPurchaseListener:Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;

    return-void
.end method
