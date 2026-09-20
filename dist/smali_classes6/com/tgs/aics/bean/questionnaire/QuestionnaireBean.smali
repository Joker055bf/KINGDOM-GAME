.class public Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;
.super Lcom/tgs/aics/bean/BaseBean;
.source "QuestionnaireBean.java"


# instance fields
.field public canAnswer:Z

.field public cannotAnswerReason:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public displayQuestionNumber:Z

.field public displayQuestionTag:Z

.field public displayQuestionTitle:Z

.field public languageCode:Ljava/lang/String;

.field public questionnaireVersion:Ljava/lang/String;

.field public questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZ)Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 43
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;-><init>()V

    .line 44
    iput-object p1, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->title:Ljava/lang/String;

    .line 45
    invoke-static {p2}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->htmlDealWith(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->description:Ljava/lang/String;

    .line 46
    iput-object p3, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->questionnaireVersion:Ljava/lang/String;

    .line 47
    iput-object p4, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->languageCode:Ljava/lang/String;

    .line 48
    iput-boolean p5, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->canAnswer:Z

    .line 49
    iput-object p6, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->cannotAnswerReason:Ljava/lang/String;

    .line 50
    iput-boolean p7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->displayQuestionTitle:Z

    .line 51
    iput-boolean p8, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->displayQuestionNumber:Z

    .line 52
    iput-boolean p9, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->displayQuestionTag:Z

    .line 54
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance p4, Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;

    invoke-direct {p4}, Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;-><init>()V

    const/4 p5, 0x0

    if-nez p7, :cond_1

    const/4 p6, 0x1

    goto :goto_0

    :cond_1
    move p6, p5

    .line 57
    :goto_0
    iput-boolean p6, p4, Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;->isHidden:Z

    .line 58
    sget-object p6, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->title:Ljava/lang/String;

    iput-object p6, p4, Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;->questionType:Ljava/lang/String;

    .line 59
    iput-object p1, p4, Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;->title:Ljava/lang/String;

    .line 60
    invoke-static {p2}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->htmlDealWith(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;->description:Ljava/lang/String;

    .line 61
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_13

    .line 64
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge p5, p1, :cond_13

    .line 65
    invoke-virtual {p0, p5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    goto/16 :goto_7

    :cond_2
    const-string p2, "type"

    .line 71
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 72
    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->radio:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_11

    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->scoreRadio:Ljava/lang/String;

    .line 73
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    goto/16 :goto_5

    .line 75
    :cond_3
    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->checkbox:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_10

    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->scoreCheckbox:Ljava/lang/String;

    .line 76
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    goto/16 :goto_4

    .line 78
    :cond_4
    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->fillBlank:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 79
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    move-result-object p1

    goto/16 :goto_6

    .line 80
    :cond_5
    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixScale:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 81
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    move-result-object p1

    goto/16 :goto_6

    .line 82
    :cond_6
    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->description:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 83
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/DescriptionQuestionBean;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/DescriptionQuestionBean;

    move-result-object p1

    goto/16 :goto_6

    .line 84
    :cond_7
    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->paginator:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 85
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    move-result-object p1

    goto :goto_6

    .line 86
    :cond_8
    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->regularScale:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->npsScale:Ljava/lang/String;

    .line 87
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    goto :goto_3

    .line 89
    :cond_9
    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->weight:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 90
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    move-result-object p1

    goto :goto_6

    .line 91
    :cond_a
    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixRadio:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_e

    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixCheckbox:Ljava/lang/String;

    .line 92
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    goto :goto_2

    .line 94
    :cond_b
    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->sort:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 95
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    move-result-object p1

    goto :goto_6

    .line 96
    :cond_c
    sget-object p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->fileUpload:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 97
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    move-result-object p1

    goto :goto_6

    :cond_d
    move-object p1, v0

    goto :goto_6

    .line 93
    :cond_e
    :goto_2
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    move-result-object p1

    goto :goto_6

    .line 88
    :cond_f
    :goto_3
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    move-result-object p1

    goto :goto_6

    .line 77
    :cond_10
    :goto_4
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    move-result-object p1

    goto :goto_6

    .line 74
    :cond_11
    :goto_5
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    move-result-object p1

    :goto_6
    if-eqz p1, :cond_12

    .line 101
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_7
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_1

    .line 105
    :cond_13
    iput-object p3, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->questions:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 109
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
