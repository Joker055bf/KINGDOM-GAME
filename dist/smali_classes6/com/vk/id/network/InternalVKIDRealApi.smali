.class public final Lcom/vk/id/network/InternalVKIDRealApi;
.super Ljava/lang/Object;
.source "InternalVKIDRealApi.kt"

# interfaces
.implements Lcom/vk/id/network/InternalVKIDApiContract;


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/network/InternalVKIDRealApi$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J>\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH\u0016J\u001e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\nH\u0016J.\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH\u0016J&\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0016J6\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\nH\u0016J&\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0016J6\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\nH\u0016J>\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/vk/id/network/InternalVKIDRealApi;",
        "Lcom/vk/id/network/InternalVKIDApiContract;",
        "client",
        "Lcom/vk/id/network/http/HttpClient;",
        "<init>",
        "(Lcom/vk/id/network/http/HttpClient;)V",
        "getToken",
        "Lcom/vk/id/network/InternalVKIDCall;",
        "Lcom/vk/id/network/http/HttpResponse;",
        "code",
        "",
        "codeVerifier",
        "clientId",
        "deviceId",
        "redirectUri",
        "state",
        "getSilentAuthProviders",
        "clientSecret",
        "refreshToken",
        "getUser",
        "accessToken",
        "exchangeToken",
        "v1Token",
        "codeChallenge",
        "logout",
        "sendStatEventsAnonymously",
        "sakVersion",
        "events",
        "Lorg/json/JSONArray;",
        "externalDeviceId",
        "sendStatEvents",
        "Companion",
        "network_release"
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
.field public static final Companion:Lcom/vk/id/network/InternalVKIDRealApi$Companion;

.field private static final FIELD_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final FIELD_CLIENT_ID:Ljava/lang/String; = "client_id"

.field private static final FIELD_CLIENT_SECRET:Ljava/lang/String; = "client_secret"

.field private static final FIELD_CODE:Ljava/lang/String; = "code"

.field private static final FIELD_CODE_CHALLENGE:Ljava/lang/String; = "code_challenge"

.field private static final FIELD_CODE_CHALLENGE_METHOD:Ljava/lang/String; = "code_challenge_method"

.field private static final FIELD_CODE_VERIFIER:Ljava/lang/String; = "code_verifier"

.field private static final FIELD_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final FIELD_GRANT_TYPE:Ljava/lang/String; = "grant_type"

.field private static final FIELD_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field private static final FIELD_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field private static final FIELD_RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field private static final FIELD_STATE:Ljava/lang/String; = "state"

.field private static final HOST_API:Ljava/lang/String; = "https://api.vk.ru"

.field private static final HOST_VK_ID:Ljava/lang/String; = "https://id.vk.ru"

.field private static final PATH_AUTH:Ljava/lang/String; = "oauth2/auth"

.field private static final PATH_LOGOUT:Ljava/lang/String; = "oauth2/logout"

.field private static final PATH_SILENT_AUTH_PROVIDERS:Ljava/lang/String; = "method/auth.getSilentAuthProviders"

.field private static final PATH_USER_INFO:Ljava/lang/String; = "oauth2/user_info"

.field private static final VALUE_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final VALUE_AUTHORIZATION_CODE:Ljava/lang/String; = "authorization_code"

.field private static final VALUE_CODE:Ljava/lang/String; = "code"

.field private static final VALUE_CODE_CHALLENGE_METHOD:Ljava/lang/String; = "s256"

.field private static final VALUE_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"


# instance fields
.field private final client:Lcom/vk/id/network/http/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/network/InternalVKIDRealApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/network/InternalVKIDRealApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/network/InternalVKIDRealApi;->Companion:Lcom/vk/id/network/InternalVKIDRealApi$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/network/http/HttpClient;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vk/id/network/InternalVKIDRealApi;->client:Lcom/vk/id/network/http/HttpClient;

    return-void
.end method


