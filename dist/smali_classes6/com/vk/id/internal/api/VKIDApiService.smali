.class public final Lcom/vk/id/internal/api/VKIDApiService;
.super Ljava/lang/Object;
.source "VKIDApiService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVKIDApiService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKIDApiService.kt\ncom/vk/id/internal/api/VKIDApiService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,175:1\n149#1,3:177\n152#1,2:181\n1#2:176\n1#2:180\n*S KotlinDebug\n*F\n+ 1 VKIDApiService.kt\ncom/vk/id/internal/api/VKIDApiService\n*L\n81#1:177,3\n81#1:181,2\n81#1:180\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J<\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nJ$\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00072\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nJ\"\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u00072\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ,\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nJ4\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00072\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\nJ$\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00072\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nJ=\u0010\u001e\u001a\u0016\u0012\u0004\u0012\u0002H \u0018\u00010\u001fj\n\u0012\u0004\u0012\u0002H \u0018\u0001`!\"\u0004\u0008\u0000\u0010 *\u0004\u0018\u00010\"2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u0002H 0$H\u0082\u0008J\u000c\u0010&\u001a\u00020\u0008*\u00020\'H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/vk/id/internal/api/VKIDApiService;",
        "",
        "api",
        "Lcom/vk/id/network/InternalVKIDApiContract;",
        "<init>",
        "(Lcom/vk/id/network/InternalVKIDApiContract;)V",
        "getToken",
        "Lcom/vk/id/network/InternalVKIDCall;",
        "Lcom/vk/id/internal/auth/VKIDTokenPayload;",
        "code",
        "",
        "codeVerifier",
        "clientId",
        "deviceId",
        "redirectUri",
        "state",
        "getUserInfo",
        "Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;",
        "accessToken",
        "getSilentAuthProviders",
        "",
        "Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;",
        "clientSecret",
        "refreshToken",
        "exchangeToken",
        "Lcom/vk/id/internal/auth/VKIDCodePayload;",
        "v1Token",
        "codeChallenge",
        "logout",
        "",
        "parseList",
        "Ljava/util/ArrayList;",
        "T",
        "Lkotlin/collections/ArrayList;",
        "Lorg/json/JSONArray;",
        "parser",
        "Lkotlin/Function1;",
        "Lorg/json/JSONObject;",
        "parseTokenPayload",
        "Lcom/vk/id/network/http/HttpResponse;",
        "vkid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final api:Lcom/vk/id/network/InternalVKIDApiContract;


