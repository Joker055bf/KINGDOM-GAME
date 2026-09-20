.class public final Lcom/vk/id/AuthOptionsCreator;
.super Ljava/lang/Object;
.source "AuthOptionsCreator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/AuthOptionsCreator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthOptionsCreator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthOptionsCreator.kt\ncom/vk/id/AuthOptionsCreator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vk/id/AuthOptionsCreator;",
        "",
        "appContext",
        "Landroid/content/Context;",
        "pkceGenerator",
        "Lkotlin/Lazy;",
        "Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;",
        "prefsStore",
        "Lcom/vk/id/internal/store/InternalVKIDPrefsStore;",
        "serviceCredentials",
        "Lcom/vk/id/internal/auth/ServiceCredentials;",
        "stateGenerator",
        "Lcom/vk/id/internal/state/StateGenerator;",
        "<init>",
        "(Landroid/content/Context;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcom/vk/id/internal/state/StateGenerator;)V",
        "create",
        "Lcom/vk/id/internal/auth/AuthOptions;",
        "authParams",
        "Lcom/vk/id/auth/VKIDAuthParams;",
        "statParams",
        "Lcom/vk/id/StatParams;",
        "create$vkid_release",
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
.field private final appContext:Landroid/content/Context;

.field private final pkceGenerator:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;",
            ">;"
        }
    .end annotation
.end field

.field private final prefsStore:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/store/InternalVKIDPrefsStore;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceCredentials:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/auth/ServiceCredentials;",
            ">;"
        }
    .end annotation
.end field

.field private final stateGenerator:Lcom/vk/id/internal/state/StateGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcom/vk/id/internal/state/StateGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;",
            ">;",
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/store/InternalVKIDPrefsStore;",
            ">;",
            "Lkotlin/Lazy<",
            "Lcom/vk/id/internal/auth/ServiceCredentials;",
            ">;",
            "Lcom/vk/id/internal/state/StateGenerator;",
            ")V"
        }
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkceGenerator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceCredentials"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateGenerator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vk/id/AuthOptionsCreator;->appContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/vk/id/AuthOptionsCreator;->pkceGenerator:Lkotlin/Lazy;

    .line 25
    iput-object p3, p0, Lcom/vk/id/AuthOptionsCreator;->prefsStore:Lkotlin/Lazy;

    .line 26
    iput-object p4, p0, Lcom/vk/id/AuthOptionsCreator;->serviceCredentials:Lkotlin/Lazy;

    .line 27
    iput-object p5, p0, Lcom/vk/id/AuthOptionsCreator;->stateGenerator:Lcom/vk/id/internal/state/StateGenerator;

    return-void
.end method


