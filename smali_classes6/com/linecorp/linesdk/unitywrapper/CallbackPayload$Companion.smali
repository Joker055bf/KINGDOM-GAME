.class public final Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;
.super Ljava/lang/Object;
.source "CallbackPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\t\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u000cH\u0002J\"\u0010\r\u001a\u00020\u000e\"\u0004\u0008\u0000\u0010\n2\u0006\u0010\u000f\u001a\u00020\u00042\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u000cJ\u001e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;",
        "",
        "()V",
        "KEY_LINE_SDK",
        "",
        "NAME_API_ERROR",
        "NAME_API_OK",
        "gson",
        "Lcom/google/gson/Gson;",
        "getErrorJsonString",
        "T",
        "lineApiResponse",
        "Lcom/linecorp/linesdk/LineApiResponse;",
        "sendMessageError",
        "",
        "identifier",
        "loginResult",
        "Lcom/linecorp/linesdk/auth/LineLoginResult;",
        "errorString",
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;-><init>()V

    return-void
.end method

.method private final getErrorJsonString(Lcom/linecorp/linesdk/LineApiResponse;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/model/ErrorForUnity;

    .line 62
    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponseCode;->ordinal()I

    move-result v1

    .line 63
    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiError;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "error"

    .line 61
    :cond_0
    invoke-direct {v0, v1, p1}, Lcom/linecorp/linesdk/unitywrapper/model/ErrorForUnity;-><init>(ILjava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->access$getGson$cp()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gson.toJson(error)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final sendMessageError(Ljava/lang/String;Lcom/linecorp/linesdk/LineApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lineApiResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p2}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;->getErrorJsonString(Lcom/linecorp/linesdk/LineApiResponse;)Ljava/lang/String;

    move-result-object p2

    .line 48
    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    invoke-direct {v0, p1, p2}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->sendMessageError()V

    return-void
.end method

.method public final sendMessageError(Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineLoginResult;Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/model/ErrorForUnity;

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineApiResponseCode;->ordinal()I

    move-result p2

    invoke-direct {v0, p2, p3}, Lcom/linecorp/linesdk/unitywrapper/model/ErrorForUnity;-><init>(ILjava/lang/String;)V

    .line 57
    new-instance p2, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    invoke-static {}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->access$getGson$cp()Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "gson.toJson(errorForUnity)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, p3}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->sendMessageError()V

    return-void
.end method
