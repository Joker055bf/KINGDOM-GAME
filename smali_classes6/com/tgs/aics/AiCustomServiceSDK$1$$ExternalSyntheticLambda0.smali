.class public final synthetic Lcom/tgs/aics/AiCustomServiceSDK$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/listener/IBaseBeanListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/AiCustomServiceSDK$1;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/AiCustomServiceSDK$1;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/AiCustomServiceSDK$1$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/AiCustomServiceSDK$1;

    iput-object p2, p0, Lcom/tgs/aics/AiCustomServiceSDK$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/AiCustomServiceSDK$1$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/AiCustomServiceSDK$1;

    iget-object v1, p0, Lcom/tgs/aics/AiCustomServiceSDK$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/tgs/aics/AiCustomServiceSDK$1;->lambda$run$0$com-tgs-aics-AiCustomServiceSDK$1(Landroid/app/Activity;Lcom/tgs/aics/bean/BaseBean;)V

    return-void
.end method
