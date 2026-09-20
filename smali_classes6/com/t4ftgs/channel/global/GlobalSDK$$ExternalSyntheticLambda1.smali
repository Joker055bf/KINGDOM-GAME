.class public final synthetic Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4f/sdk/core/OnFinish;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/t4f/sdk/core/OnSDKFinish;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/t4f/sdk/core/OnSDKFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda1;->f$1:Lcom/t4f/sdk/core/OnSDKFinish;

    return-void
.end method


# virtual methods
.method public final onFinish(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda1;->f$1:Lcom/t4f/sdk/core/OnSDKFinish;

    check-cast p3, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/t4ftgs/channel/global/GlobalSDK;->lambda$initForPay$1(Landroid/app/Activity;Lcom/t4f/sdk/core/OnSDKFinish;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
