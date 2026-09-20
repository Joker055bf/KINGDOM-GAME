.class public Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;
.super Ljava/lang/Object;
.source "WeightQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public isWritten:Z

.field public sort:I

.field public title:Ljava/lang/String;

.field public value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;)Lorg/json/JSONObject;
    .locals 4

    .line 189
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "value"

    .line 191
    iget v2, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 192
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 193
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sort"

    .line 194
    iget p0, p0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->sort:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "value"

    .line 206
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    const-string v0, "id"

    .line 207
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->id:Ljava/lang/String;

    const-string v0, "title"

    .line 208
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->title:Ljava/lang/String;

    const-string v0, "sort"

    .line 209
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->sort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
