.class public Lcom/tgs/aics/diagnose/CSharpDiagnose;
.super Lcom/tgs/aics/diagnose/AICSDiagnose;
.source "CSharpDiagnose.java"


# instance fields
.field private mDiagnoseJson:Lorg/json/JSONObject;

.field public mOnExecuteCSharpDiagnose:Lcom/tgs/aics/diagnose/listener/OnExecuteCSharpDiagnose;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;-><init>()V

    return-void
.end method


# virtual methods
.method public getExecuteOrder()I
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/tgs/aics/diagnose/CSharpDiagnose;->mDiagnoseJson:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "sort"

    .line 42
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getIntendTime()J
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/tgs/aics/diagnose/CSharpDiagnose;->mDiagnoseJson:Lorg/json/JSONObject;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    const-string v3, "duration"

    .line 48
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method public getName()Ljava/lang/Object;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/tgs/aics/diagnose/CSharpDiagnose;->mDiagnoseJson:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "title"

    .line 30
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getNativeIdentifyId()Ljava/lang/String;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/tgs/aics/diagnose/CSharpDiagnose;->mDiagnoseJson:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "id"

    .line 53
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getTotal()I
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/tgs/aics/diagnose/CSharpDiagnose;->mDiagnoseJson:Lorg/json/JSONObject;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v2, "size"

    .line 36
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method protected onExecute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tgs/aics/diagnose/CSharpDiagnose;->mOnExecuteCSharpDiagnose:Lcom/tgs/aics/diagnose/listener/OnExecuteCSharpDiagnose;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tgs/aics/diagnose/listener/OnExecuteCSharpDiagnose;->onExecuteDiagnose(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    :cond_0
    return-void
.end method

.method public updateDiagnoseJson(Lorg/json/JSONObject;)Lcom/tgs/aics/diagnose/CSharpDiagnose;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tgs/aics/diagnose/CSharpDiagnose;->mDiagnoseJson:Lorg/json/JSONObject;

    return-object p0
.end method
