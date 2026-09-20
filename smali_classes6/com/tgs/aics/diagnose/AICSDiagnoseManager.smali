.class public Lcom/tgs/aics/diagnose/AICSDiagnoseManager;
.super Ljava/lang/Object;
.source "AICSDiagnoseManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "aics.TGSDiagnoseManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDiagnose(Lcom/tgs/aics/diagnose/AICSDiagnose;)Z
    .locals 1

    .line 58
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->addDiagnose(Lcom/tgs/aics/diagnose/AICSDiagnose;)Z

    move-result p0

    return p0
.end method

.method public static addDiagnose(Ljava/lang/String;Lcom/tgs/aics/diagnose/listener/OnExecuteCSharpDiagnose;)Z
    .locals 3

    .line 62
    invoke-static {p0}, Lcom/tgs/aics/diagnose/JsonObject;->create(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "Fail add android diagnose while diagnose json object null."

    .line 64
    invoke-static {p0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    return v0

    .line 67
    :cond_0
    new-instance v1, Lcom/tgs/aics/diagnose/CSharpDiagnose;

    invoke-direct {v1}, Lcom/tgs/aics/diagnose/CSharpDiagnose;-><init>()V

    .line 68
    invoke-virtual {v1, p0}, Lcom/tgs/aics/diagnose/CSharpDiagnose;->updateDiagnoseJson(Lorg/json/JSONObject;)Lcom/tgs/aics/diagnose/CSharpDiagnose;

    .line 69
    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/CSharpDiagnose;->getNativeIdentifyId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {p0}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager;->findCsharpDiagnose(Ljava/lang/String;)Lcom/tgs/aics/diagnose/IDiagnose;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p0, "Fail add android diagnose while already exist same nativeIdentifyId\'s diagnose."

    .line 74
    invoke-static {p0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    return v0

    .line 77
    :cond_2
    iput-object p1, v1, Lcom/tgs/aics/diagnose/CSharpDiagnose;->mOnExecuteCSharpDiagnose:Lcom/tgs/aics/diagnose/listener/OnExecuteCSharpDiagnose;

    .line 78
    invoke-static {v1}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager;->addDiagnose(Lcom/tgs/aics/diagnose/AICSDiagnose;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const-string p0, "Fail add android diagnose while nativeIdentifyId invalid."

    .line 71
    invoke-static {p0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    return v0
.end method

.method private static findCsharpDiagnose(Ljava/lang/String;)Lcom/tgs/aics/diagnose/IDiagnose;
    .locals 1

    if-eqz p0, :cond_1

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager;->findDiagnose(Lcom/tgs/aics/diagnose/Matcher;)Lcom/tgs/aics/diagnose/IDiagnose;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findDiagnose(Lcom/tgs/aics/diagnose/Matcher;)Lcom/tgs/aics/diagnose/IDiagnose;
    .locals 1

    .line 112
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->findDiagnose(Lcom/tgs/aics/diagnose/Matcher;)Lcom/tgs/aics/diagnose/IDiagnose;

    move-result-object p0

    return-object p0
.end method

.method public static getConfig()Lcom/tgs/aics/diagnose/Config;
    .locals 1

    .line 108
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getConfig()Lcom/tgs/aics/diagnose/Config;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$findCsharpDiagnose$2(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    instance-of v0, p1, Lcom/tgs/aics/diagnose/CSharpDiagnose;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tgs/aics/diagnose/CSharpDiagnose;

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/CSharpDiagnose;->getNativeIdentifyId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method static synthetic lambda$start$0(Lcom/tgs/aics/ui/dialog/TipsDialog;Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$start$1(Lcom/tgs/aics/ui/dialog/TipsDialog;Landroid/app/Activity;Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    .line 32
    invoke-static {p1, p2, p3}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager;->startDiagnose(Landroid/app/Activity;Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)Z

    return-void
.end method

.method public static removeDiagnose(Lcom/tgs/aics/diagnose/IDiagnose;)Z
    .locals 1

    .line 91
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->removeDiagnose(Lcom/tgs/aics/diagnose/IDiagnose;)Z

    move-result p0

    return p0
.end method

.method public static removeDiagnose(Ljava/lang/String;)Z
    .locals 2

    .line 82
    invoke-static {p0}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager;->findCsharpDiagnose(Ljava/lang/String;)Lcom/tgs/aics/diagnose/IDiagnose;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fail remove android diagnose while not exist nativeIdentifyId\'s diagnose."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager;->removeDiagnose(Lcom/tgs/aics/diagnose/IDiagnose;)Z

    move-result p0

    return p0
.end method

.method public static setConfig(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 98
    :cond_0
    instance-of v0, p0, Lcom/tgs/aics/diagnose/Config;

    if-eqz v0, :cond_1

    .line 99
    check-cast p0, Lcom/tgs/aics/diagnose/Config;

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Lcom/tgs/aics/diagnose/Config;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/Config;-><init>()V

    .line 102
    invoke-static {p0}, Lcom/tgs/aics/diagnose/JsonObject;->create(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/diagnose/Config;->put(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-object p0, v0

    .line 104
    :goto_0
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->setConfig(Lcom/tgs/aics/diagnose/Config;)Z

    move-result p0

    return p0
.end method

.method public static final start(Landroid/app/Activity;Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 26
    :cond_1
    new-instance v0, Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "tgs_aics_diagnose_loginFail"

    .line 27
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setTitle(Ljava/lang/String;)V

    const-string v1, "tgs_aics_diagnose_loginFailMessage"

    .line 28
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setContent(Ljava/lang/String;)V

    const-string v1, "tgs_aics_diagnose_justTakeALook"

    .line 29
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/dialog/TipsDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string v1, "tgs_aics_diagnose_checkNetwork"

    .line 30
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/ui/dialog/TipsDialog;Landroid/app/Activity;Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static final startDiagnose(Landroid/app/Activity;Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)Z
    .locals 0

    .line 49
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Fail start diagnose activity.e="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/diagnose/utils/D;->E(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final startDiagnose(Landroid/app/Activity;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 41
    invoke-static {p0, v0, v0}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager;->start(Landroid/app/Activity;Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)Z

    move-result p0

    return p0

    .line 43
    :cond_0
    invoke-static {p0, v0, v0}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager;->startDiagnose(Landroid/app/Activity;Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)Z

    move-result p0

    return p0
.end method
