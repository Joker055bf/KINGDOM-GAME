.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4f/sdk/core/Convector;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

.field public final synthetic f$1:Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda5;->f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda5;->f$1:Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-void
.end method


# virtual methods
.method public final onConvert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda5;->f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda5;->f$1:Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->$r8$lambda$YYs2JghCIIawdXSTtJ1WTsq9vwM(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
