.class public final synthetic Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/http/HttpApi;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/http/HttpApi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/http/HttpApi;

    iput-object p2, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/http/HttpApi;

    iget-object v1, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/http/HttpApi;->lambda$faqDetailTap$5$com-tgs-aics-http-HttpApi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
