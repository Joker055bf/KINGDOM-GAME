.class public Lcom/game/sdk/comon/config/AuthenConfigs;
.super Ljava/lang/Object;
.source "AuthenConfigs.java"


# static fields
.field private static authenConfigs:Lcom/game/sdk/comon/config/AuthenConfigs;


# instance fields
.field private accessToken:Ljava/lang/String;

.field authenConfigObj:Lcom/game/sdk/comon/object/AuthenConfigObj;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthenConfigs()Lcom/game/sdk/comon/config/AuthenConfigs;
    .locals 1

    .line 34
    sget-object v0, Lcom/game/sdk/comon/config/AuthenConfigs;->authenConfigs:Lcom/game/sdk/comon/config/AuthenConfigs;

    return-object v0
.end method

.method public static getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;
    .locals 1

    .line 17
    sget-object v0, Lcom/game/sdk/comon/config/AuthenConfigs;->authenConfigs:Lcom/game/sdk/comon/config/AuthenConfigs;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/game/sdk/comon/config/AuthenConfigs;

    invoke-direct {v0}, Lcom/game/sdk/comon/config/AuthenConfigs;-><init>()V

    sput-object v0, Lcom/game/sdk/comon/config/AuthenConfigs;->authenConfigs:Lcom/game/sdk/comon/config/AuthenConfigs;

    .line 19
    :cond_0
    sget-object v0, Lcom/game/sdk/comon/config/AuthenConfigs;->authenConfigs:Lcom/game/sdk/comon/config/AuthenConfigs;

    return-object v0
.end method

.method public static setAuthenConfigs(Lcom/game/sdk/comon/config/AuthenConfigs;)V
    .locals 0

    .line 38
    sput-object p0, Lcom/game/sdk/comon/config/AuthenConfigs;->authenConfigs:Lcom/game/sdk/comon/config/AuthenConfigs;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/game/sdk/comon/config/AuthenConfigs;->accessToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/comon/config/AuthenConfigs;->accessToken:Ljava/lang/String;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/config/AuthenConfigs;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/game/sdk/comon/config/AuthenConfigs;->accessToken:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getAuthenConfigObj()Lcom/game/sdk/comon/object/AuthenConfigObj;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/game/sdk/comon/config/AuthenConfigs;->authenConfigObj:Lcom/game/sdk/comon/object/AuthenConfigObj;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcom/game/sdk/comon/config/AuthenConfigs;->accessToken:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveAccessToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setAuthenConfigObj(Lcom/game/sdk/comon/object/AuthenConfigObj;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/game/sdk/comon/config/AuthenConfigs;->authenConfigObj:Lcom/game/sdk/comon/object/AuthenConfigObj;

    return-void
.end method
