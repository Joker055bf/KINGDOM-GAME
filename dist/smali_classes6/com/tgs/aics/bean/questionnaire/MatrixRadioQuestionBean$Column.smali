.class public Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;
.super Ljava/lang/Object;
.source "MatrixRadioQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field public checked:Z

.field public id:Ljava/lang/String;

.field public optionForm:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;

.field public optionMutex:Z

.field public optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

.field public sort:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;)Lorg/json/JSONObject;
    .locals 3

    .line 381
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "title"

    .line 383
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 384
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sort"

    .line 385
    iget v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->sort:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "checked"

    .line 386
    iget-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->checked:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "optionMutex"

    .line 387
    iget-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionMutex:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "optionForm"

    .line 388
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionForm:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionsCheckedLimit"

    .line 389
    iget-object p0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    invoke-static {p0}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 391
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "id"

    .line 401
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    const-string v0, "title"

    .line 402
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->title:Ljava/lang/String;

    const-string v0, "sort"

    .line 403
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->sort:I

    const-string v0, "checked"

    .line 404
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->checked:Z

    const-string v0, "optionMutex"

    .line 405
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionMutex:Z

    const-string v0, "optionForm"

    .line 406
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionForm:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;

    const-string v0, "optionsCheckedLimit"

    .line 407
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    move-result-object p0

    iput-object p0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 409
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
