.class public Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
.super Ljava/lang/Object;
.source "UdpSignInAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field accessToken:Ljava/lang/String;

.field account:Landroid/accounts/Account;

.field ageRange:Ljava/lang/String;

.field countryCode:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field email:Ljava/lang/String;

.field expirationTimeSecs:J

.field familyName:Ljava/lang/String;

.field gender:I

.field givenName:Ljava/lang/String;

.field grantedScopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/unity/udp/extension/sdk/games/entity/UdpScope;",
            ">;"
        }
    .end annotation
.end field

.field idToken:Ljava/lang/String;

.field openId:Ljava/lang/String;

.field photoUriString:Ljava/lang/String;

.field serverAuthCode:Ljava/lang/String;

.field serviceCountryCode:Ljava/lang/String;

.field status:I

.field uid:Ljava/lang/String;

.field unionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;
    .locals 1

    .line 352
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;

    invoke-direct {v0, p0}, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount;-><init>(Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;)V

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public setAccount(Landroid/accounts/Account;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->account:Landroid/accounts/Account;

    return-object p0
.end method

.method public setAgeRange(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->ageRange:Ljava/lang/String;

    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->email:Ljava/lang/String;

    return-object p0
.end method

.method public setExpirationTimeSecs(J)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 342
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->expirationTimeSecs:J

    return-object p0
.end method

.method public setFamilyName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->familyName:Ljava/lang/String;

    return-object p0
.end method

.method public setGender(I)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 327
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->gender:I

    return-object p0
.end method

.method public setGivenName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->givenName:Ljava/lang/String;

    return-object p0
.end method

.method public setGrantedScopes(Ljava/util/Set;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/unity/udp/extension/sdk/games/entity/UdpScope;",
            ">;)",
            "Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;"
        }
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->grantedScopes:Ljava/util/Set;

    return-object p0
.end method

.method public setIdToken(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->idToken:Ljava/lang/String;

    return-object p0
.end method

.method public setOpenId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->openId:Ljava/lang/String;

    return-object p0
.end method

.method public setPhotoUriString(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->photoUriString:Ljava/lang/String;

    return-object p0
.end method

.method public setServerAuthCode(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->serverAuthCode:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceCountryCode(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->serviceCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(I)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 322
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->status:I

    return-object p0
.end method

.method public setUid(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public setUnionId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/UdpSignInAccount$Builder;->unionId:Ljava/lang/String;

    return-object p0
.end method
