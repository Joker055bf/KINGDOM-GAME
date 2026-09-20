.class public final synthetic Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/adjust/sdk/ActivityHandler;

.field public final synthetic f$1:Lcom/adjust/sdk/AdjustEvent;

.field public final synthetic f$2:Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda6;->f$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda6;->f$1:Lcom/adjust/sdk/AdjustEvent;

    iput-object p3, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda6;->f$2:Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda6;->f$0:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda6;->f$1:Lcom/adjust/sdk/AdjustEvent;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda6;->f$2:Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;

    invoke-virtual {v0, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->lambda$verifyAndTrackPlayStorePurchase$46$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustEvent;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V

    return-void
.end method
