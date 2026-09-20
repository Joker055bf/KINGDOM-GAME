.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Lcom/t4f/sdk/core/Convector;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Ljava/io/File;Lcom/t4f/sdk/core/Convector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda6;->f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda6;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda6;->f$2:Lcom/t4f/sdk/core/Convector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda6;->f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda6;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda6;->f$2:Lcom/t4f/sdk/core/Convector;

    invoke-static {v0, v1, v2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->$r8$lambda$US1VkaDKFkEbWu31XZCpVq9cgyU(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Ljava/io/File;Lcom/t4f/sdk/core/Convector;)V

    return-void
.end method
