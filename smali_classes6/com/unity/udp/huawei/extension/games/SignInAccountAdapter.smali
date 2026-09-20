.class public Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;
.super Ljava/lang/Object;
.source "SignInAccountAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/support/account/result/AuthAccount;",
        "Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;
    .locals 1

    .line 17
    sget-object v0, Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;

    .line 20
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/support/account/result/AuthAccount;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;
    .locals 3

    .line 25
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;-><init>()V

    .line 26
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setAccount(Landroid/accounts/Account;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setDisplayName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setEmail(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setFamilyName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getGivenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setGivenName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/ScopeAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getAuthorizedScopes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;->setAdapt(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setGrantedScopes(Ljava/util/Set;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setUid(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setOpenId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getUnionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setUnionId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getIdToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setIdToken(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getAvatarUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setPhotoUriString(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setAccessToken(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getAuthorizationCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setServerAuthCode(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setStatus(I)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setGender(I)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setCountryCode(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getServiceCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setServiceCountryCode(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getExpirationTimeSecs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setExpirationTimeSecs(J)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->getAgeRange()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->setAgeRange(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->build()Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lcom/huawei/hms/support/account/result/AuthAccount;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/SignInAccountAdapter;->adapt(Lcom/huawei/hms/support/account/result/AuthAccount;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;

    move-result-object p1

    return-object p1
.end method
