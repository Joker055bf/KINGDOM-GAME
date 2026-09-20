.class public final Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;
.super Ljava/lang/Object;
.source "AuthProvidersChooserDefault.kt"

# interfaces
.implements Lcom/vk/id/internal/auth/AuthProvidersChooser;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthProvidersChooserDefault.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthProvidersChooserDefault.kt\ncom/vk/id/internal/auth/AuthProvidersChooserDefault\n+ 2 InternalVKIDLog.kt\ncom/vk/id/logger/InternalVKIDLogKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,44:1\n40#2:45\n1971#3,14:46\n*S KotlinDebug\n*F\n+ 1 AuthProvidersChooserDefault.kt\ncom/vk/id/internal/auth/AuthProvidersChooserDefault\n*L\n21#1:45\n28#1:46,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;",
        "Lcom/vk/id/internal/auth/AuthProvidersChooser;",
        "packageManager",
        "Lcom/vk/id/internal/context/InternalVKIDPackageManager;",
        "silentAuthServicesProvider",
        "Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;",
        "activityStarter",
        "Lcom/vk/id/internal/context/InternalVKIDActivityStarter;",
        "<init>",
        "(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/context/InternalVKIDActivityStarter;)V",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "chooseBest",
        "Lcom/vk/id/internal/auth/VKIDAuthProvider;",
        "params",
        "Lcom/vk/id/auth/VKIDAuthParams;",
        "(Lcom/vk/id/auth/VKIDAuthParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final activityStarter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;

.field private final packageManager:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

.field private final silentAuthServicesProvider:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/context/InternalVKIDActivityStarter;)V
    .locals 1

    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "silentAuthServicesProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;->packageManager:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

    .line 18
    iput-object p2, p0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;->silentAuthServicesProvider:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;

    .line 19
    iput-object p3, p0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;->activityStarter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

    .line 45
    sget-object p1, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string p2, "getSimpleName(...)"

    const-string p3, "AuthProvidersChooserDefault"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    return-void
.end method


# virtual methods
.method public chooseBest(Lcom/vk/id/auth/VKIDAuthParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/auth/VKIDAuthParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/internal/auth/VKIDAuthProvider;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault$chooseBest$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault$chooseBest$1;

    iget v1, v0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault$chooseBest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault$chooseBest$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault$chooseBest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault$chooseBest$1;

    invoke-direct {v0, p0, p2}, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault$chooseBest$1;-><init>(Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault$chooseBest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 22
    iget v2, v0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault$chooseBest$1;->label:I

    const-string v3, "no_auth_provider"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault$chooseBest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, Lcom/vk/id/auth/VKIDAuthParams;->getUseOAuthProviderIfPossible$vkid_release()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/vk/id/auth/VKIDAuthParams;->getOAuth$vkid_release()Lcom/vk/id/OAuth;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_4

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;->silentAuthServicesProvider:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;

    iput-object p0, v0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault$chooseBest$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault$chooseBest$1;->label:I

    invoke-virtual {p1, v0}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->getSilentAuthServices(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 22
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    .line 46
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 47
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_2

    .line 48
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 49
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    .line 50
    :cond_6
    move-object v2, v0

    check-cast v2, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;

    .line 28
    invoke-virtual {v2}, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;->getWeight()I

    move-result v2

    .line 52
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 53
    move-object v7, v6

    check-cast v7, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;

    .line 28
    invoke-virtual {v7}, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;->getWeight()I

    move-result v7

    if-ge v2, v7, :cond_8

    move-object v0, v6

    move v2, v7

    .line 58
    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 28
    :goto_2
    check-cast v0, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;

    if-eqz v0, :cond_9

    .line 29
    invoke-virtual {v0}, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 30
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 32
    iget-object v0, p1, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Silent auth provider found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vk/id/logger/InternalVKIDLogger;->debug(Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/vk/id/internal/auth/app/AppAuthProvider;

    iget-object v0, p1, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;->activityStarter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

    invoke-direct {v1, v0, p2}, Lcom/vk/id/internal/auth/app/AppAuthProvider;-><init>(Lcom/vk/id/internal/context/InternalVKIDActivityStarter;Ljava/lang/String;)V

    :cond_9
    if-nez v1, :cond_a

    .line 36
    sget-object p2, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    new-array v0, v5, [Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    new-instance v1, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v6, "sdk_type"

    const-string v7, "vkid"

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, v4

    invoke-virtual {p2, v3, v0}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;->trackEvent(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V

    .line 37
    new-instance p2, Lcom/vk/id/internal/auth/web/WebAuthProvider;

    iget-object v0, p1, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;->packageManager:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

    iget-object p1, p1, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;->activityStarter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

    invoke-direct {p2, v0, p1}, Lcom/vk/id/internal/auth/web/WebAuthProvider;-><init>(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Lcom/vk/id/internal/context/InternalVKIDActivityStarter;)V

    check-cast p2, Lcom/vk/id/internal/auth/VKIDAuthProvider;

    goto :goto_3

    .line 39
    :cond_a
    sget-object p1, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    new-array p2, v5, [Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    new-instance v0, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v6, "sdk_type"

    const-string v7, "vkid"

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v0, p2, v4

    const-string v0, "auth_provider_used"

    invoke-virtual {p1, v0, p2}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;->trackEvent(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V

    .line 40
    move-object p2, v1

    check-cast p2, Lcom/vk/id/internal/auth/VKIDAuthProvider;

    :goto_3
    return-object p2

    .line 24
    :cond_b
    :goto_4
    sget-object p1, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    new-array p2, v5, [Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    new-instance v0, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const-string v6, "sdk_type"

    const-string v7, "vkid"

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/vk/id/analytics/VKIDAnalytics$EventParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v0, p2, v4

    invoke-virtual {p1, v3, p2}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;->trackEvent(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V

    .line 25
    new-instance p1, Lcom/vk/id/internal/auth/web/WebAuthProvider;

    iget-object p2, p0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;->packageManager:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

    iget-object v0, p0, Lcom/vk/id/internal/auth/AuthProvidersChooserDefault;->activityStarter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

    invoke-direct {p1, p2, v0}, Lcom/vk/id/internal/auth/web/WebAuthProvider;-><init>(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Lcom/vk/id/internal/context/InternalVKIDActivityStarter;)V

    return-object p1
.end method
