.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4f/sdk/core/Convector;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onConvert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$deleteConsumingProduct$11(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
