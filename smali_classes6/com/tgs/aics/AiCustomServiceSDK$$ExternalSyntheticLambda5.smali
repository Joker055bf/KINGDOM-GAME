.class public final synthetic Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/listener/IBaseBeanListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/AiCustomServiceSDK;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:J

.field public final synthetic f$11:Lcom/tgs/aics/listener/IReportResultListener;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/AiCustomServiceSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/tgs/aics/listener/IReportResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$0:Lcom/tgs/aics/AiCustomServiceSDK;

    iput-object p2, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$7:Ljava/lang/String;

    iput-object p9, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$8:Ljava/lang/String;

    iput-object p10, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$9:Ljava/lang/String;

    iput-wide p11, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$10:J

    iput-object p13, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$11:Lcom/tgs/aics/listener/IReportResultListener;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 14

    iget-object v0, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$0:Lcom/tgs/aics/AiCustomServiceSDK;

    iget-object v1, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$7:Ljava/lang/String;

    iget-object v8, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$8:Ljava/lang/String;

    iget-object v9, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$9:Ljava/lang/String;

    iget-wide v10, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$10:J

    iget-object v12, p0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;->f$11:Lcom/tgs/aics/listener/IReportResultListener;

    move-object v13, p1

    invoke-virtual/range {v0 .. v13}, Lcom/tgs/aics/AiCustomServiceSDK;->lambda$report$4$com-tgs-aics-AiCustomServiceSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/tgs/aics/listener/IReportResultListener;Lcom/tgs/aics/bean/BaseBean;)V

    return-void
.end method
