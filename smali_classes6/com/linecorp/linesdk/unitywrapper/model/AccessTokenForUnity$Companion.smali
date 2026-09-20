.class public final Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity$Companion;
.super Ljava/lang/Object;
.source "AccessTokenForUnity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;
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
        "Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity$Companion;",
        "",
        "()V",
        "convertFromLineLoginResult",
        "Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;",
        "loginResult",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertFromLineLoginResult(Lcom/linecorp/linesdk/auth/LineLoginResult;)Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;
    .locals 5

    const-string v0, "loginResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineIdToken()Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 21
    :goto_0
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getLineCredential()Lcom/linecorp/linesdk/LineCredential;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineCredential;->getAccessToken()Lcom/linecorp/linesdk/LineAccessToken;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_3

    return-object v0

    .line 22
    :cond_3
    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

    .line 23
    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineAccessToken;->getTokenString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "accessToken.tokenString"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineAccessToken;->getExpiresInMillis()J

    move-result-wide v3

    .line 22
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method
