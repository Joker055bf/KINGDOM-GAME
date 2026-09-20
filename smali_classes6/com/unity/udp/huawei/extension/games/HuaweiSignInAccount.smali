.class public Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;
.super Ljava/lang/Object;
.source "HuaweiSignInAccount.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/games/StoreSignInAccount;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/games/StoreSignInAccount<",
        "Lcom/huawei/hms/support/account/result/AuthAccount;",
        ">;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;


# instance fields
.field private accountAuthParams:Lcom/huawei/hms/support/account/request/AccountAuthParams;

.field private authAccount:Lcom/huawei/hms/support/account/result/AuthAccount;

.field private authParamsHelper:Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    sget-object v1, Lcom/huawei/hms/support/account/request/AccountAuthParams;->DEFAULT_AUTH_REQUEST_PARAM_GAME:Lcom/huawei/hms/support/account/request/AccountAuthParams;

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;-><init>(Lcom/huawei/hms/support/account/request/AccountAuthParams;)V

    iput-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->authParamsHelper:Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;
    .locals 1

    .line 25
    sget-object v0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->INSTANCE:Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->INSTANCE:Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    .line 28
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->INSTANCE:Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    return-object v0
.end method


# virtual methods
.method public clearAuthParams()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->accountAuthParams:Lcom/huawei/hms/support/account/request/AccountAuthParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->accountAuthParams:Lcom/huawei/hms/support/account/request/AccountAuthParams;

    :cond_0
    return-void
.end method

.method public getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->accountAuthParams:Lcom/huawei/hms/support/account/request/AccountAuthParams;

    return-object v0
.end method

.method public getAuthParamsHelper()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->authParamsHelper:Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    return-object v0
.end method

.method public getStoreSignInAccount()Lcom/huawei/hms/support/account/result/AuthAccount;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->authAccount:Lcom/huawei/hms/support/account/result/AuthAccount;

    return-object v0
.end method

.method public bridge synthetic getStoreSignInAccount()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getStoreSignInAccount()Lcom/huawei/hms/support/account/result/AuthAccount;

    move-result-object v0

    return-object v0
.end method

.method public openSnapshots()V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    sget-object v1, Lcom/huawei/hms/jos/games/GameScopes;->DRIVE_APP_DATA:Lcom/huawei/hms/support/api/entity/auth/Scope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    sget-object v2, Lcom/huawei/hms/support/account/request/AccountAuthParams;->DEFAULT_AUTH_REQUEST_PARAM_GAME:Lcom/huawei/hms/support/account/request/AccountAuthParams;

    invoke-direct {v1, v2}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;-><init>(Lcom/huawei/hms/support/account/request/AccountAuthParams;)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setScopeList(Ljava/util/List;)Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->createParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->accountAuthParams:Lcom/huawei/hms/support/account/request/AccountAuthParams;

    return-void
.end method

.method public setAccountAuthParams(Lcom/huawei/hms/support/account/request/AccountAuthParams;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->accountAuthParams:Lcom/huawei/hms/support/account/request/AccountAuthParams;

    return-void
.end method

.method public updateStoreSignInAccount(Lcom/huawei/hms/support/account/result/AuthAccount;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->authAccount:Lcom/huawei/hms/support/account/result/AuthAccount;

    return-void
.end method

.method public bridge synthetic updateStoreSignInAccount(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/huawei/hms/support/account/result/AuthAccount;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->updateStoreSignInAccount(Lcom/huawei/hms/support/account/result/AuthAccount;)V

    return-void
.end method
