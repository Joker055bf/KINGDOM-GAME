.class public final synthetic Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/adjust/sdk/ActivityHandler;

.field public final synthetic f$1:Lcom/adjust/sdk/AdjustPlayStoreSubscription;


# direct methods
.method public synthetic constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustPlayStoreSubscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda2;->f$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda2;->f$1:Lcom/adjust/sdk/AdjustPlayStoreSubscription;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda2;->f$0:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda2;->f$1:Lcom/adjust/sdk/AdjustPlayStoreSubscription;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->lambda$trackPlayStoreSubscription$42$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustPlayStoreSubscription;)V

    return-void
.end method
