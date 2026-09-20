.class public final synthetic Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/listener/IHttpRspDataListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/listener/IReportResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/listener/IReportResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda2;->f$0:Lcom/tgs/aics/listener/IReportResultListener;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/tgs/aics/bean/BaseDataBean;)V
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda2;->f$0:Lcom/tgs/aics/listener/IReportResultListener;

    invoke-static {v0, p1}, Lcom/tgs/aics/AiCustomServiceSDK;->lambda$reportHttp$5(Lcom/tgs/aics/listener/IReportResultListener;Lcom/tgs/aics/bean/BaseDataBean;)V

    return-void
.end method
