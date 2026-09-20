.class public Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;
.super Ljava/lang/Object;
.source "HuaweiAuthParamsHelperImpl.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/games/IAuthParamsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createParams()V
    .locals 2

    .line 63
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAuthParamsHelper()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->createParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->setAccountAuthParams(Lcom/huawei/hms/support/account/request/AccountAuthParams;)V

    return-void
.end method

.method public setAccessToken()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAuthParamsHelper()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setAccessToken()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    return-void
.end method

.method public setAuthorizationCode()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAuthParamsHelper()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setAuthorizationCode()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    return-void
.end method

.method public setEmail()V
    .locals 1

    .line 38
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAuthParamsHelper()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setEmail()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    return-void
.end method

.method public setId()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAuthParamsHelper()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setId()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    return-void
.end method

.method public setIdToken()V
    .locals 1

    .line 48
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAuthParamsHelper()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setIdToken()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    return-void
.end method

.method public setMobileNumber()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAuthParamsHelper()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setMobileNumber()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    return-void
.end method

.method public setProfile()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAuthParamsHelper()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setProfile()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    return-void
.end method

.method public setScope(Lcom/unity/udp/extension/sdk/games/entity/UdpScope;)V
    .locals 2

    .line 28
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAuthParamsHelper()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    move-result-object v0

    invoke-static {}, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/ScopeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;->reverseAdapt(Lcom/unity/udp/extension/sdk/games/entity/UdpScope;)Lcom/huawei/hms/support/api/entity/auth/Scope;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setScope(Lcom/huawei/hms/support/api/entity/auth/Scope;)Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    return-void
.end method

.method public setScopeList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity/udp/extension/sdk/games/entity/UdpScope;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAuthParamsHelper()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    move-result-object v0

    invoke-static {}, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/ScopeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;->reverseAdapt(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setScopeList(Ljava/util/List;)Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    return-void
.end method

.method public setUid()V
    .locals 1

    .line 13
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAuthParamsHelper()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setUid()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    return-void
.end method
