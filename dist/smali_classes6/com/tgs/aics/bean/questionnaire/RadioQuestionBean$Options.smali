.class public Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;
.super Ljava/lang/Object;
.source "RadioQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;,
        Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public isHidden:Z

.field public isOptionRelationHidden:Z

.field public label:Ljava/lang/String;

.field public optionDescription:Ljava/lang/String;

.field public optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

.field public optionImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public optionRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;",
            ">;"
        }
    .end annotation
.end field

.field public optionRelationsType:Ljava/lang/String;

.field public score:Ljava/lang/Double;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)Lorg/json/JSONObject;
    .locals 4

    .line 194
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "label"

    .line 196
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 197
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 198
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hidden"

    .line 199
    iget-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->isHidden:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "optionDescription"

    .line 200
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "score"

    .line 201
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->score:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 203
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionImages:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 204
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 205
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "optionImage"

    .line 208
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    iget-object v1, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz v1, :cond_1

    const-string v2, "optionForm"

    .line 210
    invoke-static {v1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 212
    iget-object v2, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionRelations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;

    .line 213
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string v2, "optionRelations"

    .line 215
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "optionRelationsType"

    .line 216
    iget-object p0, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionRelationsType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 218
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "label"

    .line 228
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->htmlDealWith(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->label:Ljava/lang/String;

    const-string v0, "value"

    .line 230
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->value:Ljava/lang/String;

    const-string v0, "id"

    .line 231
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->id:Ljava/lang/String;

    const-string v0, "hidden"

    .line 232
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->isHidden:Z

    const-string v0, "optionDescription"

    .line 233
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "score"

    const-wide/16 v2, 0x0

    .line 234
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->score:Ljava/lang/Double;

    .line 235
    invoke-static {v0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->htmlDealWith(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionDescription:Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "optionImage"

    .line 238
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "url"

    .line 240
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    move v3, v2

    .line 242
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 243
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :cond_1
    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionImages:Ljava/util/List;

    const-string v0, "optionForm"

    .line 249
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "optionRelations"

    .line 252
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 253
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 254
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 255
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 259
    :cond_2
    invoke-static {v3}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 261
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    :cond_4
    iput-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionRelations:Ljava/util/List;

    const-string v0, "optionRelationsType"

    .line 266
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionRelationsType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 268
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
