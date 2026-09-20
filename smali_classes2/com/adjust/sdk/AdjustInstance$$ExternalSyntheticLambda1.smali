.class public final synthetic Lcom/adjust/sdk/AdjustInstance$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/adjust/sdk/IRunActivityHandler;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/adjust/sdk/AdjustInstance$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final run(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 1

    iget-boolean v0, p0, Lcom/adjust/sdk/AdjustInstance$$ExternalSyntheticLambda1;->f$0:Z

    invoke-static {v0, p1}, Lcom/adjust/sdk/AdjustInstance;->lambda$trackMeasurementConsent$1(ZLcom/adjust/sdk/ActivityHandler;)V

    return-void
.end method
