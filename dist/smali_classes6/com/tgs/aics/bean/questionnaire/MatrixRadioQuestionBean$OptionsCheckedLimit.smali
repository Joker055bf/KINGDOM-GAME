.class public Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;
.super Ljava/lang/Object;
.source "MatrixRadioQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsCheckedLimit"
.end annotation


# instance fields
.field public max:I

.field public min:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;)Lorg/json/JSONObject;
    .locals 3

    .line 456
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "min"

    .line 458
    iget v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->min:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "max"

    .line 459
    iget p0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->max:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 461
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 471
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;-><init>()V

    const-string v2, "min"

    .line 472
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->min:I

    const-string v2, "max"

    .line 473
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->max:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 477
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
