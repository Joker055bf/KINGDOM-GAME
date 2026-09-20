.class public final Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;
.super Ljava/lang/Object;
.source "LoginResultForUnity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000  2\u00020\u0001:\u0001 B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J?\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\t2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;",
        "",
        "accessToken",
        "Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;",
        "scope",
        "",
        "userProfile",
        "Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;",
        "friendshipStatusChanged",
        "",
        "IDTokenNonce",
        "(Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;Ljava/lang/String;Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;ZLjava/lang/String;)V",
        "getIDTokenNonce",
        "()Ljava/lang/String;",
        "getAccessToken",
        "()Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;",
        "getFriendshipStatusChanged",
        "()Z",
        "getScope",
        "getUserProfile",
        "()Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
        "line_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity$Companion;


# instance fields
.field private final IDTokenNonce:Ljava/lang/String;

.field private final accessToken:Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

.field private final friendshipStatusChanged:Z

.field private final scope:Ljava/lang/String;

.field private final userProfile:Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->Companion:Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;Ljava/lang/String;Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->accessToken:Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

    .line 9
    iput-object p2, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->scope:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->userProfile:Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;

    .line 11
    iput-boolean p4, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->friendshipStatusChanged:Z

    .line 12
    iput-object p5, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->IDTokenNonce:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;Ljava/lang/String;Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;ZLjava/lang/String;ILjava/lang/Object;)Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->accessToken:Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->scope:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->userProfile:Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->friendshipStatusChanged:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->IDTokenNonce:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->copy(Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;Ljava/lang/String;Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;ZLjava/lang/String;)Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->accessToken:Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->userProfile:Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->friendshipStatusChanged:Z

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->IDTokenNonce:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;Ljava/lang/String;Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;ZLjava/lang/String;)Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;
    .locals 7

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;-><init>(Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;Ljava/lang/String;Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->accessToken:Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

    iget-object v3, p1, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->accessToken:Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->scope:Ljava/lang/String;

    iget-object v3, p1, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->scope:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->userProfile:Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;

    iget-object v3, p1, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->userProfile:Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->friendshipStatusChanged:Z

    iget-boolean v3, p1, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->friendshipStatusChanged:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->IDTokenNonce:Ljava/lang/String;

    iget-object p1, p1, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->IDTokenNonce:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAccessToken()Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->accessToken:Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

    return-object v0
.end method

.method public final getFriendshipStatusChanged()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->friendshipStatusChanged:Z

    return v0
.end method

.method public final getIDTokenNonce()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->IDTokenNonce:Ljava/lang/String;

    return-object v0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserProfile()Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->userProfile:Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->accessToken:Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->scope:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->userProfile:Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->friendshipStatusChanged:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->IDTokenNonce:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginResultForUnity(accessToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->accessToken:Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->userProfile:Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", friendshipStatusChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->friendshipStatusChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IDTokenNonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->IDTokenNonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
