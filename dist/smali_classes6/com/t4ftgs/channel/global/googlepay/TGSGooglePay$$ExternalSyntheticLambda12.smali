.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4f/sdk/core/Convector;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda12;->f$1:Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-void
.end method


# virtual methods
.method public final onConvert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda12;->f$1:Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$saveConsumingProduct$10(Ljava/lang/String;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
