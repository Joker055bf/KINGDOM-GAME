.class Lcom/t4ftgs/channel/global/googlepay/GooglePay$1;
.super Ljava/lang/Object;
.source "GooglePay.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4ftgs/channel/global/googlepay/GooglePay;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

.field final synthetic val$billingClient:Lcom/android/billingclient/api/BillingClient;


# direct methods
.method constructor <init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/BillingClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$1;->this$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$1;->val$billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$1;->this$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$1;->val$billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {v0, v1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->-$$Nest$mnotifyBillingServiceDisconnected(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/BillingClient;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$1;->this$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$1;->val$billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {v0, v1, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->-$$Nest$mfinishBillingConnectionAttempt(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
