.class public Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;
.super Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.source "RegularScaleBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;
    }
.end annotation


# instance fields
.field public isHalfScore:Z

.field public options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;",
            ">;"
        }
    .end annotation
.end field

.field public scoreDisplayType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;-><init>()V

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 69
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;-><init>()V

    .line 70
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->parseCommonJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    const-string v2, ""

    .line 72
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "options"

    .line 75
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    .line 77
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 78
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    new-instance v6, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    invoke-direct {v6}, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;-><init>()V

    .line 83
    invoke-static {v5, v6}, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->parseJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;)V

    .line 84
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_2
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    const-string v2, "halfScore"

    .line 89
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->isHalfScore:Z

    const-string v2, "scoreDisplayType"

    .line 90
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->scoreDisplayType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 94
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;)Lorg/json/JSONObject;
    .locals 4

    .line 47
    invoke-static {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 50
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    .line 52
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "options"

    .line 55
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "halfScore"

    .line 56
    iget-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->isHalfScore:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "scoreDisplayType"

    .line 57
    iget-object p0, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->scoreDisplayType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 59
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 0

    .line 43
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public isCanSubmit(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->canSubmit:Z

    const-string v1, ""

    .line 25
    iput-object v1, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->cannotSubmitReason:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->isRequired:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_answer_required"

    .line 32
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_1

    .line 34
    :cond_1
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->canSubmit:Z

    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->canSubmit:Z

    .line 38
    :goto_1
    iget-boolean p1, p0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->canSubmit:Z

    return p1
.end method
