.class public final synthetic Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Lcom/t4f/sdk/core/OnFinish;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iput p2, p0, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;->f$4:Lcom/t4f/sdk/core/OnFinish;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    iget v1, p0, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    iget-object v4, p0, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;->f$4:Lcom/t4f/sdk/core/OnFinish;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4f/utils/Utils;->lambda$notifyFinishTryInUiThread$0(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)V

    return-void
.end method
