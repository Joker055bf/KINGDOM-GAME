.class Lcom/t4f/sdkauth/funtap/FunTapLogin$1;
.super Ljava/lang/Object;
.source "FunTapLogin.java"

# interfaces
.implements Lcom/game/sdk/comon/listener/ILoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/sdkauth/funtap/FunTapLogin;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 4

    .line 53
    invoke-static {}, Lcom/t4f/sdkauth/funtap/FunTapLogin;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 54
    invoke-static {v0}, Lcom/t4f/sdkauth/funtap/FunTapLogin;->access$002(Z)Z

    .line 55
    sget-object v0, Lcom/t4f/sdkauth/funtap/FunTapLogin;->mInterface:Lcom/t4f/sdkauth/funtap/FunTapInterface;

    const/4 v1, 0x1

    const-string v2, "user canceled"

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/t4f/sdkauth/funtap/FunTapInterface;->loginCallback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoginSuccess()V
    .locals 5

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Lcom/t4f/sdkauth/funtap/FunTapLogin;->access$002(Z)Z

    .line 38
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/object/UserObj;->getAccount()Lcom/game/sdk/comon/object/UserObj$Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/object/UserObj$Account;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/object/UserObj;->getName()Ljava/lang/String;

    .line 43
    sget-object v3, Lcom/t4f/sdkauth/funtap/FunTapLogin;->mInterface:Lcom/t4f/sdkauth/funtap/FunTapInterface;

    const-string v4, "success"

    invoke-interface {v3, v0, v4, v2, v1}, Lcom/t4f/sdkauth/funtap/FunTapInterface;->loginCallback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegisterSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
