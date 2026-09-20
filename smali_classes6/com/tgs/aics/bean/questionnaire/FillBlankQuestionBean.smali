.class public Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;
.super Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.source "FillBlankQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean$InputType;
    }
.end annotation


# instance fields
.field public inputType:Ljava/lang/String;

.field public maxDate:J

.field public maxNum:Ljava/lang/Object;

.field public maxTextLength:I

.field public minDate:J

.field public minNum:Ljava/lang/Object;

.field public minTextLength:I

.field public precision:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;-><init>()V

    return-void
.end method

.method private contentAdjudication(Landroid/content/Context;)V
    .locals 7

    .line 27
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v3, "integer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v3, "decimal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v3, "email"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/utils/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iput-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    goto/16 :goto_3

    .line 91
    :cond_2
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_input_correct_email_format"

    .line 92
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/utils/Utils;->isValidPhone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iput-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    goto/16 :goto_3

    .line 98
    :cond_4
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_input_correct_phone_format"

    .line 99
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v3, "landline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/utils/Utils;->isValidLandLine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    iput-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    goto/16 :goto_3

    .line 105
    :cond_6
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_input_correct_landline_format"

    .line 106
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 108
    :cond_7
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v3, "phoneOrLandline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 109
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/utils/Utils;->isValidPhone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/utils/Utils;->isValidLandLine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 112
    :cond_8
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_input_correct_phone_or_landline_format"

    .line 113
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 110
    :cond_9
    :goto_0
    iput-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    goto/16 :goto_3

    .line 116
    :cond_a
    iput-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    goto/16 :goto_3

    .line 38
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minNum:Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 39
    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_c

    .line 40
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 41
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    cmpg-double v0, v5, v3

    if-gez v0, :cond_c

    .line 42
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_min_number_double"

    .line 43
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minNum:Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    return-void

    .line 48
    :cond_c
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minNum:Ljava/lang/Object;

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_d

    .line 49
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 50
    iget-object v3, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    int-to-double v5, v0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_d

    .line 51
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_min_number_int"

    .line 52
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minNum:Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    return-void

    .line 58
    :cond_d
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxNum:Ljava/lang/Object;

    if-eqz v0, :cond_f

    .line 59
    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_e

    .line 60
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 61
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-lez v0, :cond_e

    .line 62
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_max_number_double"

    .line 63
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxNum:Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    return-void

    .line 68
    :cond_e
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxNum:Ljava/lang/Object;

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_f

    .line 69
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    iget-object v3, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    int-to-double v5, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_f

    .line 71
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_max_number_int"

    .line 72
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxNum:Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    return-void

    .line 78
    :cond_f
    iget v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->precision:I

    if-lez v0, :cond_13

    .line 80
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    iget v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->precision:I

    if-le v3, v0, :cond_13

    .line 82
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_illegal_decimal"

    .line 83
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->precision:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    return-void

    .line 28
    :cond_10
    :goto_2
    iget v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minTextLength:I

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v3, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minTextLength:I

    if-ge v0, v3, :cond_11

    .line 29
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_text_min_length"

    .line 30
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minTextLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_3

    .line 31
    :cond_11
    iget v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxTextLength:I

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v3, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxTextLength:I

    if-le v0, v3, :cond_12

    .line 32
    iput-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_text_max_length"

    .line 33
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxTextLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_3

    .line 35
    :cond_12
    iput-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    :cond_13
    :goto_3
    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 172
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;-><init>()V

    .line 173
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->parseCommonJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    const-string v2, "inputType"

    .line 175
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v2, "defaultValue"

    .line 176
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    const-string v2, "minTextLength"

    .line 177
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minTextLength:I

    const-string v2, "maxTextLength"

    .line 178
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxTextLength:I

    const-string v2, "minNum"

    .line 179
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minNum:Ljava/lang/Object;

    const-string v2, "maxNum"

    .line 180
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxNum:Ljava/lang/Object;

    const-string v2, "minDate"

    .line 181
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minDate:J

    const-string v2, "maxDate"

    .line 182
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxDate:J

    const-string v2, "precision"

    .line 183
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->precision:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 186
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;)Lorg/json/JSONObject;
    .locals 4

    .line 149
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "inputType"

    .line 151
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const-string v1, "defaultValue"

    .line 153
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "minTextLength"

    .line 154
    iget v2, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minTextLength:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "maxTextLength"

    .line 155
    iget v2, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxTextLength:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "minNum"

    .line 156
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minNum:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "maxNum"

    .line 157
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxNum:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "minDate"

    .line 158
    iget-wide v2, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minDate:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "maxDate"

    .line 159
    iget-wide v2, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxDate:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "precision"

    .line 160
    iget p1, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->precision:I

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 0

    .line 145
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public isCanSubmit(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v1, ""

    .line 124
    iput-object v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    .line 126
    iget-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->isRequired:Z

    if-eqz v1, :cond_2

    .line 127
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->contentAdjudication(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    const-string v0, "tgs_aics_questionnaire_error_answer_required"

    .line 129
    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 135
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->contentAdjudication(Landroid/content/Context;)V

    goto :goto_1

    .line 137
    :cond_3
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    .line 140
    :goto_1
    iget-boolean p1, p0, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->canSubmit:Z

    return p1
.end method
