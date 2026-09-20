.class public Lcom/game/sdk/comon/object/AuthenConfigObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "AuthenConfigObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;,
        Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;
    }
.end annotation


# instance fields
.field private canClose:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "close_btn"
    .end annotation
.end field

.field private loginConfig:Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login_config"
    .end annotation
.end field

.field private logoOlder:Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo_older"
    .end annotation
.end field

.field private registerConfig:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "register_config"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanClose()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/game/sdk/comon/object/AuthenConfigObj;->canClose:I

    return v0
.end method

.method public getLoginConfig()Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/game/sdk/comon/object/AuthenConfigObj;->loginConfig:Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;

    return-object v0
.end method

.method public getLogoOlder()Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/game/sdk/comon/object/AuthenConfigObj;->logoOlder:Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;

    return-object v0
.end method

.method public getRegisterConfig()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/game/sdk/comon/object/AuthenConfigObj;->registerConfig:I

    return v0
.end method

.method public setCanClose(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/game/sdk/comon/object/AuthenConfigObj;->canClose:I

    return-void
.end method

.method public setLoginConfig(Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/game/sdk/comon/object/AuthenConfigObj;->loginConfig:Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;

    return-void
.end method

.method public setLogoOlder(Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/game/sdk/comon/object/AuthenConfigObj;->logoOlder:Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;

    return-void
.end method

.method public setRegisterConfig(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/game/sdk/comon/object/AuthenConfigObj;->registerConfig:I

    return-void
.end method
