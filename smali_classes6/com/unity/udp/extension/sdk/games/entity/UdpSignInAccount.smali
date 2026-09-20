.class public Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;
.super Ljava/lang/Object;
.source "UdpSignInAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    }
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private account:Landroid/accounts/Account;

.field private ageRange:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private expirationTimeSecs:J

.field private familyName:Ljava/lang/String;

.field private gender:I

.field private givenName:Ljava/lang/String;

.field private grantedScopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/unity/udp/extension/sdk/games/entity/UdpScope;",
            ">;"
        }
    .end annotation
.end field

.field private idToken:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private photoUriString:Ljava/lang/String;

.field private serverAuthCode:Ljava/lang/String;

.field private serviceCountryCode:Ljava/lang/String;

.field private status:I

.field private uid:Ljava/lang/String;

.field private unionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->account:Landroid/accounts/Account;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->account:Landroid/accounts/Account;

    .line 39
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->displayName:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->email:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->familyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->familyName:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->givenName:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->givenName:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->grantedScopes:Ljava/util/Set;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->grantedScopes:Ljava/util/Set;

    .line 44
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->uid:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->openId:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->openId:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->unionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->unionId:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->idToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->idToken:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->photoUriString:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->photoUriString:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->accessToken:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->serverAuthCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->serverAuthCode:Ljava/lang/String;

    .line 51
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->status:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->status:I

    .line 52
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->gender:I

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->gender:I

    .line 53
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->countryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->countryCode:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->serviceCountryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->serviceCountryCode:Ljava/lang/String;

    .line 55
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->expirationTimeSecs:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->expirationTimeSecs:J

    .line 56
    iget-object p1, p1, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->ageRange:Ljava/lang/String;

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->ageRange:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->account:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAgeRange()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->ageRange:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTimeSecs()J
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->expirationTimeSecs:J

    return-wide v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->familyName:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->gender:I

    return v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->givenName:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantedScopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/unity/udp/extension/sdk/games/entity/UdpScope;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->grantedScopes:Ljava/util/Set;

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUriString()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->photoUriString:Ljava/lang/String;

    return-object v0
.end method

.method public getServerAuthCode()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->serverAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCountryCode()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->serviceCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->status:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;->unionId:Ljava/lang/String;

    return-object v0
.end method
