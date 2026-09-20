.class public Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;
.super Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.source "MatrixRadioQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;,
        Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;,
        Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;,
        Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;,
        Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;,
        Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsRandom;,
        Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;
    }
.end annotation


# instance fields
.field public columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;",
            ">;"
        }
    .end annotation
.end field

.field public optionGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

.field public optionsLayout:Ljava/lang/String;

.field public requireFormNotWriteColumnIndex:I

.field public requireFormNotWriteRowIndex:I

.field public rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;",
            ">;"
        }
    .end annotation
.end field

.field public rowsQuote:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;

.field public rowsRandom:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsRandom;

.field public rowsWidth:I

.field public showRows:Ljava/util/List;
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
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    .line 40
    iput v0, p0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 244
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;-><init>()V

    .line 245
    invoke-static {p0, v1}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->parseCommonJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->showRows:Ljava/util/List;

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "rows"

    .line 249
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 250
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v4

    .line 251
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 252
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 256
    :cond_1
    new-instance v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    invoke-direct {v7}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;-><init>()V

    .line 257
    invoke-static {v6, v7}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->parseJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;)V

    .line 258
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 261
    :cond_2
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    .line 263
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "columns"

    .line 264
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 265
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    move v6, v4

    .line 266
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 267
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_3

    .line 271
    :cond_3
    new-instance v8, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    invoke-direct {v8}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;-><init>()V

    .line 272
    invoke-static {v7, v8}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->parseJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;)V

    .line 273
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 276
    :cond_4
    iput-object v3, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    const-string v3, "rowsWidth"

    .line 278
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsWidth:I

    const-string v3, "rowsQuote"

    .line 279
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;

    move-result-object v3

    iput-object v3, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;

    const-string v3, "rowsRandom"

    .line 280
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsRandom;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsRandom;

    move-result-object v3

    iput-object v3, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsRandom:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsRandom;

    const-string v3, "optionsCheckedLimit"

    .line 281
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    move-result-object v3

    iput-object v3, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    .line 283
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "optionGroups"

    .line 284
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 285
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_b

    move v6, v4

    .line 287
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 288
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_5

    .line 292
    :cond_5
    invoke-static {v7}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;

    move-result-object v7

    .line 293
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 295
    :cond_6
    iput-object v3, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    .line 297
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    .line 299
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    move v6, v4

    move v7, v6

    .line 301
    :goto_7
    iget-object v8, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_8

    .line 302
    iget-object v8, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;

    iget-object v8, v8, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;->optionIds:Ljava/util/List;

    if-eqz v8, :cond_7

    iget-object v8, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;

    iget-object v8, v8, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;->optionIds:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object v9, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->id:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 303
    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;

    iget-object v7, v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;->rows:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->showRows:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    if-nez v7, :cond_9

    .line 310
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 313
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 314
    new-instance v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;

    invoke-direct {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;-><init>()V

    const-string v4, ""

    .line 315
    iput-object v4, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;->name:Ljava/lang/String;

    .line 316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;->optionIds:Ljava/util/List;

    .line 317
    iput-object v3, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;->rows:Ljava/util/List;

    .line 319
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->showRows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    iget-object v3, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 323
    :cond_b
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsRandom:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsRandom;

    if-eqz v2, :cond_c

    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsRandom;->type:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 324
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 326
    :cond_c
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->showRows:Ljava/util/List;

    :cond_d
    :goto_8
    const-string v2, "optionsLayout"

    .line 328
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsLayout:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 332
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;)Lorg/json/JSONObject;
    .locals 4

    .line 207
    invoke-static {p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;

    move-result-object v0

    .line 209
    :try_start_0
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->currentValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "defaultValue"

    .line 210
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 212
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 213
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v2, "rows"

    .line 215
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 218
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    .line 219
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string v2, "columns"

    .line 221
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rowsWidth"

    .line 223
    iget v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsWidth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rowsQuote"

    .line 224
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rowsRandom"

    .line 225
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsRandom:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsRandom;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsRandom;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsRandom;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionsLayout"

    .line 226
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsLayout:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionsCheckedLimit"

    .line 227
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 229
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;

    .line 230
    invoke-static {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    const-string p1, "optionGroups"

    .line 232
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 234
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_3
    return-object v0
.end method


# virtual methods
.method public buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 0

    .line 203
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public isCanSubmit(Landroid/content/Context;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 45
    iput-boolean v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->canSubmit:Z

    const-string v3, ""

    .line 46
    iput-object v3, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    .line 48
    iget-object v3, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v3, -0x1

    .line 53
    iput v3, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    .line 54
    iput v3, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    .line 57
    iget-object v5, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsLayout:Ljava/lang/String;

    const-string v6, "vertical"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 60
    iget-object v6, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->showRows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v2

    move v7, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "tgs_aics_questionnaire_matrix_checkbox_column_tip"

    const-string v11, "tgs_aics_questionnaire_matrix_checkbox_row_tip"

    const/4 v12, 0x2

    if-eqz v9, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 61
    iget-object v13, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->questionType:Ljava/lang/String;

    sget-object v14, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixRadio:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 62
    iget-object v13, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 63
    iget-object v9, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    if-eqz v13, :cond_10

    .line 65
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    goto/16 :goto_5

    .line 71
    :cond_1
    iget-object v14, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v4

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    .line 73
    iget-object v2, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    iget-object v2, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionForm:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;

    if-eqz v2, :cond_3

    iget-object v2, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionForm:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;

    iget-boolean v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;->required:Z

    if-eqz v2, :cond_3

    if-eqz v9, :cond_2

    .line 75
    iget-object v2, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    .line 76
    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    .line 77
    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    :cond_2
    iput v7, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    .line 80
    iput v15, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x1

    const/4 v3, -0x1

    goto :goto_1

    .line 88
    :cond_4
    iget-object v2, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 89
    iget-object v3, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    if-eqz v2, :cond_10

    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_5

    .line 97
    :cond_5
    iget-object v9, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    if-eqz v9, :cond_b

    iget v9, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->min:I

    if-gtz v9, :cond_6

    iget-object v9, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    iget v9, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->max:I

    if-lez v9, :cond_b

    .line 98
    :cond_6
    iget-object v9, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    iget v9, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->max:I

    .line 99
    iget-object v13, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    iget v13, v13, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->max:I

    iget-object v14, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    iget v14, v14, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->min:I

    if-ge v13, v14, :cond_7

    .line 100
    iget-object v9, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 103
    :cond_7
    iget-object v13, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    iget v13, v13, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->min:I

    .line 104
    iget-boolean v14, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->isRequired:Z

    if-eqz v14, :cond_8

    if-nez v13, :cond_8

    const/4 v13, 0x1

    .line 108
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v14, v13, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v9, :cond_b

    .line 109
    :cond_9
    iput-boolean v4, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->canSubmit:Z

    if-eqz v5, :cond_a

    move-object v2, v10

    goto :goto_2

    :cond_a
    move-object v2, v11

    .line 110
    :goto_2
    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    .line 111
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_7

    .line 117
    :cond_b
    iget-object v9, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v13, v4

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    .line 119
    iget-object v15, v14, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 120
    iget-object v15, v14, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionForm:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;

    if-eqz v15, :cond_d

    iget-object v15, v14, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionForm:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;

    iget-boolean v15, v15, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;->required:Z

    if-eqz v15, :cond_d

    if-eqz v3, :cond_c

    .line 121
    iget-object v15, v14, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    .line 122
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_c

    iget-object v14, v14, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    .line 123
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 125
    :cond_c
    iput v7, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    .line 126
    iput v13, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    goto :goto_4

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 134
    :cond_e
    :goto_4
    iget v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_f

    iget v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    if-eq v2, v3, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_10
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move v8, v4

    :goto_6
    const/4 v2, 0x1

    const/4 v3, -0x1

    goto/16 :goto_0

    .line 141
    :cond_11
    :goto_7
    iget-object v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->questionType:Ljava/lang/String;

    sget-object v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixCheckbox:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 142
    iget-object v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    .line 143
    iget-object v6, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    if-eqz v6, :cond_12

    iget-object v6, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    iget v6, v6, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->max:I

    if-lez v6, :cond_12

    .line 144
    iget-object v6, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    iget v6, v6, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->max:I

    .line 147
    iget-object v7, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->showRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v4

    :cond_13
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 148
    iget-object v13, v13, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_13

    .line 149
    iget-object v14, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_14
    if-le v9, v6, :cond_12

    .line 155
    iput-boolean v4, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->canSubmit:Z

    const-string v2, "tgs_aics_questionnaire_matrix_checkbox_tip1"

    .line 156
    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v7, v12, [Ljava/lang/Object;

    .line 157
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->title:Ljava/lang/String;

    aput-object v3, v7, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v7, v6

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    .line 164
    :cond_15
    iget-boolean v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->isRequired:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->isHidden:Z

    if-nez v2, :cond_1c

    if-nez v8, :cond_1c

    .line 165
    iput-boolean v4, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->canSubmit:Z

    .line 167
    iget-object v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->questionType:Ljava/lang/String;

    sget-object v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixRadio:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "tgs_aics_questionnaire_error_answer_required"

    if-eqz v2, :cond_16

    .line 168
    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_a

    .line 170
    :cond_16
    iget-object v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    if-eqz v2, :cond_1b

    iget v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->min:I

    if-gtz v2, :cond_17

    iget-object v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    iget v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->max:I

    if-lez v2, :cond_1b

    .line 171
    :cond_17
    iget-object v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    iget v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->max:I

    .line 172
    iget-object v3, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    iget v3, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->max:I

    iget-object v6, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    iget v6, v6, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->min:I

    if-ge v3, v6, :cond_18

    .line 173
    iget-object v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 176
    :cond_18
    iget-object v3, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsCheckedLimit:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;

    iget v7, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionsCheckedLimit;->min:I

    if-nez v7, :cond_19

    const/4 v7, 0x1

    :cond_19
    if-eqz v5, :cond_1a

    goto :goto_9

    :cond_1a
    move-object v10, v11

    .line 181
    :goto_9
    invoke-static {v1, v10}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v12, [Ljava/lang/Object;

    .line 182
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    goto :goto_a

    .line 184
    :cond_1b
    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    .line 187
    :goto_a
    iget-boolean v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->canSubmit:Z

    return v1

    .line 191
    :cond_1c
    iget v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    iget v2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    if-eq v2, v3, :cond_1d

    .line 192
    iput-boolean v4, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->canSubmit:Z

    const-string v2, "tgs_aics_questionnaire_error_fill_option_blank"

    .line 193
    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->cannotSubmitReason:Ljava/lang/String;

    .line 195
    iget-boolean v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->canSubmit:Z

    return v1

    .line 198
    :cond_1d
    iget-boolean v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->canSubmit:Z

    return v1

    .line 49
    :cond_1e
    :goto_b
    iput-boolean v4, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->canSubmit:Z

    .line 50
    iget-boolean v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->canSubmit:Z

    return v1
.end method
