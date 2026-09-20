.class public Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;
.super Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.source "SortQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;
    }
.end annotation


# instance fields
.field public optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

.field public options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;",
            ">;"
        }
    .end annotation
.end field

.field public optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

.field public optionsLayout:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;

.field public optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

.field public originalOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;-><init>()V

    return-void
.end method

.method private handleOptionForm(Landroid/content/Context;)V
    .locals 5

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 42
    iget-object v3, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 48
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-boolean v2, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->isRequired:Z

    if-eqz v2, :cond_3

    .line 49
    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_fill_option_blank"

    .line 51
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_2

    .line 54
    :cond_2
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->selectedValueSizeLimit(Landroid/content/Context;)V

    goto :goto_1

    .line 57
    :cond_3
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->selectedValueSizeLimit(Landroid/content/Context;)V

    goto :goto_1

    .line 62
    :cond_4
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->selectedValueSizeLimit(Landroid/content/Context;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 111
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;-><init>()V

    .line 112
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->parseCommonJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "options"

    .line 117
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 118
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x0

    .line 119
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 120
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    invoke-static {v5}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 126
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    :cond_3
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    const-string v2, "optionsQuote"

    .line 130
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    const-string v2, "optionsRandom"

    .line 132
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    const-string v2, "optionsLayout"

    .line 133
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsLayout:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;

    const-string v2, "optionsCheckedLimit"

    .line 134
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    move-result-object p0

    iput-object p0, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 138
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private selectedValueSizeLimit(Landroid/content/Context;)V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->min:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->min:I

    if-le v1, v0, :cond_0

    .line 29
    iput-boolean v3, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_min_select_options"

    .line 30
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->min:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->max:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->max:I

    if-le v0, v1, :cond_1

    .line 32
    iput-boolean v3, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_max_select_options"

    .line 33
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;

    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$OptionsCheckedLimit;->max:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_1
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->canSubmit:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isCanSubmit(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->canSubmit:Z

    const-string v1, ""

    .line 70
    iput-object v1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

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

    .line 78
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

    .line 83
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->canSubmit:Z

    goto :goto_3

    .line 85
    :cond_5
    iget-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->isRequired:Z

    if-eqz v0, :cond_7

    .line 86
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    .line 87
    iput-boolean v4, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_answer_required"

    .line 88
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_3

    .line 90
    :cond_6
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->handleOptionForm(Landroid/content/Context;)V

    goto :goto_3

    .line 93
    :cond_7
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->handleOptionForm(Landroid/content/Context;)V

    goto :goto_3

    .line 73
    :cond_8
    :goto_2
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->canSubmit:Z

    .line 98
    :goto_3
    iget-boolean p1, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->canSubmit:Z

    return p1
.end method
