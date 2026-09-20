.class public Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;
.super Ljava/lang/Object;
.source "MatrixRadioQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowsQuote"
.end annotation


# instance fields
.field public isEnabled:Z

.field public quoteTopicIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public quoteTopicOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;)Lorg/json/JSONObject;
    .locals 4

    .line 489
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "isEnabled"

    .line 491
    iget-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->isEnabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 492
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 493
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->quoteTopicIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 494
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "quoteTopicIds"

    .line 496
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 498
    iget-object p0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->quoteTopicOptions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 499
    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const-string p0, "quoteTopicOptions"

    .line 501
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 503
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 513
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;-><init>()V

    const-string v2, "isEnabled"

    .line 514
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->isEnabled:Z

    const-string v2, "quoteTopicIds"

    .line 516
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 517
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 518
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->quoteTopicIds:Ljava/util/List;

    move v4, v3

    .line 519
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 520
    iget-object v5, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->quoteTopicIds:Ljava/util/List;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "quoteTopicOptions"

    .line 524
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 525
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 526
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->quoteTopicOptions:Ljava/util/List;

    .line 527
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 528
    new-instance v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    invoke-direct {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;-><init>()V

    .line 529
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->parseJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;)V

    .line 530
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->quoteTopicOptions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :catch_0
    move-exception p0

    .line 536
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