# direct methods
.method public static synthetic $r8$lambda$BKILKhhfUoFphztfpMMLiI58_-Q(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDTokenPayload;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/internal/api/VKIDApiService;->refreshToken$lambda$3(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDTokenPayload;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DnwCIIMtHaUETTU2bPyG7WbFwEs(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDTokenPayload;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/internal/api/VKIDApiService;->getToken$lambda$0(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDTokenPayload;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rvwSYXZrLCICcBWnJu2cIg1L1YE(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDCodePayload;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/internal/api/VKIDApiService;->exchangeToken$lambda$4(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDCodePayload;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sLpWSuPpy0saDd3hF0PC1ajTvHw(Lcom/vk/id/network/http/HttpResponse;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/internal/api/VKIDApiService;->logout$lambda$5(Lcom/vk/id/network/http/HttpResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sh5gTWIAgZfbpc_TuzOeOcDRHU8(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/internal/api/VKIDApiService;->getUserInfo$lambda$1(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xHva2jNIFn14bHo3HN8SsDQMftg(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/network/http/HttpResponse;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/internal/api/VKIDApiService;->getSilentAuthProviders$lambda$2(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/network/http/HttpResponse;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/network/InternalVKIDApiContract;)V
    .locals 1

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/vk/id/internal/api/VKIDApiService;->api:Lcom/vk/id/network/InternalVKIDApiContract;

    return-void
.end method

.method private static final exchangeToken$lambda$4(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDCodePayload;
    .locals 5

    const-string v0, "$this$internalVKIDWrapToVKIDCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/vk/id/network/http/HttpResponse;->isSuccessful()Z

    move-result v0

    const-string v1, " "

    const-string v2, "Api error: "

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "error"

    .line 119
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    new-instance p0, Lcom/vk/id/internal/auth/VKIDCodePayload;

    const-string v1, "code"

    .line 123
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "state"

    .line 124
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "optString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "device_id"

    .line 125
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v1, v2, v0}, Lcom/vk/id/internal/auth/VKIDCodePayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 120
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Lcom/vk/id/network/http/HttpResponse;->getCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Lcom/vk/id/network/http/HttpResponse;->getCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final getSilentAuthProviders$lambda$2(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/network/http/HttpResponse;)Ljava/util/List;
    .locals 4

    const-string p0, "$this$internalVKIDWrapToVKIDCall"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "response"

    .line 80
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 81
    sget-object p1, Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;->Companion:Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider$Companion;

    if-eqz p0, :cond_1

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {p1, v3}, Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider$Companion;->parse(Lorg/json/JSONObject;)Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;

    move-result-object v3

    .line 179
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    .line 79
    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 82
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private static final getToken$lambda$0(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDTokenPayload;
    .locals 1

    const-string v0, "$this$internalVKIDWrapToVKIDCall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/vk/id/internal/api/VKIDApiService;->parseTokenPayload(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDTokenPayload;

    move-result-object p0

    return-object p0
.end method

.method private static final getUserInfo$lambda$1(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;
    .locals 7

    const-string v0, "$this$internalVKIDWrapToVKIDCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    .line 54
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "user"

    .line 55
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 56
    new-instance v6, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;

    const-string v0, "first_name"

    .line 57
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "optString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "last_name"

    .line 58
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "phone"

    .line 59
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "avatar"

    .line 60
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "email"

    .line 61
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v6

    .line 56
    invoke-direct/range {v0 .. v5}, Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 65
    :cond_0
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "invalid_token"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/vk/id/VKIDInvalidTokenException;

    invoke-direct {p0}, Lcom/vk/id/VKIDInvalidTokenException;-><init>()V

    throw p0

    .line 66
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private static final logout$lambda$5(Lcom/vk/id/network/http/HttpResponse;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$internalVKIDWrapToVKIDCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    .line 142
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "invalid_token"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/vk/id/VKIDInvalidTokenException;

    invoke-direct {p0}, Lcom/vk/id/VKIDInvalidTokenException;-><init>()V

    throw p0

    .line 144
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 146
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final parseList(Lorg/json/JSONArray;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/json/JSONObject;",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private final parseTokenPayload(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDTokenPayload;
    .locals 11

    .line 157
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->isSuccessful()Z

    move-result v0

    const-string v1, " "

    const-string v2, "Api error: "

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "error"

    .line 161
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p1, "access_token"

    .line 165
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "getString(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "refresh_token"

    .line 166
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "id_token"

    .line 167
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "optString(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "user_id"

    .line 168
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v5, "expires_in"

    .line 169
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v9, "state"

    .line 170
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scope"

    .line 171
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance p1, Lcom/vk/id/internal/auth/VKIDTokenPayload;

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/vk/id/internal/auth/VKIDTokenPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 162
    :cond_0
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->getCode()I

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->getCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final refreshToken$lambda$3(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDTokenPayload;
    .locals 1

    const-string v0, "$this$internalVKIDWrapToVKIDCall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/vk/id/internal/api/VKIDApiService;->parseTokenPayload(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDTokenPayload;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final exchangeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/internal/auth/VKIDCodePayload;",
            ">;"
        }
    .end annotation

    const-string v0, "v1Token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeChallenge"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/vk/id/internal/api/VKIDApiService;->api:Lcom/vk/id/network/InternalVKIDApiContract;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/vk/id/network/InternalVKIDApiContract;->exchangeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    new-instance p2, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda0;-><init>()V

    .line 114
    invoke-static {p1, p2}, Lcom/vk/id/network/InternalVKIDCallKt;->internalVKIDWrapToVKIDCall(Lcom/vk/id/network/InternalVKIDCall;Lkotlin/jvm/functions/Function1;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public final getSilentAuthProviders(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Ljava/util/List<",
            "Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;",
            ">;>;"
        }
    .end annotation

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSecret"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/vk/id/internal/api/VKIDApiService;->api:Lcom/vk/id/network/InternalVKIDApiContract;

    invoke-interface {v0, p1, p2}, Lcom/vk/id/network/InternalVKIDApiContract;->getSilentAuthProviders(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    .line 78
    new-instance p2, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda4;-><init>(Lcom/vk/id/internal/api/VKIDApiService;)V

    invoke-static {p1, p2}, Lcom/vk/id/network/InternalVKIDCallKt;->internalVKIDWrapToVKIDCall(Lcom/vk/id/network/InternalVKIDCall;Lkotlin/jvm/functions/Function1;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public final getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/internal/auth/VKIDTokenPayload;",
            ">;"
        }
    .end annotation

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeVerifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirectUri"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/vk/id/internal/api/VKIDApiService;->api:Lcom/vk/id/network/InternalVKIDApiContract;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/vk/id/network/InternalVKIDApiContract;->getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    .line 39
    new-instance p2, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda1;-><init>(Lcom/vk/id/internal/api/VKIDApiService;)V

    invoke-static {p1, p2}, Lcom/vk/id/network/InternalVKIDCallKt;->internalVKIDWrapToVKIDCall(Lcom/vk/id/network/InternalVKIDCall;Lkotlin/jvm/functions/Function1;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public final getUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/internal/api/dto/VKIDUserInfoPayload;",
            ">;"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/vk/id/internal/api/VKIDApiService;->api:Lcom/vk/id/network/InternalVKIDApiContract;

    invoke-interface {v0, p1, p2, p3}, Lcom/vk/id/network/InternalVKIDApiContract;->getUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    new-instance p2, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda3;-><init>()V

    .line 51
    invoke-static {p1, p2}, Lcom/vk/id/network/InternalVKIDCallKt;->internalVKIDWrapToVKIDCall(Lcom/vk/id/network/InternalVKIDCall;Lkotlin/jvm/functions/Function1;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public final logout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/vk/id/internal/api/VKIDApiService;->api:Lcom/vk/id/network/InternalVKIDApiContract;

    invoke-interface {v0, p1, p2, p3}, Lcom/vk/id/network/InternalVKIDApiContract;->logout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    new-instance p2, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda2;-><init>()V

    .line 139
    invoke-static {p1, p2}, Lcom/vk/id/network/InternalVKIDCallKt;->internalVKIDWrapToVKIDCall(Lcom/vk/id/network/InternalVKIDCall;Lkotlin/jvm/functions/Function1;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public final refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/internal/auth/VKIDTokenPayload;",
            ">;"
        }
    .end annotation

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/vk/id/internal/api/VKIDApiService;->api:Lcom/vk/id/network/InternalVKIDApiContract;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vk/id/network/InternalVKIDApiContract;->refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    .line 97
    new-instance p2, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda5;-><init>(Lcom/vk/id/internal/api/VKIDApiService;)V

    invoke-static {p1, p2}, Lcom/vk/id/network/InternalVKIDCallKt;->internalVKIDWrapToVKIDCall(Lcom/vk/id/network/InternalVKIDCall;Lkotlin/jvm/functions/Function1;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method
