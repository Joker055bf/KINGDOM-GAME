.class public Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;
.super Ljava/lang/Object;
.source "MatrixRadioQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionForm"
.end annotation


# instance fields
.field public placeholder:Ljava/lang/String;

.field public required:Z

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;)Lorg/json/JSONObject;
    .locals 3

    .line 421
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    .line 423
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "placeholder"

    .line 424
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;->placeholder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "required"

    .line 425
    iget-boolean p0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;->required:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 427
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 437
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;-><init>()V

    const-string v2, "type"

    .line 438
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;->type:Ljava/lang/String;

    const-string v2, "placeholder"

    .line 439
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;->placeholder:Ljava/lang/String;

    const-string v2, "required"

    .line 440
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;->required:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 444
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
