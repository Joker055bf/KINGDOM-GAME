.class public Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;
.super Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.source "CheckboxQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;,
        Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;,
        Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;
    }
.end annotation


# instance fields
.field public optionGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;",
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
            "Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;",
            ">;"
        }
    .end annotation
.end field

.field public optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

.field public optionsLayout:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;

.field public optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;-><init>()V

    return-void
.end method

.method private handleOptionForm(Landroid/content/Context;)V
    .locals 5

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 46
    iget-object v3, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 52
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-boolean v2, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->isRequired:Z

    if-eqz v2, :cond_3

    .line 53
    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_fill_option_blank"

    .line 55
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_2

    .line 58
    :cond_2
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->selectedValueSizeLimit(Landroid/content/Context;)V

    goto :goto_1

    .line 61
    :cond_3
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->selectedValueSizeLimit(Landroid/content/Context;)V

    goto :goto_1

    .line 66
    :cond_4
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->selectedValueSizeLimit(Landroid/content/Context;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 146
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;-><init>()V

    .line 147
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->parseCommonJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    const-string v2, "defaultValues"

    .line 149
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 151
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    .line 152
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 153
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 155
    :cond_1
    iput-object v4, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    .line 158
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "options"

    .line 159
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 160
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_5

    move v5, v3

    .line 161
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 162
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 166
    :cond_3
    invoke-static {v6}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 168
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 171
    :cond_5
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    const-string v2, "optionsRandom"

    .line 173
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    const-string v2, "optionsLayout"

    .line 174
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsLayout:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;

    const-string v2, "optionsCheckedLimit"

    .line 175
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    const-string v2, "optionsQuote"

    .line 176
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "optionGroups"

    .line 179
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 180
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 181
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 182
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_4

    .line 186
    :cond_6
    invoke-static {v5}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 188
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 191
    :cond_8
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    const-string v2, "optionGroupsSetting"

    .line 193
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;

    move-result-object p0

    iput-object p0, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroupsSetting:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 197
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;)Lorg/json/JSONObject;
    .locals 4

    .line 111
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;

    move-result-object v0

    .line 113
    :try_start_0
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 114
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 115
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "defaultValues"

    .line 118
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 121
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 122
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string v2, "options"

    .line 124
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionsRandom"

    .line 125
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionsLayout"

    .line 126
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsLayout:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionsCheckedLimit"

    .line 127
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionsQuote"

    .line 128
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 130
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;

    .line 131
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    const-string v2, "optionGroups"

    .line 133
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionGroupsSetting"

    .line 134
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroupsSetting:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;

    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 136
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_3
    return-object v0
.end method

.method private selectedValueSizeLimit(Landroid/content/Context;)V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->min:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->min:I

    if-le v1, v0, :cond_0

    .line 33
    iput-boolean v3, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_min_select_options"

    .line 34
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->min:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->max:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->max:I

    if-le v0, v1, :cond_1

    .line 36
    iput-boolean v3, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_max_select_options"

    .line 37
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->max:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_1
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->canSubmit:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 0

    .line 107
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public isCanSubmit(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->canSubmit:Z

    const-string v1, ""

    .line 74
    iput-object v1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

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

    .line 82
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

    .line 87
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->canSubmit:Z

    goto :goto_3

    .line 89
    :cond_5
    iget-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->isRequired:Z

    if-eqz v0, :cond_7

    .line 90
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    .line 91
    iput-boolean v4, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_answer_required"

    .line 92
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_3

    .line 94
    :cond_6
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->handleOptionForm(Landroid/content/Context;)V

    goto :goto_3

    .line 97
    :cond_7
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->handleOptionForm(Landroid/content/Context;)V

    goto :goto_3

    .line 77
    :cond_8
    :goto_2
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->canSubmit:Z

    .line 102
    :goto_3
    iget-boolean p1, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->canSubmit:Z

    return p1
.end method

.method public isOptionBelongGroup(Ljava/lang/String;)Z
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;

    .line 314
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->optionIds:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->optionIds:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
