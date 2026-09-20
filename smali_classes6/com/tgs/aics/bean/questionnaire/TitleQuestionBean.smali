.class public Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;
.super Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.source "TitleQuestionBean.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;-><init>()V

    return-void
.end method

.method private questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;)Lorg/json/JSONObject;
    .locals 0

    .line 25
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 0

    .line 21
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;

    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public isCanSubmit(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
