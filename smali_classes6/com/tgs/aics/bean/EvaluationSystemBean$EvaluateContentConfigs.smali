.class public Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;
.super Ljava/lang/Object;
.source "EvaluationSystemBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/EvaluationSystemBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EvaluateContentConfigs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;
    }
.end annotation


# instance fields
.field private inputLimit:I

.field private inputPrompt:Ljava/lang/String;

.field private isRequiredInput:Z

.field private isRequiredTag:Z

.field private isShowInput:Z

.field private isShowTagRemark:Z

.field private isShowTags:Z

.field private tagRemark:Ljava/lang/String;

.field private tags:[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultEvaluateContentConfigs(Landroid/content/Context;Z)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;
    .locals 3

    .line 236
    new-instance v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    invoke-direct {v0}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;-><init>()V

    const/4 v1, 0x0

    .line 237
    iput-boolean v1, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowTagRemark:Z

    const-string v2, ""

    .line 238
    iput-object v2, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->tagRemark:Ljava/lang/String;

    xor-int/lit8 v2, p1, 0x1

    .line 239
    iput-boolean v2, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowTags:Z

    if-nez p1, :cond_0

    .line 241
    invoke-static {p0}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->defaultTags(Landroid/content/Context;)[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    move-result-object v2

    iput-object v2, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->tags:[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    goto :goto_0

    :cond_0
    new-array v2, v1, [Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    .line 243
    iput-object v2, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->tags:[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    :goto_0
    const/4 v2, 0x1

    xor-int/2addr p1, v2

    .line 244
    iput-boolean p1, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isRequiredTag:Z

    .line 245
    iput-boolean v2, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowInput:Z

    const-string p1, "tgs_aics_input_content_hint"

    .line 246
    invoke-static {p0, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->inputPrompt:Ljava/lang/String;

    .line 247
    iput v1, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->inputLimit:I

    .line 248
    iput-boolean v2, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isRequiredInput:Z

    return-object v0
.end method

.method public static parse(Lorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 196
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 197
    new-instance v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    invoke-direct {v3}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;-><init>()V

    .line 198
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, "showTagRemark"

    .line 200
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowTagRemark:Z

    const-string v5, "tagRemark"

    .line 201
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->tagRemark:Ljava/lang/String;

    const-string v5, "showTags"

    .line 202
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowTags:Z

    const-string v5, "tags"

    .line 203
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 205
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    iput-object v6, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->tags:[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    move v6, v1

    .line 206
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 207
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->parse(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    move-result-object v7

    .line 208
    iget-object v8, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->tags:[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-array v5, v1, [Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    .line 211
    iput-object v5, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->tags:[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    .line 214
    :cond_2
    iget-boolean v5, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowTags:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->tags:[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    array-length v5, v5

    if-lez v5, :cond_3

    const-string v5, "requiredTag"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    iput-boolean v5, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isRequiredTag:Z

    const-string v5, "showInput"

    .line 215
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowInput:Z

    const-string v5, "inputPrompt"

    .line 216
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->inputPrompt:Ljava/lang/String;

    const-string v5, "inputLimit"

    .line 217
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->inputLimit:I

    .line 219
    iget-boolean v5, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowInput:Z

    if-eqz v5, :cond_4

    const-string v5, "requiredInput"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    iput-boolean v6, v3, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isRequiredInput:Z

    const-string v5, "star"

    .line 220
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 224
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :cond_6
    return-object v0
.end method


# virtual methods
.method public getInputLimit()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->inputLimit:I

    return v0
.end method

.method public getInputPrompt()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->inputPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public getTagRemark()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->tagRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->tags:[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    return-object v0
.end method

.method public isRequiredInput()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isRequiredInput:Z

    return v0
.end method

.method public isRequiredTag()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isRequiredTag:Z

    return v0
.end method

.method public isShowInput()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowInput:Z

    return v0
.end method

.method public isShowTagRemark()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowTagRemark:Z

    return v0
.end method

.method public isShowTags()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowTags:Z

    return v0
.end method
