.class public final Lcom/chartboost/sdk/impl/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0008\u001a\u00020\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u001a\u0010\u0006\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\"\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u001a\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u000cH\u0002J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0010H\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/k1;",
        "",
        "Lcom/chartboost/sdk/impl/s1;",
        "webview",
        "",
        "a",
        "b",
        "",
        "currentTime",
        "d",
        "duration",
        "c",
        "",
        "function",
        "param",
        "url",
        "Lcom/chartboost/sdk/internal/Model/a;",
        "Lcom/chartboost/sdk/impl/o1;",
        "viewController",
        "<init>",
        "(Lcom/chartboost/sdk/impl/o1;)V",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/o1;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/o1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/k1;->a:Lcom/chartboost/sdk/impl/o1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k1;->b()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, v0, Lcom/chartboost/sdk/internal/Model/a;->c:Lcom/chartboost/sdk/impl/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final a(Lcom/chartboost/sdk/impl/s1;)V
    .locals 1

    const-string v0, "onBackground"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/k1;->b(Ljava/lang/String;Lcom/chartboost/sdk/impl/s1;)V

    return-void
.end method

.method public final a(Lcom/chartboost/sdk/impl/s1;F)V
    .locals 2

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v1, "seconds"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "json.toString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackTime"

    invoke-virtual {p0, v0, p2, p1}, Lcom/chartboost/sdk/impl/k1;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/s1;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/chartboost/sdk/impl/s1;)V
    .locals 5

    const-string v0, "Calling native to javascript: "

    const-string v1, "CBTemplateProxy"

    if-eqz p2, :cond_0

    .line 7
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/impl/s1;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/chartboost/sdk/impl/i2;

    const-string/jumbo p2, "show_webview_error"

    const-string v0, "Webview is null"

    .line 14
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k1;->a()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k1;->c()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-direct {p1, p2, v0, v2, v3}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    const-string p1, "Calling native to javascript webview is null"

    .line 25
    invoke-static {v1, p1}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    new-instance p2, Lcom/chartboost/sdk/impl/i2;

    .line 32
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k1;->a()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k1;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "show_webview_crash"

    const-string v4, "Cannot open url"

    .line 34
    invoke-direct {p2, v3, v4, v0, v2}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p2}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Calling native to javascript. Cannot open url: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/s1;)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:Chartboost.EventHandler.handleNativeEvent(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1, p3}, Lcom/chartboost/sdk/impl/k1;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/s1;)V

    return-void
.end method

.method public final b()Lcom/chartboost/sdk/internal/Model/a;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k1;->a:Lcom/chartboost/sdk/impl/o1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o1;->a()Lcom/chartboost/sdk/impl/f4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/f4;->getImpression()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b(Lcom/chartboost/sdk/impl/s1;)V
    .locals 1

    const-string v0, "onForeground"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/k1;->b(Ljava/lang/String;Lcom/chartboost/sdk/impl/s1;)V

    return-void
.end method

.method public final b(Lcom/chartboost/sdk/impl/s1;F)V
    .locals 2

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string/jumbo v1, "totalDuration"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "json.toString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "videoStarted"

    invoke-virtual {p0, v0, p2, p1}, Lcom/chartboost/sdk/impl/k1;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/s1;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/chartboost/sdk/impl/s1;)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:Chartboost.EventHandler.handleNativeEvent(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/k1;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/s1;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k1;->b()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/chartboost/sdk/internal/Model/a;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final c(Lcom/chartboost/sdk/impl/s1;)V
    .locals 1

    const-string/jumbo v0, "videoEnded"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/k1;->b(Ljava/lang/String;Lcom/chartboost/sdk/impl/s1;)V

    return-void
.end method

.method public final d(Lcom/chartboost/sdk/impl/s1;)V
    .locals 1

    const-string/jumbo v0, "videoFailed"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/k1;->b(Ljava/lang/String;Lcom/chartboost/sdk/impl/s1;)V

    return-void
.end method
