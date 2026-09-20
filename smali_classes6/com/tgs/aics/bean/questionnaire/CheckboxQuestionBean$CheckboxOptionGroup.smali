.class public Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;
.super Ljava/lang/Object;
.source "CheckboxQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckboxOptionGroup"
.end annotation


# instance fields
.field public isRandom:Z

.field public name:Ljava/lang/String;

.field public optionIds:[Ljava/lang/String;

.field public options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;)Lorg/json/JSONObject;
    .locals 6

    .line 271
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 273
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 275
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->optionIds:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 276
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 277
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "optionIds"

    .line 280
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isRandom"

    .line 281
    iget-boolean p0, p0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->isRandom:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 283
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 293
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;-><init>()V

    const-string v2, "name"

    .line 294
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->name:Ljava/lang/String;

    const-string v2, "optionIds"

    .line 295
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 296
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 297
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->optionIds:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 298
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 299
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->optionIds:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "isRandom"

    .line 302
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->isRandom:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 305
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
