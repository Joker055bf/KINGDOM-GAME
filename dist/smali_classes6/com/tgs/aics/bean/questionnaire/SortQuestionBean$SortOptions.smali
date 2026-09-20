.class public Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;
.super Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;
.source "SortQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortOptions"
.end annotation


# instance fields
.field private sortNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;)Lorg/json/JSONObject;
    .locals 2

    .line 147
    invoke-static {p0}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "sort"

    .line 149
    iget p0, p0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->sortNumber:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 151
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 161
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;-><init>()V

    .line 162
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->parseJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)V

    const-string v2, "sort"

    .line 164
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->sortNumber:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 167
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
