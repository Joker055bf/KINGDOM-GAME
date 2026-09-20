.class public Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;
.super Ljava/lang/Object;
.source "EvaluationSystemBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tags"
.end annotation


# instance fields
.field private tagId:I

.field private tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultTags(Landroid/content/Context;)[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    .line 280
    new-instance v2, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    invoke-direct {v2}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    .line 281
    iput v3, v2, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->tagId:I

    const-string v4, "tgs_aics_late_reply"

    .line 282
    invoke-static {p0, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->tagName:Ljava/lang/String;

    .line 283
    new-instance v2, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    invoke-direct {v2}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;-><init>()V

    aput-object v2, v1, v3

    const/4 v3, 0x2

    .line 284
    iput v3, v2, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->tagId:I

    const-string v4, "tgs_aics_bad_result"

    .line 285
    invoke-static {p0, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->tagName:Ljava/lang/String;

    .line 286
    new-instance v2, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    invoke-direct {v2}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;-><init>()V

    aput-object v2, v1, v3

    .line 287
    iput v0, v2, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->tagId:I

    const-string v0, "tgs_aics_bad_attitude"

    .line 288
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->tagName:Ljava/lang/String;

    return-object v1
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;
    .locals 2

    .line 265
    new-instance v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    invoke-direct {v0}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "tagId"

    .line 270
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->tagId:I

    const-string v1, "tagName"

    .line 271
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->tagName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 273
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getTagId()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->tagId:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->tagName:Ljava/lang/String;

    return-object v0
.end method
