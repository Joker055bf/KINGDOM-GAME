.class public final Lcom/chartboost/sdk/impl/z3;
.super Lcom/chartboost/sdk/impl/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/z3$c;,
        Lcom/chartboost/sdk/impl/z3$a;,
        Lcom/chartboost/sdk/impl/z3$b;,
        Lcom/chartboost/sdk/impl/z3$d;,
        Lcom/chartboost/sdk/impl/z3$e;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0004\u0007\u0015\u0013\u001eB\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J,\u0010\u0007\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u00082\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0007\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u0016\u0010\u0013\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000eH\u0002J\u0016\u0010\u0015\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000eH\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010\u0007\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J,\u0010\u0007\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000e2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/z3;",
        "Lcom/chartboost/sdk/impl/r;",
        "Lcom/chartboost/sdk/impl/h3;",
        "adType",
        "Lorg/json/JSONObject;",
        "response",
        "Lcom/chartboost/sdk/impl/k;",
        "a",
        "Lcom/chartboost/sdk/impl/z3$a;",
        "bid",
        "",
        "",
        "parameters",
        "",
        "",
        "Lcom/chartboost/sdk/impl/k0;",
        "assetsList",
        "Lcom/chartboost/sdk/impl/z3$d;",
        "seatbidList",
        "c",
        "bidList",
        "b",
        "Lcom/chartboost/sdk/impl/z3$c;",
        "template",
        "ext",
        "Lcom/chartboost/sdk/impl/z3$b;",
        "seatbid",
        "assets",
        "<init>",
        "()V",
        "d",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/chartboost/sdk/impl/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chartboost/sdk/impl/k0;",
            ">;)",
            "Lcom/chartboost/sdk/impl/k0;"
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/impl/k0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/chartboost/sdk/impl/k0;

    const-string v0, ""

    invoke-direct {p1, v0, v0, v0}, Lcom/chartboost/sdk/impl/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/chartboost/sdk/impl/h3;Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/k;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "adType"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 1
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/z3;->b(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/z3$c;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/z3$c;->b()Ljava/util/Map;

    move-result-object v3

    move-object v10, v3

    .line 3
    new-instance v4, Ljava/util/LinkedHashMap;

    move-object/from16 v21, v4

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/z3$c;->d()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/z3;->c(Ljava/util/List;)Lcom/chartboost/sdk/impl/z3$d;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/z3$d;->a()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/z3;->b(Ljava/util/List;)Lcom/chartboost/sdk/impl/z3$a;

    move-result-object v8

    .line 6
    invoke-virtual {v8}, Lcom/chartboost/sdk/impl/z3$a;->b()Lcom/chartboost/sdk/impl/z3$b;

    move-result-object v13

    .line 7
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/z3$c;->a()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/z3;->a(Ljava/util/List;)Lcom/chartboost/sdk/impl/k0;

    move-result-object v5

    move-object/from16 v20, v5

    const-string v6, "body"

    .line 8
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v13}, Lcom/chartboost/sdk/impl/z3$b;->g()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 10
    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 11
    new-instance v3, Ljava/util/LinkedHashMap;

    move-object/from16 v22, v3

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    invoke-virtual {v13}, Lcom/chartboost/sdk/impl/z3$b;->d()Ljava/util/List;

    move-result-object v5

    const-string v6, "imptrackers"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, v8, v4, v1}, Lcom/chartboost/sdk/impl/z3;->a(Lcom/chartboost/sdk/impl/z3$a;Ljava/util/Map;Lcom/chartboost/sdk/impl/h3;)V

    .line 14
    new-instance v1, Lcom/chartboost/sdk/impl/k;

    move-object v3, v1

    .line 16
    invoke-virtual {v13}, Lcom/chartboost/sdk/impl/z3$b;->a()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/z3$c;->c()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v13}, Lcom/chartboost/sdk/impl/z3$b;->b()Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-virtual {v13}, Lcom/chartboost/sdk/impl/z3$b;->c()Ljava/lang/String;

    move-result-object v9

    .line 34
    invoke-virtual {v8}, Lcom/chartboost/sdk/impl/z3$a;->a()Ljava/lang/String;

    move-result-object v23

    .line 35
    invoke-virtual {v13}, Lcom/chartboost/sdk/impl/z3$b;->e()Ljava/lang/String;

    move-result-object v24

    const-string v4, ""

    const-string v8, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const/16 v16, 0x0

    const-string v17, ""

    const-string v18, "dummy_template"

    const/16 v19, 0x0

    .line 36
    invoke-direct/range {v3 .. v24}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/g0;Lcom/chartboost/sdk/impl/k0;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 37
    :cond_0
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Missing response"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/z3$b;)Lcom/chartboost/sdk/impl/z3$a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 159
    new-instance v9, Lcom/chartboost/sdk/impl/z3$a;

    const-string v0, "id"

    .line 160
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "bid.getString(\"id\")"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impid"

    .line 161
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "bid.getString(\"impid\")"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    .line 162
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v0, "burl"

    .line 163
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "bid.optString(\"burl\")"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crid"

    .line 164
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "bid.optString(\"crid\")"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adm"

    .line 165
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "bid.optString(\"adm\")"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v9

    move-object v8, p2

    .line 166
    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/impl/z3$a;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/z3$b;)V

    return-object v9
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/z3$b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 56
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "imptrackers"

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v2;->iterator(Lorg/json/JSONArray;)Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    new-instance v8, Lcom/chartboost/sdk/impl/z3$b;

    const-string v0, "crtype"

    .line 151
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "ext.optString(\"crtype\")"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adId"

    .line 152
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ext.optString(\"adId\")"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cgn"

    .line 153
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ext.optString(\"cgn\")"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "template"

    .line 154
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ext.getString(\"template\")"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "videoUrl"

    .line 155
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "ext.optString(\"videoUrl\")"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    .line 157
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "ext.optString(\"params\")"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v8

    .line 158
    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/z3$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v8
.end method

.method public final a(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)Lcom/chartboost/sdk/impl/z3$c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/chartboost/sdk/impl/z3$d;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/chartboost/sdk/impl/k0;",
            ">;)",
            "Lcom/chartboost/sdk/impl/z3$c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 167
    new-instance v7, Lcom/chartboost/sdk/impl/z3$c;

    const-string v0, "id"

    .line 168
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "response.getString(\"id\")"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nbr"

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "response.optString(\"nbr\")"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cur"

    const-string v3, "USD"

    .line 170
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "response.optString(\"cur\", \"USD\")"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bidid"

    .line 171
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "response.optString(\"bidid\")"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v7

    move-object v5, p2

    move-object v6, p3

    .line 172
    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/z3$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v7
.end method

.method public final a(Lcom/chartboost/sdk/impl/h3;)Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/z3$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string p1, "9"

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "8"

    goto :goto_0

    :cond_2
    const-string p1, "10"

    :goto_0
    return-object p1
.end method

.method public final a(Lcom/chartboost/sdk/impl/z3$a;Ljava/util/Map;Lcom/chartboost/sdk/impl/h3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/z3$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chartboost/sdk/impl/h3;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p3}, Lcom/chartboost/sdk/impl/z3;->a(Lcom/chartboost/sdk/impl/h3;)Ljava/lang/String;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/chartboost/sdk/impl/h3;->c:Lcom/chartboost/sdk/impl/h3;

    const-string/jumbo v2, "true"

    const-string v3, "false"

    if-ne p3, v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string/jumbo v4, "{% encoding %}"

    const-string v5, "base64"

    .line 41
    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/z3$a;->a()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "{% adm %}"

    invoke-interface {p2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "{{ ad_type }}"

    .line 43
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "{{ show_close_button }}"

    .line 44
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "{{ preroll_popup }}"

    .line 45
    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "{{ post_video_reward_toaster_enabled }}"

    .line 46
    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object p1, Lcom/chartboost/sdk/impl/h3;->e:Lcom/chartboost/sdk/impl/h3;

    if-ne p3, p1, :cond_1

    const-string/jumbo p1, "{% is_banner %}"

    .line 48
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/chartboost/sdk/impl/k0;
    .locals 8

    if-eqz p1, :cond_1

    .line 254
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    .line 255
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    new-instance v1, Lcom/chartboost/sdk/impl/k0;

    const-string v2, "html"

    invoke-direct {v1, v2, v0, p1}, Lcom/chartboost/sdk/impl/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/util/List;)Lcom/chartboost/sdk/impl/z3$a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chartboost/sdk/impl/z3$a;",
            ">;)",
            "Lcom/chartboost/sdk/impl/z3$a;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/impl/z3$a;

    if-nez p1, :cond_0

    new-instance p1, Lcom/chartboost/sdk/impl/z3$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/chartboost/sdk/impl/z3$a;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/z3$b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    return-object p1
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/z3$c;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "seatbid"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 4
    new-instance v12, Lcom/chartboost/sdk/impl/z3$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7f

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/chartboost/sdk/impl/z3$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    .line 7
    invoke-static {v1}, Lcom/chartboost/sdk/impl/v2;->iterator(Lorg/json/JSONArray;)Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 123
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "seat"

    .line 124
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "bid"

    .line 125
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v7, "bidArray"

    .line 126
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/chartboost/sdk/impl/v2;->iterator(Lorg/json/JSONArray;)Ljava/util/Iterator;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 240
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "ext"

    .line 241
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v9, "optJSONObject(\"ext\")"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, v8}, Lcom/chartboost/sdk/impl/z3;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/z3$b;

    move-result-object v8

    .line 243
    invoke-virtual {v8}, Lcom/chartboost/sdk/impl/z3$b;->f()Ljava/lang/String;

    move-result-object v9

    .line 244
    invoke-virtual {p0, v9}, Lcom/chartboost/sdk/impl/z3;->b(Ljava/lang/String;)Lcom/chartboost/sdk/impl/k0;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 246
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v12, v8

    .line 249
    :cond_1
    invoke-virtual {p0, v7, v12}, Lcom/chartboost/sdk/impl/z3;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/z3$b;)Lcom/chartboost/sdk/impl/z3$a;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_2
    new-instance v4, Lcom/chartboost/sdk/impl/z3$d;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v6, v2}, Lcom/chartboost/sdk/impl/z3$d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {p0, p1, v3, v0}, Lcom/chartboost/sdk/impl/z3;->a(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)Lcom/chartboost/sdk/impl/z3$c;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;)Lcom/chartboost/sdk/impl/z3$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chartboost/sdk/impl/z3$d;",
            ">;)",
            "Lcom/chartboost/sdk/impl/z3$d;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/impl/z3$d;

    if-nez p1, :cond_0

    new-instance p1, Lcom/chartboost/sdk/impl/z3$d;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v1}, Lcom/chartboost/sdk/impl/z3$d;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    return-object p1
.end method
