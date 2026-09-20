.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4f/sdk/core/OnSDKFinish;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

.field public final synthetic f$1:Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda3;->f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda3;->f$1:Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-void
.end method


# virtual methods
.method public final onSdkFinish(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda3;->f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda3;->f$1:Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->$r8$lambda$MK3YhISpbQHBYDKKEwzXz2hoXb0(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