# virtual methods
.method public final create$vkid_release(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;)Lcom/vk/id/internal/auth/AuthOptions;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "authParams"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "statParams"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/vk/id/auth/VKIDAuthParams;->getCodeChallenge$vkid_release()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/vk/id/AuthOptionsCreator;

    .line 34
    iget-object v1, v0, Lcom/vk/id/AuthOptionsCreator;->pkceGenerator:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v4}, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;->generateRandomCodeVerifier(Ljava/security/SecureRandom;)Ljava/lang/String;

    move-result-object v1

    .line 35
    iget-object v4, v0, Lcom/vk/id/AuthOptionsCreator;->prefsStore:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    invoke-virtual {v4, v1}, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;->setCodeVerifier$vkid_release(Ljava/lang/String;)V

    .line 36
    iget-object v4, v0, Lcom/vk/id/AuthOptionsCreator;->pkceGenerator:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;

    invoke-virtual {v4, v1}, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;->deriveCodeVerifierChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v4, v1

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/vk/id/auth/VKIDAuthParams;->getState$vkid_release()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v5, v0, Lcom/vk/id/AuthOptionsCreator;->prefsStore:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;

    invoke-virtual {v5, v1}, Lcom/vk/id/internal/store/InternalVKIDPrefsStore;->setState(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/vk/id/AuthOptionsCreator;->stateGenerator:Lcom/vk/id/internal/state/StateGenerator;

    invoke-virtual {v1}, Lcom/vk/id/internal/state/StateGenerator;->regenerateState()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v8, v1

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/vk/id/auth/VKIDAuthParams;->getLocale$vkid_release()Lcom/vk/id/auth/VKIDAuthParams$Locale;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/vk/id/auth/VKIDAuthParams$Locale;->Companion:Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;

    iget-object v5, v0, Lcom/vk/id/AuthOptionsCreator;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;->systemLocale$vkid_release(Landroid/content/Context;)Lcom/vk/id/auth/VKIDAuthParams$Locale;

    move-result-object v1

    .line 40
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/vk/id/auth/VKIDAuthParams;->getTheme$vkid_release()Lcom/vk/id/auth/VKIDAuthParams$Theme;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/vk/id/auth/VKIDAuthParams$Theme;->Companion:Lcom/vk/id/auth/VKIDAuthParams$Theme$Companion;

    iget-object v6, v0, Lcom/vk/id/AuthOptionsCreator;->appContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/vk/id/auth/VKIDAuthParams$Theme$Companion;->systemTheme(Landroid/content/Context;)Lcom/vk/id/auth/VKIDAuthParams$Theme;

    move-result-object v5

    .line 41
    :cond_3
    iget-object v6, v0, Lcom/vk/id/AuthOptionsCreator;->serviceCredentials:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vk/id/internal/auth/ServiceCredentials;

    .line 43
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/vk/id/auth/VKIDAuthParams;->getScopes$vkid_release()Ljava/util/Set;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/vk/id/AuthOptionsCreatorKt;->access$addOAuthParams(Lorg/json/JSONObject;Ljava/util/Set;)V

    .line 46
    invoke-virtual {v6}, Lcom/vk/id/internal/auth/ServiceCredentials;->getRedirectUri()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 47
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 48
    invoke-static {v7}, Lcom/vk/id/AuthOptionsCreatorKt;->access$toBase64(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "oauth2_params"

    invoke-virtual {v10, v12, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 52
    invoke-static/range {p2 .. p2}, Lcom/vk/id/AuthOptionsCreatorKt;->access$createStatsInfo(Lcom/vk/id/StatParams;)Lorg/json/JSONObject;

    move-result-object v3

    .line 53
    invoke-static {v7, v3}, Lcom/vk/id/AuthOptionsCreatorKt;->access$addStatParams(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 54
    invoke-static {v7}, Lcom/vk/id/AuthOptionsCreatorKt;->access$toBase64(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v12, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v7, "v"

    const-string v11, "2.7.1"

    .line 55
    invoke-virtual {v9, v7, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    invoke-virtual {v6}, Lcom/vk/id/internal/auth/ServiceCredentials;->getClientID()Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "toString(...)"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    if-eqz v1, :cond_4

    .line 64
    invoke-static {v1}, Lcom/vk/id/internal/auth/AuthOptionsKt;->toQueryParam(Lcom/vk/id/auth/VKIDAuthParams$Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v10

    :goto_1
    if-eqz v5, :cond_5

    .line 65
    invoke-static {v5}, Lcom/vk/id/internal/auth/AuthOptionsKt;->toQueryParam(Lcom/vk/id/auth/VKIDAuthParams$Theme;)Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    .line 67
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/vk/id/auth/VKIDAuthParams;->getUseOAuthProviderIfPossible$vkid_release()Z

    move-result v5

    const/4 v11, 0x1

    xor-int/lit8 v12, v5, 0x1

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/vk/id/auth/VKIDAuthParams;->getOAuth$vkid_release()Lcom/vk/id/OAuth;

    move-result-object v13

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/vk/id/auth/VKIDAuthParams;->getPrompt$vkid_release()Lcom/vk/id/auth/Prompt;

    move-result-object v5

    sget-object v14, Lcom/vk/id/AuthOptionsCreator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/vk/id/auth/Prompt;->ordinal()I

    move-result v5

    aget v5, v14, v5

    if-eq v5, v11, :cond_7

    const/4 v11, 0x2

    if-eq v5, v11, :cond_6

    const-string v5, ""

    goto :goto_2

    :cond_6
    const-string v5, "consent"

    goto :goto_2

    :cond_7
    const-string v5, "login"

    :goto_2
    move-object v14, v5

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/vk/id/auth/VKIDAuthParams;->getScopes$vkid_release()Ljava/util/Set;

    move-result-object v15

    .line 75
    invoke-static {v3}, Lcom/vk/id/AuthOptionsCreatorKt;->access$toBase64(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v16

    .line 57
    new-instance v17, Lcom/vk/id/internal/auth/AuthOptions;

    const-string v5, "sha256"

    const-string v18, "2.7.1"

    move-object/from16 v2, v17

    move-object v3, v6

    move-object v6, v9

    move-object v9, v1

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-direct/range {v2 .. v16}, Lcom/vk/id/internal/auth/AuthOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vk/id/OAuth;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-object v17
.end method
