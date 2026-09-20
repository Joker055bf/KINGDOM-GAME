.class public final Lcom/vk/id/internal/analytics/CustomAuthAnalytics;
.super Ljava/lang/Object;
.source "CustomAuthAnalytics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0008J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vk/id/internal/analytics/CustomAuthAnalytics;",
        "",
        "<init>",
        "()V",
        "customAuthStart",
        "Lcom/vk/id/StatParams;",
        "params",
        "Lcom/vk/id/auth/VKIDAuthParams;",
        "customAuthStart$vkid_release",
        "customAuthError",
        "",
        "statParams",
        "customAuthError$vkid_release",
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
.field public static final $stable:I

.field public static final INSTANCE:Lcom/vk/id/internal/analytics/CustomAuthAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/id/internal/analytics/CustomAuthAnalytics;

    invoke-direct {v0}, Lcom/vk/id/internal/analytics/CustomAuthAnalytics;-><init>()V

    sput-object v0, Lcom/vk/id/internal/analytics/CustomAuthAnalytics;->INSTANCE:Lcom/vk/id/internal/analytics/CustomAuthAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final customAuthError$vkid_release(Lcom/vk/id/StatParams;)V
    .locals 16

    const-string v0, "statParams"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    .line 38
    new-instance v9, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v4, "error"

    const-string v5, "sdk_auth_error"

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    aput-object v9, v2, v3

    .line 39
    new-instance v3, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v11, "sdk_type"

    const-string v12, "vkid"

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 40
    new-instance v3, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v6, "unique_session_id"

    invoke-virtual/range {p1 .. p1}, Lcom/vk/id/StatParams;->getSessionId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x2

    aput-object v3, v2, v1

    .line 41
    new-instance v1, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v5, "from_custom_auth"

    const-string v6, "true"

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const-string v1, "sdk_auth_error"

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;->trackEvent(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V

    return-void
.end method

.method public final customAuthStart$vkid_release(Lcom/vk/id/auth/VKIDAuthParams;)Lcom/vk/id/StatParams;
    .locals 17

    const-string v0, "params"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v8, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    const/4 v2, 0x3

    new-array v9, v2, [Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    .line 25
    new-instance v10, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v3, "sdk_type"

    const-string v4, "vkid"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    aput-object v10, v9, v2

    .line 26
    new-instance v10, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v3, "unique_session_id"

    move-object v2, v10

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    aput-object v10, v9, v2

    .line 27
    new-instance v2, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v12, "oauth_service"

    invoke-virtual/range {p1 .. p1}, Lcom/vk/id/auth/VKIDAuthParams;->getOAuth$vkid_release()Lcom/vk/id/OAuth;

    move-result-object v1

    invoke-static {v1}, Lcom/vk/id/internal/analytics/CustomAuthAnalyticsKt;->toAnalyticsParam(Lcom/vk/id/OAuth;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x2

    aput-object v2, v9, v1

    const-string v1, "custom_auth_start"

    .line 23
    invoke-virtual {v8, v1, v9}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;->trackEvent(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V

    .line 29
    new-instance v1, Lcom/vk/id/StatParams;

    const-string v2, "from_custom_auth"

    invoke-direct {v1, v2, v0}, Lcom/vk/id/StatParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
