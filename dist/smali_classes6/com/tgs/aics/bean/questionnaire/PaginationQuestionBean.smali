.class public Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;
.super Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.source "PaginationQuestionBean.java"


# instance fields
.field public isEnd:Z

.field public isRenderedUI:Z

.field public maxFillTSecond:I

.field public minFillTSecond:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;-><init>()V

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 26
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;-><init>()V

    .line 27
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->parseCommonJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    const/4 v2, 0x1

    .line 29
    iput-boolean v2, v1, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->isEnd:Z

    const-string v2, "minFillTSecond"

    .line 30
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->minFillTSecond:I

    const-string v2, "maxFillTSecond"

    .line 31
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->maxFillTSecond:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 34
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)Lorg/json/JSONObject;
    .locals 3

    .line 45
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "minFillTSecond"

    .line 47
    iget v2, p1, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->minFillTSecond:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "maxFillTSecond"

    .line 48
    iget p1, p1, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->maxFillTSecond:I

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 0

    .line 41
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public isCanSubmit(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
