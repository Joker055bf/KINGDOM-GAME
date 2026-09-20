.class public final Lcom/onevcat/uniwebview/internal/obfuscated/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final D:Ljava/util/List;

.field public static final E:Ljava/util/ArrayList;

.field public static final F:Lcom/onevcat/uniwebview/internal/obfuscated/d3;


# instance fields
.field public A:Ljava/lang/Integer;

.field public B:Ljava/lang/Integer;

.field public C:Ljava/lang/Integer;

.field public final a:Landroid/app/Activity;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Lcom/onevcat/uniwebview/internal/obfuscated/j;

.field public e:Landroidx/browser/customtabs/CustomTabsClient;

.field public f:Landroidx/browser/customtabs/CustomTabsSession;

.field public g:Lcom/onevcat/uniwebview/internal/obfuscated/t;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Integer;

.field public p:Z

.field public q:Ljava/lang/Boolean;

.field public r:Ljava/lang/Boolean;

.field public s:Ljava/lang/Boolean;

.field public t:Ljava/lang/Boolean;

.field public u:Ljava/lang/Boolean;

.field public v:Ljava/lang/Boolean;

.field public w:Ljava/lang/Boolean;

.field public x:Ljava/lang/Boolean;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "com.android.chrome"

    const-string v1, "com.chrome.beta"

    const-string v2, "com.chrome.dev"

    const-string v3, "com.chrome.canary"

    const-string v4, "com.microsoft.emmx"

    const-string v5, "com.brave.browser"

    const-string v6, "com.opera.browser"

    const-string v7, "com.opera.mini.native"

    const-string v8, "com.sec.android.app.sbrowser"

    const-string v9, "com.yandex.browser"

    const-string v10, "com.UCMobile.intl"

    .line 1
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->D:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->E:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/h3$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->F:Lcom/onevcat/uniwebview/internal/obfuscated/d3;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/j;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "messageDispatcher"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->d:Lcom/onevcat/uniwebview/internal/obfuscated/j;

    .line 6
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/u;->b:Lcom/onevcat/uniwebview/internal/obfuscated/u;

    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p4, "browsing"

    .line 8
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object p4, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v0, "Adding safe browsing to manager: "

    const-string v1, "message"

    .line 11
    invoke-static {v0, p2, p4, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p4, v2, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 13
    iget-object p3, p3, Lcom/onevcat/uniwebview/internal/obfuscated/u;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-boolean p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->i:Z

    if-eqz p3, :cond_0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Safe browsing already disposed. Skip binding: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p4, v2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/onevcat/uniwebview/internal/obfuscated/g3;->a(Landroid/app/Activity;)Landroid/content/pm/ResolveInfo;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/t;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/t;-><init>(Lcom/onevcat/uniwebview/internal/obfuscated/h3;)V

    .line 42
    iput-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->g:Lcom/onevcat/uniwebview/internal/obfuscated/t;

    .line 43
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->F:Lcom/onevcat/uniwebview/internal/obfuscated/d3;

    .line 46
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v3, "resolveInfo.serviceInfo.packageName"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {v2, p1, p3, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/d3;->a(Landroid/app/Activity;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    move-result p1

    .line 52
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->h:Z

    if-nez p1, :cond_3

    const-string p1, "Custom Tabs didn\'t bind to a tab service. Something goes wrong. Trying to show the browser without a session."

    .line 56
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p4, p3, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 86
    iget-boolean p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->i:Z

    if-eqz p1, :cond_2

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Safe browsing \'"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' already disposed. Skip showWithoutClient"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p4, p2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 116
    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a(Landroidx/browser/customtabs/CustomTabsIntent$Builder;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "event"

    .line 110
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "source"

    const-string v1, "CustomTabsCallback"

    .line 111
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p0, "timestamp"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "payload.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Landroidx/browser/customtabs/CustomTabsIntent$Builder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4

    .line 2
    :try_start_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 3
    invoke-virtual {p3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " not available until "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "message"

    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p2, p1, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 99
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->y:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->e:Landroidx/browser/customtabs/CustomTabsClient;

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    move-object v0, v3

    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->f:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v0, :cond_4

    .line 105
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/v;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/v;-><init>(Lcom/onevcat/uniwebview/internal/obfuscated/h3;)V

    invoke-virtual {v2, v0}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->f:Landroidx/browser/customtabs/CustomTabsSession;

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->f:Landroidx/browser/customtabs/CustomTabsSession;

    :goto_0
    if-nez v0, :cond_5

    return-void

    .line 108
    :cond_5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroidx/browser/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    return-void
.end method

.method public final a(Landroidx/browser/customtabs/CustomTabsIntent$Builder;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setColorScheme(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->l:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->m:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->n:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 42
    :cond_1
    new-instance v0, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setSecondaryToolbarColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setNavigationBarColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setNavigationBarDividerColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    .line 48
    :cond_5
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 52
    :cond_6
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->build()Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setColorSchemeParams(ILandroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    goto :goto_1

    .line 53
    :cond_7
    :goto_0
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->build()Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setDefaultColorSchemeParams(Landroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 59
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->q:Ljava/lang/Boolean;

    const-string v1, "1.7.0"

    if-eqz v0, :cond_9

    .line 62
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "setBookmarksButtonEnabled"

    invoke-static {p1, v3, v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a(Landroidx/browser/customtabs/CustomTabsIntent$Builder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 64
    :cond_9
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->r:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 67
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "setBackgroundInteractionEnabled"

    invoke-static {p1, v3, v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a(Landroidx/browser/customtabs/CustomTabsIntent$Builder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 69
    :cond_a
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 72
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "setDownloadButtonEnabled"

    invoke-static {p1, v3, v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a(Landroidx/browser/customtabs/CustomTabsIntent$Builder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 74
    :cond_b
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->z:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarCornerRadiusDp(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 75
    :cond_c
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->u:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 76
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "setSendToExternalDefaultHandlerEnabled"

    invoke-static {p1, v3, v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a(Landroidx/browser/customtabs/CustomTabsIntent$Builder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 78
    :cond_d
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->v:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setUrlBarHidingEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 79
    :cond_e
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->w:Ljava/lang/Boolean;

    const/4 v1, 0x2

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_2

    :cond_f
    move v0, v1

    .line 81
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShareState(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 84
    :cond_10
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->A:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 85
    iget-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->B:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 86
    :cond_11
    invoke-virtual {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setInitialActivityHeightPx(II)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 89
    :cond_12
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->C:Ljava/lang/Integer;

    const-string v1, "1.8.0"

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "setInitialActivityWidthPx"

    invoke-static {p1, v3, v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a(Landroidx/browser/customtabs/CustomTabsIntent$Builder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 94
    :cond_13
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "setActivitySideSheetMaximizationEnabled"

    invoke-static {p1, v3, v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a(Landroidx/browser/customtabs/CustomTabsIntent$Builder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 97
    :cond_14
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 137
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->i:Z

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Safe browsing \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->b:Ljava/lang/String;

    const-string v3, "\' already disposed. Skip show"

    const-string v4, "message"

    .line 140
    invoke-static {v1, v2, v3, v0, v4}, Lcom/onevcat/uniwebview/internal/obfuscated/c0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->e:Landroidx/browser/customtabs/CustomTabsClient;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->p:Z

    goto :goto_1

    .line 147
    :cond_1
    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 148
    iget-boolean v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->i:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->f:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v2, :cond_3

    .line 152
    new-instance v2, Lcom/onevcat/uniwebview/internal/obfuscated/v;

    invoke-direct {v2, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/v;-><init>(Lcom/onevcat/uniwebview/internal/obfuscated/h3;)V

    invoke-virtual {v0, v2}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->f:Landroidx/browser/customtabs/CustomTabsSession;

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->f:Landroidx/browser/customtabs/CustomTabsSession;

    .line 155
    :goto_0
    invoke-direct {v1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a(Landroidx/browser/customtabs/CustomTabsIntent$Builder;)V

    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->i:Z

    const-string v1, "message"

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Safe browsing already disposed ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v1, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_0
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disposing safe browsing \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->i:Z

    .line 58
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/u;->b:Lcom/onevcat/uniwebview/internal/obfuscated/u;

    .line 59
    iget-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "name"

    .line 60
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing safe browsing from manager: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v4, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v4, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 100
    iget-object p1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/u;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->g:Lcom/onevcat/uniwebview/internal/obfuscated/t;

    if-eqz p1, :cond_1

    .line 102
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->h:Z

    if-eqz v0, :cond_1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unbindService failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v1, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->g:Lcom/onevcat/uniwebview/internal/obfuscated/t;

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->h:Z

    .line 133
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->e:Landroidx/browser/customtabs/CustomTabsClient;

    .line 134
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->f:Landroidx/browser/customtabs/CustomTabsSession;

    .line 135
    iput-boolean v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->p:Z

    .line 136
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->y:Ljava/lang/String;

    return-void
.end method
