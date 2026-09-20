.class public Lcom/tgs/aics/bean/EvaluationSystemBean;
.super Lcom/tgs/aics/bean/BaseBean;
.source "EvaluationSystemBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/EvaluationSystemBean$TitleConfig;,
        Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;,
        Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;,
        Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;
    }
.end annotation


# instance fields
.field private evaluateContentConfigsMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;",
            ">;"
        }
    .end annotation
.end field

.field private starConfig:Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

.field private submitConfig:Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;

.field private titleConfig:Lcom/tgs/aics/bean/EvaluationSystemBean$TitleConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    return-void
.end method

.method public static defaultEvaluationSystem(Landroid/content/Context;)Lcom/tgs/aics/bean/EvaluationSystemBean;
    .locals 6

    .line 59
    new-instance v0, Lcom/tgs/aics/bean/EvaluationSystemBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/EvaluationSystemBean;-><init>()V

    .line 60
    invoke-static {p0}, Lcom/tgs/aics/bean/EvaluationSystemBean$TitleConfig;->defaultTitleConfig(Landroid/content/Context;)Lcom/tgs/aics/bean/EvaluationSystemBean$TitleConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/tgs/aics/bean/EvaluationSystemBean;->titleConfig:Lcom/tgs/aics/bean/EvaluationSystemBean$TitleConfig;

    .line 61
    invoke-static {p0}, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->defaultStarConfig(Landroid/content/Context;)Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/tgs/aics/bean/EvaluationSystemBean;->starConfig:Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tgs/aics/bean/EvaluationSystemBean;->evaluateContentConfigsMaps:Ljava/util/HashMap;

    const/4 v2, 0x1

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->defaultEvaluateContentConfigs(Landroid/content/Context;Z)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, v0, Lcom/tgs/aics/bean/EvaluationSystemBean;->evaluateContentConfigsMaps:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v4}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->defaultEvaluateContentConfigs(Landroid/content/Context;Z)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, v0, Lcom/tgs/aics/bean/EvaluationSystemBean;->evaluateContentConfigsMaps:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v4}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->defaultEvaluateContentConfigs(Landroid/content/Context;Z)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, v0, Lcom/tgs/aics/bean/EvaluationSystemBean;->evaluateContentConfigsMaps:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v4}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->defaultEvaluateContentConfigs(Landroid/content/Context;Z)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, v0, Lcom/tgs/aics/bean/EvaluationSystemBean;->evaluateContentConfigsMaps:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->defaultEvaluateContentConfigs(Landroid/content/Context;Z)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p0}, Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;->defaultSubmitConfig(Landroid/content/Context;)Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean;->submitConfig:Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/tgs/aics/bean/EvaluationSystemBean;
    .locals 2

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_0
    new-instance v0, Lcom/tgs/aics/bean/EvaluationSystemBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/EvaluationSystemBean;-><init>()V

    .line 43
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "titleConfig"

    .line 44
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/EvaluationSystemBean$TitleConfig;->parse(Ljava/lang/String;)Lcom/tgs/aics/bean/EvaluationSystemBean$TitleConfig;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean;->titleConfig:Lcom/tgs/aics/bean/EvaluationSystemBean$TitleConfig;

    const-string p0, "starConfig"

    .line 45
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->parse(Ljava/lang/String;)Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean;->starConfig:Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    const-string p0, "evaluateContentConfigs"

    .line 46
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->parse(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean;->evaluateContentConfigsMaps:Ljava/util/HashMap;

    const-string p0, "submitConfig"

    .line 47
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;->parse(Ljava/lang/String;)Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean;->submitConfig:Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getEvaluateContentConfigs(I)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean;->evaluateContentConfigsMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    return-object p1
.end method

.method public getStarConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean;->starConfig:Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    return-object v0
.end method

.method public getSubmitConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean;->submitConfig:Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;

    return-object v0
.end method

.method public getTitleConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$TitleConfig;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean;->titleConfig:Lcom/tgs/aics/bean/EvaluationSystemBean$TitleConfig;

    return-object v0
.end method
