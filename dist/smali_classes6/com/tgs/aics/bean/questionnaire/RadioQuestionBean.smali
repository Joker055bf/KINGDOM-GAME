.class public Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;
.super Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.source "RadioQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;,
        Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;,
        Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;,
        Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;,
        Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;,
        Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;,
        Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayoutDirection;,
        Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandomType;,
        Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionFormType;
    }
.end annotation


# instance fields
.field public optionGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public optionGroupsSetting:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;

.field public optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

.field public options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;",
            ">;"
        }
    .end annotation
.end field

.field public optionsLayout:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;

.field public optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;-><init>()V

    return-void
.end method

.method private handleOptionForm(Landroid/content/Context;)V
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->currentValue:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 29
    iput-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->canSubmit:Z

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    .line 33
    iget-object v3, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 39
    iput-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->canSubmit:Z

    goto :goto_1

    .line 41
    :cond_3
    iget-object v0, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-boolean v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->isRequired:Z

    if-eqz v0, :cond_5

    .line 42
    iget-object v0, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_fill_option_blank"

    .line 44
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_1

    .line 46
    :cond_4
    iput-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->canSubmit:Z

    goto :goto_1

    .line 49
    :cond_5
    iput-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->canSubmit:Z

    :goto_1
    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 132
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;-><init>()V

    .line 133
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->parseCommonJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    const-string v2, "defaultValue"

    .line 135
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->currentValue:Ljava/lang/Object;

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "options"

    .line 138
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v4

    .line 140
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 141
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    new-instance v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    invoke-direct {v7}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;-><init>()V

    .line 146
    invoke-static {v6, v7}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->parseJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)V

    .line 147
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    :cond_2
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    const-string v2, "optionsRandom"

    .line 152
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    const-string v2, "optionsLayout"

    .line 153
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionsLayout:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;

    const-string v2, "optionsQuote"

    .line 154
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "optionGroups"

    .line 157
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 158
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 159
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 160
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_3

    .line 164
    :cond_3
    invoke-static {v5}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 166
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 169
    :cond_5
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroups:Ljava/util/List;

    const-string v2, "optionGroupsSetting"

    .line 171
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;

    move-result-object p0

    iput-object p0, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroupsSetting:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 175
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;)Lorg/json/JSONObject;
    .locals 4

    .line 103
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;

    move-result-object v0

    .line 105
    :try_start_0
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->currentValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "defaultValue"

    .line 106
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 108
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    .line 109
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v2, "options"

    .line 111
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionsRandom"

    .line 112
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionsLayout"

    .line 113
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionsLayout:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionsQuote"

    .line 114
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 116
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;

    .line 117
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string v2, "optionGroups"

    .line 119
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionGroupsSetting"

    .line 120
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroupsSetting:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;

    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 122
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method


# virtual methods
.method public buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 0

    .line 99
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public isCanSubmit(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->canSubmit:Z

    const-string v1, ""

    .line 58
    iput-object v1, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    move v2, v0

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_3

    .line 67
    iget-boolean v2, v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->isHidden:Z

    if-nez v2, :cond_1

    iget-boolean v2, v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->isOptionRelationHidden:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 72
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->canSubmit:Z

    goto :goto_3

    .line 74
    :cond_5
    iget-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->isRequired:Z

    if-eqz v0, :cond_7

    .line 76
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 78
    iput-boolean v4, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_answer_required"

    .line 79
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_3

    .line 85
    :cond_6
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->handleOptionForm(Landroid/content/Context;)V

    goto :goto_3

    .line 89
    :cond_7
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->handleOptionForm(Landroid/content/Context;)V

    goto :goto_3

    .line 62
    :cond_8
    :goto_2
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->canSubmit:Z

    .line 94
    :goto_3
    iget-boolean p1, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->canSubmit:Z

    return p1
.end method
