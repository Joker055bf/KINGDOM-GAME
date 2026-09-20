.class public final Lcom/onevcat/uniwebview/internal/obfuscated/X2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onevcat/uniwebview/internal/obfuscated/l3;


# instance fields
.field public final a:Lcom/onevcat/uniwebview/a;


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/a;)V
    .locals 1

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a:Lcom/onevcat/uniwebview/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V
    .locals 9

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a:Lcom/onevcat/uniwebview/a;

    .line 2
    iget-object v1, v0, Lcom/onevcat/uniwebview/a;->g:Ljava/lang/String;

    .line 3
    iget-object v0, v0, Lcom/onevcat/uniwebview/a;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/a;->getMessageSender()Lcom/onevcat/uniwebview/internal/obfuscated/m3;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/m3;->a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/a;->e()Lcom/onevcat/uniwebview/a;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/a;->getPopupPageEventEnabled$uniwebview_release()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 10
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->j:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    goto :goto_0

    .line 16
    :cond_4
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->i:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    goto :goto_0

    .line 17
    :cond_5
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->g:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    goto :goto_0

    .line 18
    :cond_6
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->f:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    goto :goto_0

    .line 20
    :cond_7
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->h:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    .line 26
    :goto_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 27
    iget-object v7, p0, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v7}, Lcom/onevcat/uniwebview/a;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "popupId"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_a

    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_8

    goto :goto_2

    .line 34
    :cond_8
    invoke-static {p2}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-string v2, "progress"

    .line 35
    invoke-virtual {v6, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    :cond_9
    const-string p1, "url"

    .line 36
    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_a
    :try_start_0
    const-string p1, "payload"

    .line 44
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_1
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/a;->getRootMessageSender$uniwebview_release()Lcom/onevcat/uniwebview/internal/obfuscated/m3;

    move-result-object p1

    .line 53
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/a;->getMessageTargetName$uniwebview_release()Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wrapper.toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p1, p2, v1, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/m3;->a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    :catch_0
    :cond_b
    :goto_2
    return-void
.end method
