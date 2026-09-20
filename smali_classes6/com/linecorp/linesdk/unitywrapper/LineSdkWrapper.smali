.class public final Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;
.super Ljava/lang/Object;
.source "LineSdkWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\u000c\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J(\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;",
        "",
        "()V",
        "channelId",
        "",
        "gson",
        "Lcom/google/gson/Gson;",
        "lineApiClient",
        "Lcom/linecorp/linesdk/api/LineApiClient;",
        "getBotFriendshipStatus",
        "",
        "identifier",
        "getCurrentAccessToken",
        "getProfile",
        "login",
        "scope",
        "onlyWebLogin",
        "",
        "botPrompt",
        "logout",
        "refreshAccessToken",
        "setupSdk",
        "verifyAccessToken",
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
.field public static final Companion:Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper$Companion;

.field private static final TAG:Ljava/lang/String; = "LineSdkWrapper"


# instance fields
.field private channelId:Ljava/lang/String;

.field private final gson:Lcom/google/gson/Gson;

.field private lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->Companion:Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final getBotFriendshipStatus(Ljava/lang/String;)V
    .locals 4

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string v1, "LineSdkWrapper"

    const-string v2, "getBotFriendShipStatus"

    invoke-virtual {v0, v1, v2}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    const/4 v1, 0x0

    const-string v2, "lineApiClient"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/linecorp/linesdk/api/LineApiClient;->getFriendshipStatus()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    const-string v3, "lineApiClient.friendshipStatus"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    sget-object v1, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->Companion:Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;

    invoke-virtual {v1, p1, v0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;->sendMessageError(Ljava/lang/String;Lcom/linecorp/linesdk/LineApiResponse;)V

    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/model/BotFriendshipStatus;

    iget-object v3, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/linecorp/linesdk/api/LineApiClient;->getFriendshipStatus()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/LineFriendshipStatus;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineFriendshipStatus;->isFriend()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/unitywrapper/model/BotFriendshipStatus;-><init>(Z)V

    .line 92
    new-instance v1, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    .line 94
    iget-object v2, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gson.toJson(botFriendShipStatus)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {v1, p1, v0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->sendMessageOk()V

    return-void

    .line 91
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getCurrentAccessToken()Ljava/lang/String;
    .locals 10

    .line 69
    new-instance v7, Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

    .line 70
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    const/4 v1, 0x0

    const-string v2, "lineApiClient"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/linecorp/linesdk/api/LineApiClient;->getCurrentAccessToken()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineAccessToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineAccessToken;->getTokenString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "lineApiClient.currentAccessToken.responseData.tokenString"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/linecorp/linesdk/api/LineApiClient;->getCurrentAccessToken()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineAccessToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineAccessToken;->getExpiresInMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, v7

    move-object v1, v3

    move-wide v2, v4

    move-object v4, v6

    move v5, v8

    move-object v6, v9

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;-><init>(Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gson.toJson(accessToken)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 71
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getProfile(Ljava/lang/String;)V
    .locals 5

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string v1, "getProfile"

    const-string v2, "LineSdkWrapper"

    invoke-virtual {v0, v2, v1}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    const/4 v1, 0x0

    const-string v3, "lineApiClient"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/linecorp/linesdk/api/LineApiClient;->getProfile()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    const-string v4, "lineApiClient.profile"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    sget-object v1, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->Companion:Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;

    invoke-virtual {v1, p1, v0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;->sendMessageError(Ljava/lang/String;Lcom/linecorp/linesdk/LineApiResponse;)V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/linecorp/linesdk/api/LineApiClient;->getProfile()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "lineApiClient.profile.responseData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/linecorp/linesdk/LineProfile;

    .line 62
    sget-object v1, Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;->Companion:Lcom/linecorp/linesdk/unitywrapper/model/UserProfile$Companion;

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/unitywrapper/model/UserProfile$Companion;->convertLineProfile(Lcom/linecorp/linesdk/LineProfile;)Lcom/linecorp/linesdk/unitywrapper/model/UserProfile;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string v3, "getProfile: "

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    const-string v2, "jsonString"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->sendMessageOk()V

    return-void

    .line 61
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final login(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string v1, "login"

    const-string v3, "LineSdkWrapper"

    invoke-virtual {v0, v3, v1}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->channelId:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "channelId"

    if-eqz v1, :cond_2

    const-string v7, "channelId:"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string v1, "scope:"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 43
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->Companion:Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity$Companion;

    const-string v3, "currentActivity"

    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->channelId:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-nez p4, :cond_0

    .line 49
    sget-object v5, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;->normal:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    invoke-virtual {v5}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;->name()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    move-object v2, p1

    move-object v4, p2

    move v5, p3

    .line 43
    invoke-virtual/range {v0 .. v6}, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity$Companion;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    .line 46
    :cond_1
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 39
    :cond_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method

.method public final logout(Ljava/lang/String;)V
    .locals 3

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string v1, "LineSdkWrapper"

    const-string v2, "logout"

    invoke-virtual {v0, v1, v2}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/linecorp/linesdk/api/LineApiClient;->logout()Lcom/linecorp/linesdk/LineApiResponse;

    .line 79
    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->sendMessageOk()V

    return-void

    :cond_0
    const-string p1, "lineApiClient"

    .line 78
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final refreshAccessToken(Ljava/lang/String;)V
    .locals 9

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string v1, "LineSdkWrapper"

    const-string v2, "refreshAccessToken"

    invoke-virtual {v0, v1, v2}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/linecorp/linesdk/api/LineApiClient;->refreshAccessToken()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    const-string v1, "lineApiClient.refreshAccessToken()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    sget-object v1, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->Companion:Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;

    invoke-virtual {v1, p1, v0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;->sendMessageError(Ljava/lang/String;Lcom/linecorp/linesdk/LineApiResponse;)V

    return-void

    .line 107
    :cond_0
    new-instance v1, Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;

    .line 108
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linecorp/linesdk/LineAccessToken;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/LineAccessToken;->getTokenString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "lineApiResponse.responseData.tokenString"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineAccessToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineAccessToken;->getExpiresInMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v1

    .line 107
    invoke-direct/range {v2 .. v8}, Lcom/linecorp/linesdk/unitywrapper/model/AccessTokenForUnity;-><init>(Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 112
    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    .line 114
    iget-object v2, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gson.toJson(accessToken)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->sendMessageOk()V

    return-void

    :cond_1
    const-string p1, "lineApiClient"

    .line 101
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setupSdk(Ljava/lang/String;)V
    .locals 3

    const-string v0, "channelId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string v1, "LineSdkWrapper"

    const-string v2, "setupSdk"

    invoke-virtual {v0, v1, v2}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->channelId:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 28
    new-instance v1, Lcom/linecorp/linesdk/api/LineApiClientBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/linecorp/linesdk/api/LineApiClientBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->build()Lcom/linecorp/linesdk/api/LineApiClient;

    move-result-object p1

    const-string v0, "LineApiClientBuilder(currentActivity.applicationContext, channelId).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    return-void
.end method

.method public final verifyAccessToken(Ljava/lang/String;)V
    .locals 5

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string v1, "LineSdkWrapper"

    const-string v2, "verifyAccessToken"

    invoke-virtual {v0, v1, v2}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/linecorp/linesdk/api/LineApiClient;->verifyToken()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    const-string v2, "lineApiClient.verifyToken()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    sget-object v1, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->Companion:Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;

    invoke-virtual {v1, p1, v0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;->sendMessageError(Ljava/lang/String;Lcom/linecorp/linesdk/LineApiResponse;)V

    return-void

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "lineApiResponse.responseData"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/linecorp/linesdk/LineCredential;

    .line 127
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineCredential;->getScopes()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/linecorp/linesdk/Scope;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 129
    new-instance v3, Lcom/linecorp/linesdk/unitywrapper/model/VerifyAccessTokenResult;

    .line 130
    iget-object v4, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->channelId:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v1, "scopeString"

    .line 131
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineCredential;->getAccessToken()Lcom/linecorp/linesdk/LineAccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineAccessToken;->getExpiresInMillis()J

    move-result-wide v0

    .line 129
    invoke-direct {v3, v4, v2, v0, v1}, Lcom/linecorp/linesdk/unitywrapper/model/VerifyAccessTokenResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 135
    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    .line 137
    iget-object v1, p0, Lcom/linecorp/linesdk/unitywrapper/LineSdkWrapper;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gson.toJson(verifyAccessTokenResult)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->sendMessageOk()V

    return-void

    :cond_1
    const-string p1, "channelId"

    .line 130
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "lineApiClient"

    .line 120
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
