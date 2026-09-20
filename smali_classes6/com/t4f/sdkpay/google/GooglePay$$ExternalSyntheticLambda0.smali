.class public final synthetic Lcom/t4f/sdkpay/google/GooglePay$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/t4f/sdkpay/google/GooglePay;

.field public final synthetic f$1:Lcom/t4f/sdkpay/google/OnProductDetailsList;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/sdkpay/google/GooglePay;Lcom/t4f/sdkpay/google/OnProductDetailsList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/sdkpay/google/GooglePay$$ExternalSyntheticLambda0;->f$0:Lcom/t4f/sdkpay/google/GooglePay;

    iput-object p2, p0, Lcom/t4f/sdkpay/google/GooglePay$$ExternalSyntheticLambda0;->f$1:Lcom/t4f/sdkpay/google/OnProductDetailsList;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 2

    iget-object v0, p0, Lcom/t4f/sdkpay/google/GooglePay$$ExternalSyntheticLambda0;->f$0:Lcom/t4f/sdkpay/google/GooglePay;

    iget-object v1, p0, Lcom/t4f/sdkpay/google/GooglePay$$ExternalSyntheticLambda0;->f$1:Lcom/t4f/sdkpay/google/OnProductDetailsList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/t4f/sdkpay/google/GooglePay;->lambda$queryProductDetailsAsync$0$com-t4f-sdkpay-google-GooglePay(Lcom/t4f/sdkpay/google/OnProductDetailsList;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
