.class public final synthetic Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/adjust/sdk/IRunActivityHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda22;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda22;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->lambda$removeGlobalPartnerParameter$26(Ljava/lang/String;Lcom/adjust/sdk/ActivityHandler;)V

    return-void
.end method
