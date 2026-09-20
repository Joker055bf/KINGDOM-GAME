.class public Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;
.super Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.source "MatrixScaleQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;,
        Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;,
        Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;,
        Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;,
        Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;,
        Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$ScoreDisplayType;
    }
.end annotation


# instance fields
.field public columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;",
            ">;"
        }
    .end annotation
.end field

.field public isHalfScore:Z

.field public optionGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public rowQuote:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;

.field public rowRandom:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;

.field public rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;",
            ">;"
        }
    .end annotation
.end field

.field public scoreDisplayType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;-><init>()V

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 98
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;-><init>()V

    .line 99
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->parseCommonJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "columns"

    .line 102
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 103
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    move v5, v4

    .line 104
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 105
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    invoke-static {v6}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 111
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 114
    :cond_3
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->columns:Ljava/util/List;

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "rows"

    .line 117
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 118
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_6

    move v5, v4

    .line 119
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 120
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_3

    .line 124
    :cond_4
    invoke-static {v6}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 126
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 129
    :cond_6
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    const-string v2, "halfScore"

    .line 131
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->isHalfScore:Z

    const-string v2, "scoreDisplayType"

    .line 132
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->scoreDisplayType:Ljava/lang/String;

    const-string v2, "rowsQuote"

    .line 133
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowQuote:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;

    const-string v2, "rowsRandom"

    .line 134
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowRandom:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "optionGroups"

    .line 137
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 138
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 139
    :goto_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_9

    .line 140
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_5

    .line 144
    :cond_7
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 146
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 149
    :cond_9
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->optionGroups:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 153
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;)Lorg/json/JSONObject;
    .locals 4

    .line 60
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 63
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->columns:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;

    .line 65
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "columns"

    .line 68
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 70
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 71
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 72
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const-string v2, "rows"

    .line 75
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "halfScore"

    .line 76
    iget-boolean v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->isHalfScore:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "scoreDisplayType"

    .line 77
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->scoreDisplayType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rowsQuote"

    .line 78
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowQuote:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rowsRandom"

    .line 79
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowRandom:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 81
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->optionGroups:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;

    .line 83
    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_2
    const-string p1, "optionGroups"

    .line 86
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 88
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_3
    return-object v0
.end method


# virtual methods
.method public buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 0

    .line 56
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public isCanSubmit(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->canSubmit:Z

    const-string v1, ""

    .line 31
    iput-object v1, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    iget-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->isRequired:Z

    if-eqz v1, :cond_2

    .line 37
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 38
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_answer_required"

    .line 40
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_2

    .line 43
    :cond_1
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->canSubmit:Z

    goto :goto_0

    .line 47
    :cond_2
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->canSubmit:Z

    goto :goto_2

    .line 34
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->canSubmit:Z

    .line 51
    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->canSubmit:Z

    return p1
.end method
