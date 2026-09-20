.class public Lcom/t4f/sdkpay/paypal/Paypal;
.super Ljava/lang/Object;
.source "Paypal.java"


# instance fields
.field private mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static D(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string v0, "Unity"

    .line 56
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static notifyBuyFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 51
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;->OnFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public buyItem(Ljava/lang/String;Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;)Z
    .locals 6

    .line 23
    invoke-static {p1}, Lcom/t4f/json/Json;->json(Ljava/lang/String;)Lcom/t4f/json/Json;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Fail buy item with paypal native while productJson null."

    .line 25
    invoke-static {v0}, Lcom/t4f/sdkpay/paypal/Paypal;->D(Ljava/lang/String;)V

    const-string v0, "Product json null."

    .line 26
    invoke-static {v2, v0, p1, v1, p2}, Lcom/t4f/sdkpay/paypal/Paypal;->notifyBuyFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;)V

    return v2

    .line 29
    :cond_0
    iget-object v3, p0, Lcom/t4f/sdkpay/paypal/Paypal;->mApplication:Landroid/app/Application;

    if-nez v3, :cond_1

    const-string v0, "Fail buy paypal native while application null."

    .line 31
    invoke-static {v0}, Lcom/t4f/sdkpay/paypal/Paypal;->D(Ljava/lang/String;)V

    const-string v0, "Application null."

    .line 32
    invoke-static {v2, v0, p1, v1, p2}, Lcom/t4f/sdkpay/paypal/Paypal;->notifyBuyFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;)V

    return v2

    :cond_1
    :try_start_0
    const-string v4, "To start paypal activity."

    .line 36
    invoke-static {v4}, Lcom/t4f/sdkpay/paypal/Paypal;->D(Ljava/lang/String;)V

    .line 37
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/t4f/sdkpay/paypal/PayPalActivity;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "productJson"

    .line 38
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    invoke-static {v0, p2}, Lcom/t4f/sdkpay/paypal/PayPalActivity;->setPaypalPurchaseListener(Lcom/t4f/json/Json;Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception start paypal activity.e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/t4f/sdkpay/paypal/Paypal;->D(Ljava/lang/String;)V

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1, v1, p2}, Lcom/t4f/sdkpay/paypal/Paypal;->notifyBuyFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;)V

    return v2
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "Fail init paypal native while application null."

    .line 14
    invoke-static {p1}, Lcom/t4f/sdkpay/paypal/Paypal;->D(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/t4f/sdkpay/paypal/Paypal;->mApplication:Landroid/app/Application;

    const-string p1, "Initial paypal native."

    .line 18
    invoke-static {p1}, Lcom/t4f/sdkpay/paypal/Paypal;->D(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