# virtual methods
.method public exchangeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
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
            "Lcom/vk/id/network/http/HttpResponse;",
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

    const-string v1, "codeChallenge"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v1, Lcom/vk/id/network/http/FormBody$Builder;

    invoke-direct {v1}, Lcom/vk/id/network/http/FormBody$Builder;-><init>()V

    const-string v2, "response_type"

    const-string v3, "code"

    .line 94
    invoke-virtual {v1, v2, v3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object v1

    const-string v2, "grant_type"

    const-string v3, "access_token"

    .line 95
    invoke-virtual {v1, v2, v3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v3, p1}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string v1, "client_id"

    .line 97
    invoke-virtual {p1, v1, p2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "device_id"

    .line 98
    invoke-virtual {p1, p2, p3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v0, p4}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "code_challenge"

    .line 100
    invoke-virtual {p1, p2, p5}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "code_challenge_method"

    const-string p3, "s256"

    .line 101
    invoke-virtual {p1, p2, p3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object v3

    .line 104
    iget-object v0, p0, Lcom/vk/id/network/InternalVKIDRealApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string v1, "https://id.vk.ru"

    const-string v2, "oauth2/auth"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest$default(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;ILjava/lang/Object;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public getSilentAuthProviders(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSecret"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/vk/id/network/http/FormBody$Builder;

    invoke-direct {v0}, Lcom/vk/id/network/http/FormBody$Builder;-><init>()V

    const-string v1, "v"

    const-string v2, "5.220"

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object v0

    const-string v1, "client_id"

    .line 44
    invoke-virtual {v0, v1, p1}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string v0, "client_secret"

    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object v3

    .line 48
    iget-object v0, p0, Lcom/vk/id/network/InternalVKIDRealApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string v1, "https://api.vk.ru"

    const-string v2, "method/auth.getSilentAuthProviders"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest$default(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;ILjava/lang/Object;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 7
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
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "codeVerifier"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clientId"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceId"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "redirectUri"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "state"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v2, Lcom/vk/id/network/http/FormBody$Builder;

    invoke-direct {v2}, Lcom/vk/id/network/http/FormBody$Builder;-><init>()V

    const-string v3, "grant_type"

    const-string v4, "authorization_code"

    .line 26
    invoke-virtual {v2, v3, v4}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object v2

    .line 27
    invoke-virtual {v2, v0, p1}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string v0, "code_verifier"

    .line 28
    invoke-virtual {p1, v0, p2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "client_id"

    .line 29
    invoke-virtual {p1, p2, p3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "device_id"

    .line 30
    invoke-virtual {p1, p2, p4}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "redirect_uri"

    .line 31
    invoke-virtual {p1, p2, p5}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v1, p6}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object v3

    .line 35
    iget-object v0, p0, Lcom/vk/id/network/InternalVKIDRealApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string v1, "https://id.vk.ru"

    const-string v2, "oauth2/auth"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest$default(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;ILjava/lang/Object;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public getUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/vk/id/network/http/FormBody$Builder;

    invoke-direct {v0}, Lcom/vk/id/network/http/FormBody$Builder;-><init>()V

    const-string v1, "access_token"

    .line 74
    invoke-virtual {v0, v1, p1}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string v0, "device_id"

    .line 75
    invoke-virtual {p1, v0, p3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object p1

    .line 78
    iget-object p3, p0, Lcom/vk/id/network/InternalVKIDRealApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string v0, "client_id"

    .line 82
    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "https://id.vk.ru"

    const-string v1, "oauth2/user_info"

    .line 78
    invoke-static {p3, v0, v1, p1, p2}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public logout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/vk/id/network/http/FormBody$Builder;

    invoke-direct {v0}, Lcom/vk/id/network/http/FormBody$Builder;-><init>()V

    const-string v1, "access_token"

    .line 113
    invoke-virtual {v0, v1, p1}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string v0, "client_id"

    .line 114
    invoke-virtual {p1, v0, p2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "device_id"

    .line 115
    invoke-virtual {p1, p2, p3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object v3

    .line 118
    iget-object v0, p0, Lcom/vk/id/network/InternalVKIDRealApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string v1, "https://id.vk.ru"

    const-string v2, "oauth2/logout"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest$default(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;ILjava/lang/Object;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
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

    .line 57
    new-instance v1, Lcom/vk/id/network/http/FormBody$Builder;

    invoke-direct {v1}, Lcom/vk/id/network/http/FormBody$Builder;-><init>()V

    const-string v2, "grant_type"

    const-string v3, "refresh_token"

    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v3, p1}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string v1, "client_id"

    .line 60
    invoke-virtual {p1, v1, p2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "device_id"

    .line 61
    invoke-virtual {p1, p2, p3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1, v0, p4}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object v3

    .line 65
    iget-object v0, p0, Lcom/vk/id/network/InternalVKIDRealApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string v1, "https://id.vk.ru"

    const-string v2, "oauth2/auth"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest$default(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;ILjava/lang/Object;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public sendStatEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSecret"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sakVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "externalDeviceId"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v1, Lcom/vk/id/network/http/FormBody$Builder;

    invoke-direct {v1}, Lcom/vk/id/network/http/FormBody$Builder;-><init>()V

    const-string v2, "access_token"

    .line 153
    invoke-virtual {v1, v2, p1}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string v1, "v"

    const-string v2, "5.220"

    .line 154
    invoke-virtual {p1, v1, v2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string v1, "client_id"

    .line 155
    invoke-virtual {p1, v1, p2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "client_secret"

    .line 156
    invoke-virtual {p1, p2, p3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "sak_version"

    .line 157
    invoke-virtual {p1, p2, p4}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 158
    invoke-virtual {p5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "toString(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object p1

    .line 161
    iget-object p2, p0, Lcom/vk/id/network/InternalVKIDRealApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string p3, "external_device_id"

    .line 165
    invoke-static {p3, p6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p3

    const-string p4, "https://api.vk.ru"

    const-string p5, "method/statEvents.addVKID"

    .line 161
    invoke-static {p2, p4, p5, p1, p3}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public sendStatEventsAnonymously(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSecret"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sakVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "externalDeviceId"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v1, Lcom/vk/id/network/http/FormBody$Builder;

    invoke-direct {v1}, Lcom/vk/id/network/http/FormBody$Builder;-><init>()V

    const-string v2, "v"

    const-string v3, "5.220"

    .line 129
    invoke-virtual {v1, v2, v3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object v1

    const-string v2, "client_id"

    .line 130
    invoke-virtual {v1, v2, p1}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string v1, "client_secret"

    .line 131
    invoke-virtual {p1, v1, p2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "sak_version"

    .line 132
    invoke-virtual {p1, p2, p3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "toString(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lcom/vk/id/network/InternalVKIDRealApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string p3, "external_device_id"

    .line 140
    invoke-static {p3, p5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p3

    const-string p4, "https://api.vk.ru"

    const-string p5, "method/statEvents.addVKIDAnonymously"

    .line 136
    invoke-static {p2, p4, p5, p1, p3}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method
