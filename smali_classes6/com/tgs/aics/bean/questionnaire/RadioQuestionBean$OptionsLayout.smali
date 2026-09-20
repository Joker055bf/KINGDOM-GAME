.class public Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;
.super Ljava/lang/Object;
.source "RadioQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsLayout"
.end annotation


# instance fields
.field public direction:Ljava/lang/String;

.field public horizontalNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;)Lorg/json/JSONObject;
    .locals 3

    .line 435
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "direction"

    .line 437
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;->direction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "horizontalNum"

    .line 438
    iget p0, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;->horizontalNum:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 440
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 450
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;-><init>()V

    const-string v2, "direction"

    .line 451
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;->direction:Ljava/lang/String;

    const-string v2, "horizontalNum"

    .line 452
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsLayout;->horizontalNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 455
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
