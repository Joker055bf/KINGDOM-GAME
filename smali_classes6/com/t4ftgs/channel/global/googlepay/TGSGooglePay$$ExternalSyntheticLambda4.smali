.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4f/sdk/core/Convector;


# instance fields
.field public final synthetic f$0:Lcom/t4f/sdk/core/OnFinish;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/sdk/core/OnFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda4;->f$0:Lcom/t4f/sdk/core/OnFinish;

    return-void
.end method


# virtual methods
.method public final onConvert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda4;->f$0:Lcom/t4f/sdk/core/OnFinish;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$getSavedConsumingProducts$12(Lcom/t4f/sdk/core/OnFinish;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
