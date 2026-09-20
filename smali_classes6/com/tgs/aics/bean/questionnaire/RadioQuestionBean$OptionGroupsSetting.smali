.class public Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;
.super Ljava/lang/Object;
.source "RadioQuestionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionGroupsSetting"
.end annotation


# instance fields
.field public groupMutex:Z

.field public isRandom:Z

.field public showGroupName:Z

.field public withinGroupMutex:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2JSON(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;)Lorg/json/JSONObject;
    .locals 3

    .line 559
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "isRandom"

    .line 561
    iget-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->isRandom:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "groupMutex"

    .line 562
    iget-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->groupMutex:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "withinGroupMutex"

    .line 563
    iget-boolean v2, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->withinGroupMutex:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "showGroupName"

    .line 564
    iget-boolean p0, p0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->showGroupName:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 566
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 576
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;

    invoke-direct {v1}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;-><init>()V

    const-string v2, "isRandom"

    .line 577
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->isRandom:Z

    const-string v2, "groupMutex"

    .line 578
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->groupMutex:Z

    const-string v2, "withinGroupMutex"

    .line 579
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->withinGroupMutex:Z

    const-string v2, "showGroupName"

    .line 580
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->showGroupName:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 583
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method
