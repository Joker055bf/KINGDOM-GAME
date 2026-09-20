.class public final Lcom/onevcat/uniwebview/internal/obfuscated/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/onevcat/uniwebview/a;

.field public final c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

.field public final d:Ljava/util/Set;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onevcat/uniwebview/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->b:Lcom/onevcat/uniwebview/a;

    .line 4
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 5
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string p1, "uniwebview"

    .line 6
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1689
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1692
    :catch_0
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No Activity found to handle Intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    .line 1693
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1722
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v1, v2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 1657
    iget-boolean p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->e:Z

    if-eqz p2, :cond_1

    .line 1658
    iget-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->b:Lcom/onevcat/uniwebview/a;

    .line 1659
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p2

    .line 1660
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p2

    if-eqz p2, :cond_1

    .line 1661
    iget-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "message"

    const-string v1, "UniWebView is opening links in external browser."

    .line 1662
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1685
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p2, v0, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 1686
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1687
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1688
    invoke-virtual {p0, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a(Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final a(Ljava/lang/String;ZZLjava/lang/String;)Z
    .locals 10

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "message"

    if-eqz p4, :cond_0

    .line 1
    sget-object v3, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/internal/obfuscated/V2;

    .line 2
    new-instance v4, Lcom/onevcat/uniwebview/internal/obfuscated/W;

    invoke-direct {v4, p4, p2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/W;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/onevcat/uniwebview/internal/obfuscated/V2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/X;)Lcom/onevcat/uniwebview/internal/obfuscated/Y;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    iget-object p4, p2, Lcom/onevcat/uniwebview/internal/obfuscated/Y;->b:Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    return v1

    :catch_0
    move-exception p4

    .line 5
    sget-object v3, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception during parsing result for `ShouldUniWebViewHandleRequest`: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v4, ". Result from managed code: "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 7
    iget-object p2, p2, Lcom/onevcat/uniwebview/internal/obfuscated/Y;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object p4, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v3, p4, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 39
    :cond_0
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "file:"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 40
    invoke-static {p2, p4, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 41
    iget-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->b:Lcom/onevcat/uniwebview/a;

    .line 42
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    .line 43
    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 44
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Loading a local file. The local file loading will never be overridden."

    .line 46
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p1, p3, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    .line 70
    :cond_1
    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "Local file loading is disabled. To enable loading from a `file://` URL, call `SetAllowFileAccess` with true."

    .line 72
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object p4, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p2, p4, p3}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 99
    new-instance p2, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    const-string p3, "-1"

    const-string p4, "Local file loading is disabled."

    const-string v0, ""

    .line 100
    invoke-direct {p2, v0, p3, p4, v5}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 101
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {p1, p3, p2}, Lcom/onevcat/uniwebview/a;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V

    :goto_0
    return v1

    :cond_2
    const-string v6, "uniwebviewinternal://"

    .line 102
    invoke-static {p2, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string p1, "__uniwebview_internal_video_end"

    .line 103
    invoke-static {p2, p1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->b:Lcom/onevcat/uniwebview/a;

    .line 105
    iget-object p1, p1, Lcom/onevcat/uniwebview/a;->d:Lcom/onevcat/uniwebview/b;

    .line 106
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/b;->onHideCustomView()V

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Url handled internally in UniWebView"

    .line 108
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p1, p3, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return v1

    .line 132
    :cond_4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iget-object v6, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v7, "Checking url could match with a defined url scheme: "

    .line 342
    invoke-static {v7, p2, v6, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 343
    sget-object v8, Lcom/onevcat/uniwebview/internal/obfuscated/o;->b:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v6, v8, v7}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 344
    iget-object v6, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->d:Ljava/util/Set;

    .line 365
    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 366
    :cond_5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 367
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 368
    iget-object p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string p4, "Found url matching scheme: "

    .line 369
    invoke-static {p4, p2, p3, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 370
    sget-object p4, Lcom/onevcat/uniwebview/internal/obfuscated/o;->b:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p3, p4, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 371
    iget-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string p3, "Url handled by defined scheme. Redirected to Unity. "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    sget-object p4, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p2, p4, p3}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 396
    iget-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->b:Lcom/onevcat/uniwebview/a;

    .line 397
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->k:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    const-string p4, "method"

    .line 676
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "parameters"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1160
    iget-object p2, p2, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-virtual {p2, p3, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    return v1

    .line 1161
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v6, "Did not find a matched scheme for: "

    .line 1162
    invoke-static {v6, p2, v0, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1163
    sget-object v7, Lcom/onevcat/uniwebview/internal/obfuscated/o;->b:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v7, v6}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    const-string v0, "sms:"

    .line 1164
    invoke-static {p2, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v6, "android.intent.action.VIEW"

    if-nez v0, :cond_8

    move-object v0, v5

    goto :goto_2

    .line 1167
    :cond_8
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "Received sms url..."

    .line 1168
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1191
    sget-object v8, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v8, v7}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 1192
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "android.intent.category.DEFAULT"

    .line 1193
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.category.BROWSABLE"

    .line 1194
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    :goto_2
    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "tel:"

    .line 1196
    invoke-static {p2, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v5

    goto :goto_3

    .line 1199
    :cond_9
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "Received tel url..."

    .line 1200
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1223
    sget-object v8, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v8, v7}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 1224
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "android.intent.action.DIAL"

    invoke-direct {v0, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1225
    :goto_3
    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "mailto:"

    .line 1226
    invoke-static {p2, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, v5

    goto :goto_4

    .line 1229
    :cond_a
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "Received mailto url..."

    .line 1230
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1253
    sget-object v8, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v8, v7}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 1254
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "android.intent.action.SENDTO"

    invoke-direct {v0, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1255
    :goto_4
    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "market://details?id="

    const-string v7, "intent:"

    .line 1256
    invoke-static {p2, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_5

    .line 1259
    :cond_b
    iget-object v7, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "Received intent url..."

    .line 1260
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1283
    sget-object v9, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v7, v9, v8}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 1284
    :try_start_1
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 1285
    iget-object v8, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/high16 v9, 0x10000

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_c

    goto :goto_6

    .line 1293
    :cond_c
    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d

    goto :goto_5

    .line 1294
    :cond_d
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    goto :goto_6

    :catch_1
    move-exception v0

    .line 1298
    iget-object v7, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Parsing intent url error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ".message"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1299
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1328
    sget-object v8, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v7, v8, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    :goto_5
    move-object v7, v5

    .line 1329
    :goto_6
    invoke-virtual {p0, v7}, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "market:"

    .line 1330
    invoke-static {p2, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    .line 1333
    :cond_e
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "Received market url..."

    .line 1334
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1357
    sget-object v8, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v8, v7}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 1358
    :try_start_2
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 1360
    iget-object v7, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Parsing market url error. "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1361
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1390
    sget-object v8, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v7, v8, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    :goto_7
    move-object v0, v5

    .line 1391
    :goto_8
    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_b

    .line 1396
    :cond_f
    invoke-virtual {p0, p1, p3}, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_10

    return v1

    :cond_10
    const-string p3, "https:"

    const-string v0, "about:blank"

    const-string v7, "http:"

    .line 1397
    filled-new-array {v7, p3, p4, v0}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 1455
    instance-of p4, p3, Ljava/util/Collection;

    if-eqz p4, :cond_11

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_11

    goto :goto_9

    .line 1456
    :cond_11
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_13

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 1457
    invoke-static {p2, p4, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_12

    goto :goto_a

    .line 1460
    :cond_13
    :goto_9
    iget-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string p3, "Trying to parse third party app url: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1461
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1484
    sget-object p4, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p2, p4, p3}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 1485
    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p2, v6, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1486
    iget-object p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    const-string v0, "context.packageManager.q\u2026tentActivities(intent, 0)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v4, "Query for supported activity to run the intent with url: "

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1488
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v0, p4, v4}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 1512
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_14

    .line 1513
    iget-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "No supported activity found to run the intent. Confirm you have enabled the package visibility if you think this is an error. https://developer.android.com/training/package-visibility"

    .line 1514
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p2, p4, p3}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto :goto_a

    .line 1538
    :cond_14
    iget-object p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Found supported activity, ready to run the intent."

    .line 1539
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1562
    invoke-virtual {p3, p4, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    move-object v5, p2

    .line 1563
    :goto_a
    invoke-virtual {p0, v5}, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 1564
    iget-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string p3, "Url handled by a third party app: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1565
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1588
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p2, p3, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return v1

    .line 1589
    :cond_15
    iget-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string p3, "Url is opening without overridden: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1590
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1613
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p2, p3, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return v3

    .line 1614
    :cond_16
    :goto_b
    iget-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->c:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Url handled by intent."

    .line 1615
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1638
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p1, p3, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return v1
.end method
