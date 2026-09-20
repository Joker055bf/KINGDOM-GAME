.class public final synthetic Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda6;->f$0:I

    iput-object p2, p0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda6;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda6;->f$0:I

    iget-object v1, p0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda6;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->lambda$getProductListCallback$11(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
