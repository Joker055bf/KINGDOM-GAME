.class public final synthetic Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/adjust/sdk/IRunActivityHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda47;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda47;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda47;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda47;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/adjust/sdk/ActivityHandler;->lambda$addGlobalCallbackParameter$20(Ljava/lang/String;Ljava/lang/String;Lcom/adjust/sdk/ActivityHandler;)V

    return-void
.end method
