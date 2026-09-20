.class public abstract Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;
.super Ljava/lang/Object;
.source "QuestionnaireCommonBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;,
        Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;,
        Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelationsType;,
        Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;,
        Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;
    }
.end annotation


# instance fields
.field public canSubmit:Z

.field public cannotSubmitReason:Ljava/lang/String;

.field public currentValue:Ljava/lang/Object;

.field public description:Ljava/lang/String;

.field public displayedTitle:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public isHidden:Z

.field public isRelationHidden:Z

.field public isRequired:Z

.field public originalDescription:Ljava/lang/String;

.field public originalTitle:Ljava/lang/String;

.field public questionRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;",
            ">;"
        }
    .end annotation
.end field

.field public questionRelationsType:Ljava/lang/String;

.field public questionType:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public titleConfig:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;

.field public topicNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->canSubmit:Z

    return-void
.end method

.method public static htmlDealWith(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<p"

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "</p>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "<span"

    .line 68
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "</span><br/>"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private isSingleRelationHidden(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;",
            ">;)Z"
        }
    .end annotation

    .line 150
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationRowId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1a

    .line 153
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_17

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationRowId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 156
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 157
    iget-object v4, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    invoke-static {v4}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isNotNeedDealWithQuestionType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 160
    :cond_2
    iget-object v4, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    iget-object v5, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v0

    :cond_3
    if-eqz v2, :cond_2f

    .line 171
    iget-object p2, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationType:Ljava/lang/String;

    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;->all:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 174
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationValues:[Ljava/lang/String;

    array-length p2, p1

    move v0, v1

    move v4, v3

    :goto_1
    if-ge v0, p2, :cond_6

    aget-object v5, p1, v0

    .line 176
    iget-object v6, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_5

    .line 177
    check-cast v6, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 178
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v1

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    xor-int/lit8 p1, v4, 0x1

    :goto_3
    move v1, p1

    goto/16 :goto_1a

    .line 182
    :cond_7
    iget-object p2, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationType:Ljava/lang/String;

    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;->none:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 185
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationValues:[Ljava/lang/String;

    array-length p2, p1

    move v0, v1

    move v4, v3

    :goto_4
    if-ge v0, p2, :cond_a

    aget-object v5, p1, v0

    .line 187
    iget-object v6, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_9

    .line 188
    check-cast v6, Ljava/util/List;

    if-eqz v4, :cond_8

    .line 189
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v3

    goto :goto_5

    :cond_8
    move v4, v1

    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 192
    :cond_a
    iget-object p1, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    move v3, v4

    :cond_c
    :goto_6
    move v1, v3

    goto/16 :goto_1a

    .line 195
    :cond_d
    iget-object p2, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationType:Ljava/lang/String;

    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;->some:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 198
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationValues:[Ljava/lang/String;

    array-length p2, p1

    move v0, v1

    move v4, v0

    :goto_7
    if-ge v0, p2, :cond_6

    aget-object v5, p1, v0

    .line 199
    iget-object v6, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_10

    .line 200
    check-cast v6, Ljava/util/List;

    if-nez v4, :cond_f

    .line 201
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_8

    :cond_e
    move v4, v1

    goto :goto_9

    :cond_f
    :goto_8
    move v4, v3

    goto :goto_9

    .line 202
    :cond_10
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_11

    if-nez v4, :cond_f

    .line 203
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_8

    :cond_11
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 207
    :cond_12
    iget-object p2, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationType:Ljava/lang/String;

    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;->incomplete:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 210
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationValues:[Ljava/lang/String;

    array-length p2, p1

    move v0, v1

    move v4, v0

    :goto_a
    if-ge v0, p2, :cond_16

    aget-object v5, p1, v0

    .line 212
    iget-object v6, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_15

    .line 213
    check-cast v6, Ljava/util/List;

    if-nez v4, :cond_14

    .line 214
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_b

    :cond_13
    move v4, v1

    goto :goto_c

    :cond_14
    :goto_b
    move v4, v3

    :cond_15
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 217
    :cond_16
    iget-object p1, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_6

    .line 226
    :cond_17
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationRowId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 230
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_18
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 231
    iget-object v4, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    invoke-static {v4}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isNotNeedDealWithQuestionType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_d

    .line 234
    :cond_19
    iget-object v4, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v5, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixScale:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    instance-of v4, v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    if-eqz v4, :cond_1b

    .line 236
    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    .line 237
    iget-object v4, v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 238
    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    iget-object v6, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationRowId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_e

    .line 243
    :cond_1b
    instance-of v4, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    if-eqz v4, :cond_18

    .line 245
    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    .line 246
    iget-object v4, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 247
    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->id:Ljava/lang/String;

    iget-object v6, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationRowId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_e

    :cond_1d
    move-object v0, v2

    :goto_e
    if-eqz v0, :cond_2f

    .line 256
    instance-of p2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    if-eqz p2, :cond_20

    .line 257
    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    .line 260
    iget-object p2, v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 261
    iget-object v4, v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    iget-object v5, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationRowId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object v2, v0

    :cond_1f
    if-eqz v2, :cond_2f

    .line 267
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationValues:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_f
    xor-int/2addr p1, v3

    goto/16 :goto_3

    .line 273
    :cond_20
    move-object p2, v0

    check-cast p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    .line 275
    iget-object p2, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 276
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->id:Ljava/lang/String;

    iget-object v6, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationRowId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object v2, v4

    :cond_22
    if-eqz v2, :cond_2f

    .line 283
    iget-object p2, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixRadio:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 284
    iget-object p2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    if-eqz p2, :cond_c

    .line 285
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationValues:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_f

    .line 290
    :cond_23
    iget-object p2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_c

    .line 293
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationType:Ljava/lang/String;

    sget-object v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;->all:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 296
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationValues:[Ljava/lang/String;

    array-length v0, p1

    move v2, v1

    move v4, v3

    :goto_10
    if-ge v2, v0, :cond_25

    aget-object v5, p1, v2

    if-eqz v4, :cond_24

    .line 298
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    move v4, v3

    goto :goto_11

    :cond_24
    move v4, v1

    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_25
    xor-int/lit8 v1, v4, 0x1

    goto/16 :goto_1a

    .line 301
    :cond_26
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationType:Ljava/lang/String;

    sget-object v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;->none:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 304
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationValues:[Ljava/lang/String;

    array-length v0, p1

    move v2, v1

    move v4, v3

    :goto_12
    if-ge v2, v0, :cond_28

    aget-object v5, p1, v2

    if-eqz v4, :cond_27

    .line 306
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    move v4, v3

    goto :goto_13

    :cond_27
    move v4, v1

    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_28
    move v1, v4

    goto :goto_1a

    .line 309
    :cond_29
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationType:Ljava/lang/String;

    sget-object v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;->some:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 312
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationValues:[Ljava/lang/String;

    array-length v0, p1

    move v2, v1

    move v4, v2

    :goto_14
    if-ge v2, v0, :cond_25

    aget-object v5, p1, v2

    if-nez v4, :cond_2b

    .line 313
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_15

    :cond_2a
    move v4, v1

    goto :goto_16

    :cond_2b
    :goto_15
    move v4, v3

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 316
    :cond_2c
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationType:Ljava/lang/String;

    sget-object v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;->incomplete:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 319
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->relationValues:[Ljava/lang/String;

    array-length v0, p1

    move v2, v1

    move v4, v2

    :goto_17
    if-ge v2, v0, :cond_28

    aget-object v5, p1, v2

    if-nez v4, :cond_2e

    .line 321
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_18

    :cond_2d
    move v4, v1

    goto :goto_19

    :cond_2e
    :goto_18
    move v4, v3

    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2f
    :goto_1a
    return v1
.end method

.method public static parseCommonJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "type"

    .line 79
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    const-string v0, "topicNumber"

    .line 80
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "id"

    .line 81
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    const-string v1, "title"

    .line 83
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    iput-object v1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->originalTitle:Ljava/lang/String;

    .line 85
    invoke-static {v1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->htmlDealWith(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->title:Ljava/lang/String;

    const-string v1, "description"

    .line 87
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    iput-object v1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->originalDescription:Ljava/lang/String;

    .line 89
    invoke-static {v1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->htmlDealWith(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->description:Ljava/lang/String;

    const-string v1, "required"

    .line 91
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isRequired:Z

    const-string v1, "hidden"

    .line 92
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isHidden:Z

    const-string v1, "titleConfig"

    .line 93
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;

    move-result-object v1

    iput-object v1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->titleConfig:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "topicRelations"

    .line 96
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 97
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    .line 98
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 99
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    invoke-static {v4}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 105
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_3
    iput-object v1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionRelations:Ljava/util/List;

    const-string v1, "topicRelationsType"

    .line 110
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionRelationsType:Ljava/lang/String;

    .line 111
    iput v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->topicNumber:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 113
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static questionnaireBean2JSONStr(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
    .locals 4

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    .line 45
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 46
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 47
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->originalTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    .line 48
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->originalDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "required"

    .line 49
    iget-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isRequired:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hidden"

    .line 50
    iget-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isHidden:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 51
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 52
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionRelations:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;

    .line 54
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;->bean2JSONStr(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "topicRelations"

    .line 57
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "topicRelationsType"

    .line 58
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionRelationsType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "topicNumber"

    .line 59
    iget p0, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->topicNumber:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 61
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method private setRelationHidden(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionRelations:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 124
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionRelations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;

    .line 127
    invoke-direct {p0, v0, p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isSingleRelationHidden(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;Ljava/util/List;)Z

    move-result v1

    goto :goto_2

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionRelationsType:Ljava/lang/String;

    sget-object v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelationsType;->or:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 131
    iget-object v3, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionRelations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;

    .line 132
    iget-object v5, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionRelationsType:Ljava/lang/String;

    sget-object v6, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelationsType;->or:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_3

    .line 133
    invoke-direct {p0, v4, p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isSingleRelationHidden(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 134
    :cond_4
    iget-object v5, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionRelationsType:Ljava/lang/String;

    sget-object v6, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelationsType;->and:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_2

    .line 135
    invoke-direct {p0, v4, p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isSingleRelationHidden(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelations;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_5
    move v1, v0

    .line 145
    :cond_6
    :goto_2
    iput-boolean v1, p0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isRelationHidden:Z

    return-void
.end method


# virtual methods
.method public abstract buildJSONByBean(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)Lorg/json/JSONObject;
.end method

.method public abstract isCanSubmit(Landroid/content/Context;)Z
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->setRelationHidden(Ljava/util/List;)V

    return-void
.end method
