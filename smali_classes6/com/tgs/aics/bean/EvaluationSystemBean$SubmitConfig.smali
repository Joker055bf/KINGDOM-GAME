.class public Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;
.super Ljava/lang/Object;
.source "EvaluationSystemBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/EvaluationSystemBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitConfig"
.end annotation


# instance fields
.field private submitBtnText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultSubmitConfig(Landroid/content/Context;)Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;
    .locals 2

    .line 313
    new-instance v0, Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;

    invoke-direct {v0}, Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;-><init>()V

    const-string v1, "tgs_aics_sumbit"

    .line 314
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;->submitBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;
    .locals 2

    .line 302
    new-instance v0, Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;

    invoke-direct {v0}, Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;-><init>()V

    .line 304
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "submitName"

    .line 305
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;->submitBtnText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 307
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getSubmitBtnText()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;->submitBtnText:Ljava/lang/String;

    return-object v0
.end method
