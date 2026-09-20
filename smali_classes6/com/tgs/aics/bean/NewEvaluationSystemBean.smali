.class public Lcom/tgs/aics/bean/NewEvaluationSystemBean;
.super Lcom/tgs/aics/bean/EvaluationSystemBean;
.source "NewEvaluationSystemBean.java"


# instance fields
.field private evaluationSystemConfig:Lcom/tgs/aics/bean/EvaluationSystemBean;

.field private style:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tgs/aics/bean/EvaluationSystemBean;-><init>()V

    return-void
.end method

.method public static defaultNewEvaluationSystem(Landroid/content/Context;)Lcom/tgs/aics/bean/NewEvaluationSystemBean;
    .locals 2

    .line 45
    new-instance v0, Lcom/tgs/aics/bean/NewEvaluationSystemBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/NewEvaluationSystemBean;-><init>()V

    .line 46
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$EvaluationSystemStyle;->star:Ljava/lang/String;

    iput-object v1, v0, Lcom/tgs/aics/bean/NewEvaluationSystemBean;->style:Ljava/lang/String;

    .line 47
    invoke-static {p0}, Lcom/tgs/aics/bean/EvaluationSystemBean;->defaultEvaluationSystem(Landroid/content/Context;)Lcom/tgs/aics/bean/EvaluationSystemBean;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/NewEvaluationSystemBean;->evaluationSystemConfig:Lcom/tgs/aics/bean/EvaluationSystemBean;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/tgs/aics/bean/NewEvaluationSystemBean;
    .locals 2

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    new-instance v0, Lcom/tgs/aics/bean/NewEvaluationSystemBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/NewEvaluationSystemBean;-><init>()V

    .line 34
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "style"

    .line 35
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/NewEvaluationSystemBean;->style:Ljava/lang/String;

    const-string p0, "config"

    .line 36
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/EvaluationSystemBean;->parse(Ljava/lang/String;)Lcom/tgs/aics/bean/EvaluationSystemBean;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/NewEvaluationSystemBean;->evaluationSystemConfig:Lcom/tgs/aics/bean/EvaluationSystemBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getEvaluationSystemConfig()Lcom/tgs/aics/bean/EvaluationSystemBean;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tgs/aics/bean/NewEvaluationSystemBean;->evaluationSystemConfig:Lcom/tgs/aics/bean/EvaluationSystemBean;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tgs/aics/bean/NewEvaluationSystemBean;->style:Ljava/lang/String;

    return-object v0
.end method
