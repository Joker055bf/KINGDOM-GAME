.class public final synthetic Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/http/HttpApi;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/tgs/aics/listener/IBaseBeanListener;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/http/HttpApi;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda6;->f$0:Lcom/tgs/aics/http/HttpApi;

    iput-object p2, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda6;->f$3:Lcom/tgs/aics/listener/IBaseBeanListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda6;->f$0:Lcom/tgs/aics/http/HttpApi;

    iget-object v1, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda6;->f$3:Lcom/tgs/aics/listener/IBaseBeanListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tgs/aics/http/HttpApi;->lambda$uploadLogToServer$7$com-tgs-aics-http-HttpApi(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    return-void
.end method
