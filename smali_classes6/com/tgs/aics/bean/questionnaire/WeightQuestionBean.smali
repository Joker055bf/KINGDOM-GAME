.class public Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;
.super Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.source "WeightQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;,
        Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;,
        Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;
    }
.end annotation


# instance fields
.field public optionGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;",
            ">;"
        }
    .end annotation
.end field

.field public rowsQuote:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;

.field public rowsWidth:I

.field public showRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;",
            ">;"
        }
    .end annotation
.end field

.field public weightRulers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public weightTotal:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;-><init>()V

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 100
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;-><init>()V

    .line 101
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->parseCommonJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->showRows:Ljava/util/List;

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "rows"

    .line 105
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v4

    .line 107
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 108
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    new-instance v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    invoke-direct {v7}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;-><init>()V

    .line 113
    invoke-static {v6, v7}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->parseJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;)V

    .line 114
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 117
    :cond_2
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    const-string v3, "rowsWidth"

    .line 118
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rowsWidth:I

    const-string v3, "rowsQuote"

    .line 119
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;

    move-result-object v3

    iput-object v3, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "optionGroups"

    .line 122
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 123
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_9

    move v6, v4

    .line 125
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 126
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_3

    .line 130
    :cond_3
    invoke-static {v7}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;

    move-result-object v7

    .line 131
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 133
    :cond_4
    iput-object v3, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->optionGroups:Ljava/util/List;

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    .line 137
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    move v6, v4

    move v7, v6

    .line 139
    :goto_5
    iget-object v8, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 140
    iget-object v8, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;

    iget-object v8, v8, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;->optionIds:Ljava/util/List;

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;

    iget-object v8, v8, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;->optionIds:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    iget-object v9, v9, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->id:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 141
    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;

    iget-object v7, v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;->rows:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->showRows:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    if-nez v7, :cond_7

    .line 148
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 151
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 152
    new-instance v2, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;

    invoke-direct {v2}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;-><init>()V

    const-string v5, ""

    .line 153
    iput-object v5, v2, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;->name:Ljava/lang/String;

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;->optionIds:Ljava/util/List;

    .line 155
    iput-object v3, v2, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;->rows:Ljava/util/List;

    .line 157
    iget-object v5, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->showRows:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v3, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 161
    :cond_9
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->showRows:Ljava/util/List;

    :cond_a
    :goto_6
    const-string v2, "weightTotal"

    .line 164
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->weightTotal:I

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->weightRulers:Ljava/util/List;

    const-string v2, "weightRulers"

    .line 166
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 167
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 168
    :goto_7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_b

    .line 169
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->weightRulers:Ljava/util/List;

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    return-object v1

    :catch_0
    move-exception p0

    .line 175
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;)Lorg/json/JSONObject;
    .locals 4

    .line 71
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    :try_start_0
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->currentValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "defaultValue"

    .line 74
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 76
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    .line 77
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v2, "rows"

    .line 79
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rowsWidth"

    .line 80
    iget v2, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rowsWidth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rowsQuote"

    .line 81
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 83
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;

    .line 84
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string v2, "optionGroups"

    .line 86
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "weightTotal"

    .line 87
    iget v2, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->weightTotal:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "weightRulers"

    .line 88
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->weightRulers:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 90
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method


# virtual methods
.method public buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 0

    .line 67
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public isCanSubmit(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->canSubmit:Z

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    .line 44
    iget v4, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    add-float/2addr v3, v4

    goto :goto_0

    .line 48
    :cond_1
    iget-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->isRequired:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->isHidden:Z

    if-nez v1, :cond_2

    cmpl-float v1, v3, v2

    if-nez v1, :cond_2

    .line 49
    iput-boolean v4, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_answer_required"

    .line 50
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    .line 52
    iget-boolean p1, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->canSubmit:Z

    return p1

    :cond_2
    const/high16 p1, 0x42c80000    # 100.0f

    cmpl-float p1, v3, p1

    if-eqz p1, :cond_3

    cmpl-float p1, v3, v2

    if-eqz p1, :cond_3

    .line 57
    iput-boolean v4, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->canSubmit:Z

    .line 58
    iput-object v0, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    .line 59
    iget-boolean p1, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->canSubmit:Z

    return p1

    .line 62
    :cond_3
    iget-boolean p1, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->canSubmit:Z

    return p1

    .line 39
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->canSubmit:Z

    return p1
.end method
