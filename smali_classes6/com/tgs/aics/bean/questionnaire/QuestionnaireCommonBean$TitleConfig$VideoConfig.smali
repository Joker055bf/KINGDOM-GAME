.class public Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;
.super Ljava/lang/Object;
.source "QuestionnaireCommonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoConfig"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public poster:Ljava/lang/String;

.field public size:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 459
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;-><init>()V

    const-string v2, "url"

    .line 460
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;->url:Ljava/lang/String;

    const-string v2, "poster"

    .line 461
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;->poster:Ljava/lang/String;

    const-string v2, "name"

    .line 462
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;->name:Ljava/lang/String;

    const-string v2, "size"

    .line 463
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;->size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 467
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
