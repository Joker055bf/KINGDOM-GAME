.class public Lcom/tgs/aics/bean/questionnaire/DescriptionQuestionBean;
.super Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.source "DescriptionQuestionBean.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;-><init>()V

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/DescriptionQuestionBean;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 24
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/DescriptionQuestionBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/DescriptionQuestionBean;-><init>()V

    .line 25
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/DescriptionQuestionBean;->parseCommonJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 28
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/DescriptionQuestionBean;)Lorg/json/JSONObject;
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 0

    .line 35
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/DescriptionQuestionBean;

    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/DescriptionQuestionBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/DescriptionQuestionBean;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public isCanSubmit(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
