.class public Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;
.super Ljava/lang/Object;
.source "MatrixScaleQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rows"
.end annotation


# instance fields
.field public currentValue:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;)Lorg/json/JSONObject;
    .locals 3

    .line 199
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 201
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 202
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "defaultValue"

    .line 203
    iget-object p0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 205
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 215
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;-><init>()V

    const-string v2, "id"

    .line 216
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    const-string v2, "title"

    .line 217
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<p"

    const-string v4, "<span"

    .line 218
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "</div>"

    const-string v4, "</span>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->title:Ljava/lang/String;

    const-string v2, "defaultValue"

    .line 219
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 222
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
