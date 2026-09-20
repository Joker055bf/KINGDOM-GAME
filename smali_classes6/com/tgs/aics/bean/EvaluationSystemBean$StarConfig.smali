.class public Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;
.super Ljava/lang/Object;
.source "EvaluationSystemBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/EvaluationSystemBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarConfig"
.end annotation


# instance fields
.field private defaultStar:I

.field private fiveStarRemark:Ljava/lang/String;

.field private isAllowZeroStar:Z

.field private oneStarRemark:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultStarConfig(Landroid/content/Context;)Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;
    .locals 2

    .line 134
    new-instance v0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    invoke-direct {v0}, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;-><init>()V

    const-string v1, "tgs_aics_evaluate_very_bad"

    .line 135
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->oneStarRemark:Ljava/lang/String;

    const-string v1, "tgs_aics_evaluate_very_good"

    .line 136
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->fiveStarRemark:Ljava/lang/String;

    const/4 p0, 0x3

    .line 137
    iput p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->defaultStar:I

    const/4 p0, 0x0

    .line 138
    iput-boolean p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->isAllowZeroStar:Z

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;
    .locals 3

    .line 120
    new-instance v0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    invoke-direct {v0}, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;-><init>()V

    .line 122
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "oneStarRemark"

    .line 123
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->oneStarRemark:Ljava/lang/String;

    const-string p0, "fiveStarRemark"

    .line 124
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->fiveStarRemark:Ljava/lang/String;

    const-string p0, "defaultStar"

    const/4 v2, 0x5

    .line 125
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->defaultStar:I

    const-string p0, "required"

    .line 126
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->isAllowZeroStar:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 128
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getDefaultStar()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->defaultStar:I

    return v0
.end method

.method public getFiveStarRemark()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->fiveStarRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getOneStarRemark()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->oneStarRemark:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowZeroStar()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->isAllowZeroStar:Z

    return v0
.end method
