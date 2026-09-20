.class public final synthetic Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/http/HttpApi;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lcom/tgs/aics/listener/IHttpRspDataListener;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/http/HttpApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IHttpRspDataListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$0:Lcom/tgs/aics/http/HttpApi;

    iput-object p2, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$6:Lcom/tgs/aics/listener/IHttpRspDataListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$0:Lcom/tgs/aics/http/HttpApi;

    iget-object v1, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;->f$6:Lcom/tgs/aics/listener/IHttpRspDataListener;

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/http/HttpApi;->lambda$commitRedemptionCode$10$com-tgs-aics-http-HttpApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IHttpRspDataListener;)V

    return-void
.end method
