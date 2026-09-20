.class public Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;
.super Ljava/lang/Object;
.source "MatrixScaleQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatrixScaleOptionGroup"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public rowIds:[Ljava/lang/String;

.field public rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;)Lorg/json/JSONObject;
    .locals 5

    .line 320
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 322
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 324
    iget-object p0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->rowIds:[Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 325
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 326
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "optionIds"

    .line 329
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 331
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 341
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;-><init>()V

    const-string v2, "name"

    .line 342
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->name:Ljava/lang/String;

    const-string v2, "optionIds"

    .line 343
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 344
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 345
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->rowIds:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 346
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 347
    iget-object v3, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->rowIds:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 352
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
