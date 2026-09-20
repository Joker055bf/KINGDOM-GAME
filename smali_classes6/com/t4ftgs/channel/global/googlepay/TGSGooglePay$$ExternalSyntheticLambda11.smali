.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4f/sdk/core/OnFinish;


# instance fields
.field public final synthetic f$0:Lcom/t4f/sdk/core/OnSDKFinish;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/sdk/core/OnSDKFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda11;->f$0:Lcom/t4f/sdk/core/OnSDKFinish;

    return-void
.end method


# virtual methods
.method public final onFinish(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda11;->f$0:Lcom/t4f/sdk/core/OnSDKFinish;

    check-cast p3, Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$consumePurchaseProduct$2(Lcom/t4f/sdk/core/OnSDKFinish;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
