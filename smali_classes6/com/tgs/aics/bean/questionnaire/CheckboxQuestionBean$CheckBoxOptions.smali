.class public Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;
.super Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;
.source "CheckboxQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckBoxOptions"
.end annotation


# instance fields
.field public isOptionMutex:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;)Lorg/json/JSONObject;
    .locals 2

    .line 206
    invoke-static {p0}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "optionMutex"

    .line 208
    iget-boolean p0, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->isOptionMutex:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 210
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 220
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;-><init>()V

    .line 221
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->parseJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)V

    const-string v2, "optionMutex"

    .line 223
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->isOptionMutex:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 226
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
