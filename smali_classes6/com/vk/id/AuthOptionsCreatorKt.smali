.class public final Lcom/vk/id/AuthOptionsCreatorKt;
.super Ljava/lang/Object;
.source "AuthOptionsCreator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthOptionsCreator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthOptionsCreator.kt\ncom/vk/id/AuthOptionsCreatorKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,102:1\n434#2:103\n507#2,5:104\n*S KotlinDebug\n*F\n+ 1 AuthOptionsCreator.kt\ncom/vk/id/AuthOptionsCreatorKt\n*L\n100#1:103\n100#1:104,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002\u001a\u0012\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0002\u001a\u0014\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0002\u001a\u000c\u0010\u000b\u001a\u00020\u0005*\u00020\u0002H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "addOAuthParams",
        "",
        "Lorg/json/JSONObject;",
        "scopes",
        "",
        "",
        "createStatsInfo",
        "statParams",
        "Lcom/vk/id/StatParams;",
        "addStatParams",
        "statsInfo",
        "toBase64",
        "vkid_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$addOAuthParams(Lorg/json/JSONObject;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/vk/id/AuthOptionsCreatorKt;->addOAuthParams(Lorg/json/JSONObject;Ljava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$addStatParams(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/vk/id/AuthOptionsCreatorKt;->addStatParams(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final synthetic access$createStatsInfo(Lcom/vk/id/StatParams;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/vk/id/AuthOptionsCreatorKt;->createStatsInfo(Lcom/vk/id/StatParams;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toBase64(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/vk/id/AuthOptionsCreatorKt;->toBase64(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final addOAuthParams(Lorg/json/JSONObject;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const-string p1, " "

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "scope"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static final addStatParams(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "stats_info"

    .line 95
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static final createStatsInfo(Lcom/vk/id/StatParams;)Lorg/json/JSONObject;
    .locals 3

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "flow_source"

    .line 89
    invoke-virtual {p0}, Lcom/vk/id/StatParams;->getFlowSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "session_id"

    .line 90
    invoke-virtual {p0}, Lcom/vk/id/StatParams;->getSessionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method private static final toBase64(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7

    .line 99
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v2, "encodeToString(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    check-cast p0, Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/Appendable;

    .line 104
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    .line 105
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    if-eqz v6, :cond_1

    .line 106
    invoke-interface {v2, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    :cond_2
    check-cast v2, Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
