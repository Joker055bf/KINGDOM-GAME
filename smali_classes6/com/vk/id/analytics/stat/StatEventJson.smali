.class public final Lcom/vk/id/analytics/stat/StatEventJson;
.super Ljava/lang/Object;
.source "StatEventJson.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/analytics/stat/StatEventJson$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatEventJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatEventJson.kt\ncom/vk/id/analytics/stat/StatEventJson\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n1863#2,2:170\n*S KotlinDebug\n*F\n+ 1 StatEventJson.kt\ncom/vk/id/analytics/stat/StatEventJson\n*L\n146#1:170,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ0\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002J2\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00032\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00172\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0019H\u0002J2\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00032\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00172\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0019H\u0002J\u001a\u0010\u001b\u001a\u00020\u001c*\u00020\r2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0017H\u0002J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vk/id/analytics/stat/StatEventJson;",
        "",
        "name",
        "",
        "params",
        "",
        "Lcom/vk/id/analytics/VKIDAnalytics$EventParam;",
        "eventId",
        "",
        "prevEventId",
        "<init>",
        "(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;II)V",
        "json",
        "Lorg/json/JSONObject;",
        "getJson",
        "()Lorg/json/JSONObject;",
        "actionJson",
        "typeAction",
        "screen",
        "data",
        "eventJson",
        "eventName",
        "eventParams",
        "",
        "topLevelParams",
        "",
        "techEventJson",
        "putFields",
        "",
        "actionForEvent",
        "Companion",
        "analytics_release"
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
.field private static final Companion:Lcom/vk/id/analytics/stat/StatEventJson$Companion;

.field private static final specialParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final techEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final json:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/vk/id/analytics/stat/StatEventJson$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/analytics/stat/StatEventJson$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/analytics/stat/StatEventJson;->Companion:Lcom/vk/id/analytics/stat/StatEventJson$Companion;

    const-string v2, "screen_current"

    const-string v3, "screen_to"

    const-string v4, "error"

    const-string v5, "wrapper_sdk_type"

    const-string v6, "app_id"

    const-string v7, "external_device_id"

    .line 25
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vk/id/analytics/stat/StatEventJson;->specialParams:Ljava/util/List;

    const-string v0, "vkid_sdk_init"

    .line 27
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vk/id/analytics/stat/StatEventJson;->techEvents:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;II)V
    .locals 11

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 33
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 34
    array-length v2, p2

    const-string v3, "nowhere"

    const/4 v4, 0x0

    move-object v7, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v3, p2, v4

    .line 35
    invoke-virtual {v3}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "screen"

    .line 36
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v8, ""

    if-eqz v6, :cond_1

    .line 37
    invoke-virtual {v3}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;->getStrValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v8, v3

    :goto_1
    move-object v7, v8

    goto :goto_3

    .line 40
    :cond_1
    sget-object v6, Lcom/vk/id/analytics/stat/StatEventJson;->specialParams:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 41
    invoke-virtual {v3}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;->getStrValue()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;->getIntValue()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v8, v3

    goto :goto_2

    :cond_3
    move-object v8, v6

    :goto_2
    invoke-interface {v1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 45
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49
    :cond_5
    invoke-direct {p0, p1}, Lcom/vk/id/analytics/stat/StatEventJson;->actionForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50
    sget-object p2, Lcom/vk/id/analytics/stat/StatEventJson;->techEvents:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 51
    invoke-direct {p0, p1, v0, v1}, Lcom/vk/id/analytics/stat/StatEventJson;->techEventJson(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_4

    .line 53
    :cond_6
    invoke-direct {p0, p1, v0, v1}, Lcom/vk/id/analytics/stat/StatEventJson;->eventJson(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_4
    move-object v8, p1

    move-object v5, p0

    move v9, p3

    move v10, p4

    .line 55
    invoke-direct/range {v5 .. v10}, Lcom/vk/id/analytics/stat/StatEventJson;->actionJson(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/analytics/stat/StatEventJson;->json:Lorg/json/JSONObject;

    return-void
.end method

.method private final actionForEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 163
    sget-object v0, Lcom/vk/id/analytics/stat/StatEventJson;->techEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "type_sak_sessions_event_item"

    goto :goto_0

    :cond_0
    const-string p1, "type_registration_item"

    :goto_0
    return-object p1
.end method

.method private final actionJson(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;II)Lorg/json/JSONObject;
    .locals 2

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 103
    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p4, "prev_event_id"

    .line 104
    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p4, "prev_nav_id"

    const/4 p5, 0x0

    .line 105
    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p4, "screen"

    .line 106
    invoke-virtual {v0, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p4, "timestamp"

    invoke-virtual {v0, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "type"

    const-string p4, "type_action"

    .line 108
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    .line 112
    invoke-virtual {p5, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {p5, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private final eventJson(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vk/id/analytics/VKIDAnalytics$EventParam;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "event_type"

    .line 123
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-direct {p0, v0, p2}, Lcom/vk/id/analytics/stat/StatEventJson;->putFields(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 125
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final putFields(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/vk/id/analytics/VKIDAnalytics$EventParam;",
            ">;)V"
        }
    .end annotation

    .line 145
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 146
    check-cast p2, Ljava/lang/Iterable;

    .line 170
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    .line 148
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "name"

    .line 149
    invoke-virtual {v1}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {v1}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;->getStrValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v1}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;->getStrValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 152
    :cond_0
    invoke-virtual {v1}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;->getIntValue()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {v1}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;->getIntValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 158
    :cond_2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p2, "fields"

    .line 143
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private final techEventJson(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vk/id/analytics/VKIDAnalytics$EventParam;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "step"

    .line 135
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    invoke-direct {p0, v0, p2}, Lcom/vk/id/analytics/stat/StatEventJson;->putFields(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 137
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getJson()Lorg/json/JSONObject;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/vk/id/analytics/stat/StatEventJson;->json:Lorg/json/JSONObject;

    return-object v0
.end method
