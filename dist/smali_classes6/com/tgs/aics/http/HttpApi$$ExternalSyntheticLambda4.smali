.class public final synthetic Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/http/HttpApi;

.field public final synthetic f$1:Lcom/tgs/aics/listener/IBaseBeanListener;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/http/HttpApi;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/http/HttpApi;

    iput-object p2, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda4;->f$1:Lcom/tgs/aics/listener/IBaseBeanListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/http/HttpApi;

    iget-object v1, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda4;->f$1:Lcom/tgs/aics/listener/IBaseBeanListener;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/http/HttpApi;->lambda$getHomeData$0$com-tgs-aics-http-HttpApi(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    return-void
.end method
