.class public Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;
.super Ljava/lang/Object;
.source "QuestionnaireCommonBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;
    }
.end annotation


# instance fields
.field public video:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 433
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;-><init>()V

    .line 434
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;->video:Ljava/util/List;

    const-string v2, "video"

    .line 435
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 436
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 437
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 438
    iget-object v3, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;->video:Ljava/util/List;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 443
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
