.class Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;
.super Ljava/lang/Object;
.source "PayPalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/sdkpay/paypal/PayPalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaypalPurchaseListenerPack"
.end annotation


# instance fields
.field private final mCustomRandomId:Ljava/lang/String;

.field private final mPaypalPurchaseListener:Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;->mPaypalPurchaseListener:Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;

    .line 152
    iput-object p1, p0, Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;->mCustomRandomId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;)Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/t4f/sdkpay/paypal/PayPalActivity$PaypalPurchaseListenerPack;->mPaypalPurchaseListener:Lcom/t4f/sdkpay/paypal/PaypalPurchaseListener;

    return-object p0
.end method
