.class public final Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity$Companion;
.super Ljava/lang/Object;
.source "LoginResultForUnity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity$Companion;",
        "",
        "()V",
        "convertLineResult",
        "Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;",
        "lineLoginResult",
        "Lcom/linecorp/linesdk/auth/LineLoginResult;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertLineResult(Lcom/linecorp/linesdk/auth/LineLoginResult;)Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;
    .locals 7

    const-string v0, "lineLoginResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;->Companion:Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity$Companion;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity$Companion;->convertFromLineLoginResult(Lcom/linecorp/linesdk/auth/LineLoginResult;)Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineProfile()Lcom/linecorp/linesdk/LineProfile;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 18
    :cond_1
    sget-object v3, Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;->Companion:Lcom/linecorp/linesdk/unitywrapper/model/UserProfile$Companion;

    invoke-virtual {v3, v1}, Lcom/linecorp/linesdk/unitywrapper/model/UserProfile$Companion;->convertLineProfile(Lcom/linecorp/linesdk/LineProfile;)Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v1

    .line 20
    :goto_1
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineCredential()Lcom/linecorp/linesdk/LineCredential;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_3

    :goto_2
    move-object v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineCredential;->getScopes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    invoke-static {v0}, Lcom/linecorp/linesdk/Scope;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v0

    .line 23
    :goto_3
    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;

    .line 27
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getFriendshipStatusChanged()Ljava/lang/Boolean;

    move-result-object v1

    const-string v5, "lineLoginResult.friendshipStatusChanged"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 28
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getNonce()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;-><init>(Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;Ljava/lang/String;Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;ZLjava/lang/String;)V

    return-object v0
.end method
