.class public final synthetic Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/flexionmobile/fdk/ResultHandler;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda8;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda8;->f$0:Landroid/app/Activity;

    check-cast p1, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;

    invoke-static {v0, p1}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->lambda$initAndSetUp$1(Landroid/app/Activity;Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;)V

    return-void
.end method
