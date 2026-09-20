.class public Lcom/t4f/sdkpay/paypal/PayPalWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "PayPalWebChromeClient.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/t4f/sdkpay/paypal/PayPalWebChromeClient;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/t4f/sdkpay/paypal/PayPalWebChromeClient;->mActivity:Landroid/app/Activity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    .line 30
    iget-object p1, p0, Lcom/t4f/sdkpay/paypal/PayPalWebChromeClient;->mActivity:Landroid/app/Activity;

    .line 31
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u63d0\u793a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 33
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 34
    new-instance p1, Lcom/t4f/sdkpay/paypal/PayPalWebChromeClient$1;

    invoke-direct {p1, p0, p5}, Lcom/t4f/sdkpay/paypal/PayPalWebChromeClient$1;-><init>(Lcom/t4f/sdkpay/paypal/PayPalWebChromeClient;Landroid/webkit/JsPromptResult;)V

    const p2, 0x104000a

    invoke-virtual {p4, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 39
    new-instance p1, Lcom/t4f/sdkpay/paypal/PayPalWebChromeClient$2;

    invoke-direct {p1, p0, p5}, Lcom/t4f/sdkpay/paypal/PayPalWebChromeClient$2;-><init>(Lcom/t4f/sdkpay/paypal/PayPalWebChromeClient;Landroid/webkit/JsPromptResult;)V

    const/high16 p2, 0x1040000

    invoke-virtual {p4, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
