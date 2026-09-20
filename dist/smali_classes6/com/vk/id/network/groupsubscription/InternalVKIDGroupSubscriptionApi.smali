.class public final Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;
.super Ljava/lang/Object;
.source "InternalVKIDGroupSubscriptionApi.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInternalVKIDGroupSubscriptionApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InternalVKIDGroupSubscriptionApi.kt\ncom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1#2:92\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nJ\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nJ\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nJ$\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010J\u001c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nJ\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;",
        "",
        "client",
        "Lcom/vk/id/network/http/HttpClient;",
        "<init>",
        "(Lcom/vk/id/network/http/HttpClient;)V",
        "getShouldShowSubscription",
        "Lcom/vk/id/network/InternalVKIDCall;",
        "Lcom/vk/id/network/http/HttpResponse;",
        "accessToken",
        "",
        "getProfileShortInfo",
        "getGroup",
        "groupId",
        "getMembers",
        "justFriends",
        "",
        "subscribeToGroup",
        "bodyBuilder",
        "Lcom/vk/id/network/http/FormBody$Builder;",
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
.field private static final Companion:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi$Companion;

.field private static final FIELD_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final FIELD_GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final FIELD_SOURCE:Ljava/lang/String; = "source"

.field private static final HOST_VK_API:Ljava/lang/String; = "https://api.vk.ru"

.field private static final HOST_VK_ID:Ljava/lang/String; = "https://id.vk.ru"

.field private static final PATH_ACCOUNT_PROFILE_SHORT_INFO:Ljava/lang/String; = "method/account.getProfileShortInfo"

.field private static final PATH_GROUPS_GET_BY_ID:Ljava/lang/String; = "method/groups.getById"

.field private static final PATH_GROUPS_GET_MEMBERS:Ljava/lang/String; = "method/groups.getMembers"

.field private static final PATH_GROUPS_JOIN:Ljava/lang/String; = "method/groups.join"

.field private static final PATH_SHOULD_SHOW_SUBSCRIPTION:Ljava/lang/String; = "vkid_sdk_is_show_subscription"


# instance fields
.field private final client:Lcom/vk/id/network/http/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->Companion:Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/network/http/HttpClient;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->client:Lcom/vk/id/network/http/HttpClient;

    return-void
.end method

.method private final bodyBuilder(Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;
    .locals 3

    .line 73
    new-instance v0, Lcom/vk/id/network/http/FormBody$Builder;

    invoke-direct {v0}, Lcom/vk/id/network/http/FormBody$Builder;-><init>()V

    const-string v1, "v"

    const-string v2, "5.220"

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object v0

    const-string v1, "access_token"

    .line 75
    invoke-virtual {v0, v1, p1}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 8
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

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string v2, "https://api.vk.ru"

    const-string v3, "method/groups.getById"

    .line 39
    invoke-direct {p0, p1}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->bodyBuilder(Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string v0, "group_ids"

    .line 40
    invoke-virtual {p1, v0, p2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "fields"

    const-string v0, "description,verified,is_member"

    .line 41
    invoke-virtual {p1, p2, v0}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 36
    invoke-static/range {v1 .. v7}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest$default(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;ILjava/lang/Object;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public final getMembers(Ljava/lang/String;Ljava/lang/String;Z)Lcom/vk/id/network/InternalVKIDCall;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string v2, "https://api.vk.ru"

    const-string v3, "method/groups.getMembers"

    .line 52
    invoke-direct {p0, p1}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->bodyBuilder(Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string v0, "group_id"

    .line 53
    invoke-virtual {p1, v0, p2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "sort"

    const-string v0, "id_asc"

    .line 54
    invoke-virtual {p1, p2, v0}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "count"

    const-string v0, "3"

    .line 55
    invoke-virtual {p1, p2, v0}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "fields"

    const-string v0, "photo_200"

    .line 56
    invoke-virtual {p1, p2, v0}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    const-string p2, "filter"

    const-string p3, "friends"

    .line 57
    invoke-virtual {p1, p2, p3}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 58
    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 49
    invoke-static/range {v1 .. v7}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest$default(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;ILjava/lang/Object;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public final getProfileShortInfo(Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string v2, "https://api.vk.ru"

    const-string v3, "method/account.getProfileShortInfo"

    .line 30
    invoke-direct {p0, p1}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->bodyBuilder(Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 27
    invoke-static/range {v1 .. v7}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest$default(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;ILjava/lang/Object;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public final getShouldShowSubscription(Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string v2, "https://id.vk.ru"

    const-string v3, "vkid_sdk_is_show_subscription"

    .line 22
    invoke-direct {p0, p1}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->bodyBuilder(Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 19
    invoke-static/range {v1 .. v7}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest$default(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;ILjava/lang/Object;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeToGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 8
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

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->client:Lcom/vk/id/network/http/HttpClient;

    const-string v2, "https://api.vk.ru"

    const-string v3, "method/groups.join"

    .line 67
    invoke-direct {p0, p1}, Lcom/vk/id/network/groupsubscription/InternalVKIDGroupSubscriptionApi;->bodyBuilder(Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string v0, "group_id"

    .line 68
    invoke-virtual {p1, v0, p2}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    const-string p2, "source"

    const-string v0, "vkid_sdk"

    .line 69
    invoke-virtual {p1, p2, v0}, Lcom/vk/id/network/http/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/FormBody$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/vk/id/network/http/FormBody$Builder;->build()Lcom/vk/id/network/http/FormBody;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 64
    invoke-static/range {v1 .. v7}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest$default(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;ILjava/lang/Object;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method
