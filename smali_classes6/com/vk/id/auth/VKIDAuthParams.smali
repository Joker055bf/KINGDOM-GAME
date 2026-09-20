.class public final Lcom/vk/id/auth/VKIDAuthParams;
.super Ljava/lang/Object;
.source "VKIDAuthParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/auth/VKIDAuthParams$Builder;,
        Lcom/vk/id/auth/VKIDAuthParams$Locale;,
        Lcom/vk/id/auth/VKIDAuthParams$Theme;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVKIDAuthParams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKIDAuthParams.kt\ncom/vk/id/auth/VKIDAuthParams\n+ 2 VKIDAuthParams.kt\ncom/vk/id/auth/VKIDAuthParamsKt\n*L\n1#1,376:1\n21#2:377\n*S KotlinDebug\n*F\n+ 1 VKIDAuthParams.kt\ncom/vk/id/auth/VKIDAuthParams\n*L\n309#1:377\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0003345B{\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0010\u0012\u0016\u0008\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u0012\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010(\u001a\u00020\u00002\u0017\u0010)\u001a\u0013\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020,0*\u00a2\u0006\u0002\u0008-H\u0007J\u0008\u0010.\u001a\u00020\rH\u0016J\u0013\u0010/\u001a\u00020\u00072\u0008\u00100\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u00101\u001a\u000202H\u0016R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\n\u001a\u00020\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010!R\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\"\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u0012X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0014\u0010\u0013\u001a\u00020\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001b\u00a8\u00066"
    }
    d2 = {
        "Lcom/vk/id/auth/VKIDAuthParams;",
        "",
        "locale",
        "Lcom/vk/id/auth/VKIDAuthParams$Locale;",
        "theme",
        "Lcom/vk/id/auth/VKIDAuthParams$Theme;",
        "useOAuthProviderIfPossible",
        "",
        "oAuth",
        "Lcom/vk/id/OAuth;",
        "prompt",
        "Lcom/vk/id/auth/Prompt;",
        "state",
        "",
        "codeChallenge",
        "scopes",
        "",
        "extraParams",
        "",
        "internalUse",
        "<init>",
        "(Lcom/vk/id/auth/VKIDAuthParams$Locale;Lcom/vk/id/auth/VKIDAuthParams$Theme;ZLcom/vk/id/OAuth;Lcom/vk/id/auth/Prompt;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Z)V",
        "getLocale$vkid_release",
        "()Lcom/vk/id/auth/VKIDAuthParams$Locale;",
        "getTheme$vkid_release",
        "()Lcom/vk/id/auth/VKIDAuthParams$Theme;",
        "getUseOAuthProviderIfPossible$vkid_release",
        "()Z",
        "getOAuth$vkid_release",
        "()Lcom/vk/id/OAuth;",
        "getPrompt$vkid_release",
        "()Lcom/vk/id/auth/Prompt;",
        "getState$vkid_release",
        "()Ljava/lang/String;",
        "getCodeChallenge$vkid_release",
        "getScopes$vkid_release",
        "()Ljava/util/Set;",
        "getExtraParams$vkid_release",
        "()Ljava/util/Map;",
        "getInternalUse$vkid_release",
        "newBuilder",
        "initializer",
        "Lkotlin/Function1;",
        "Lcom/vk/id/auth/VKIDAuthParams$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "toString",
        "equals",
        "other",
        "hashCode",
        "",
        "Locale",
        "Theme",
        "Builder",
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
.field private final codeChallenge:Ljava/lang/String;

.field private final extraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final internalUse:Z

.field private final locale:Lcom/vk/id/auth/VKIDAuthParams$Locale;

.field private final oAuth:Lcom/vk/id/OAuth;

.field private final prompt:Lcom/vk/id/auth/Prompt;

.field private final scopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Ljava/lang/String;

.field private final theme:Lcom/vk/id/auth/VKIDAuthParams$Theme;

.field private final useOAuthProviderIfPossible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/vk/id/auth/VKIDAuthParams$Locale;Lcom/vk/id/auth/VKIDAuthParams$Theme;ZLcom/vk/id/OAuth;Lcom/vk/id/auth/Prompt;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/auth/VKIDAuthParams$Locale;",
            "Lcom/vk/id/auth/VKIDAuthParams$Theme;",
            "Z",
            "Lcom/vk/id/OAuth;",
            "Lcom/vk/id/auth/Prompt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthParams;->locale:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    .line 38
    iput-object p2, p0, Lcom/vk/id/auth/VKIDAuthParams;->theme:Lcom/vk/id/auth/VKIDAuthParams$Theme;

    .line 42
    iput-boolean p3, p0, Lcom/vk/id/auth/VKIDAuthParams;->useOAuthProviderIfPossible:Z

    .line 47
    iput-object p4, p0, Lcom/vk/id/auth/VKIDAuthParams;->oAuth:Lcom/vk/id/OAuth;

    .line 52
    iput-object p5, p0, Lcom/vk/id/auth/VKIDAuthParams;->prompt:Lcom/vk/id/auth/Prompt;

    .line 56
    iput-object p6, p0, Lcom/vk/id/auth/VKIDAuthParams;->state:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcom/vk/id/auth/VKIDAuthParams;->codeChallenge:Ljava/lang/String;

    .line 69
    iput-object p8, p0, Lcom/vk/id/auth/VKIDAuthParams;->scopes:Ljava/util/Set;

    .line 73
    iput-object p9, p0, Lcom/vk/id/auth/VKIDAuthParams;->extraParams:Ljava/util/Map;

    .line 77
    iput-boolean p10, p0, Lcom/vk/id/auth/VKIDAuthParams;->internalUse:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vk/id/auth/VKIDAuthParams$Locale;Lcom/vk/id/auth/VKIDAuthParams$Theme;ZLcom/vk/id/OAuth;Lcom/vk/id/auth/Prompt;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p9

    :goto_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v12, v0

    goto :goto_1

    :cond_1
    move/from16 v12, p10

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 30
    invoke-direct/range {v2 .. v12}, Lcom/vk/id/auth/VKIDAuthParams;-><init>(Lcom/vk/id/auth/VKIDAuthParams$Locale;Lcom/vk/id/auth/VKIDAuthParams$Theme;ZLcom/vk/id/OAuth;Lcom/vk/id/auth/Prompt;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/id/auth/VKIDAuthParams$Locale;Lcom/vk/id/auth/VKIDAuthParams$Theme;ZLcom/vk/id/OAuth;Lcom/vk/id/auth/Prompt;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/vk/id/auth/VKIDAuthParams;-><init>(Lcom/vk/id/auth/VKIDAuthParams$Locale;Lcom/vk/id/auth/VKIDAuthParams$Theme;ZLcom/vk/id/OAuth;Lcom/vk/id/auth/Prompt;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 343
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.vk.id.auth.VKIDAuthParams"

    .line 345
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/vk/id/auth/VKIDAuthParams;

    .line 347
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->locale:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    iget-object v3, p1, Lcom/vk/id/auth/VKIDAuthParams;->locale:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    if-eq v1, v3, :cond_3

    return v2

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->theme:Lcom/vk/id/auth/VKIDAuthParams$Theme;

    iget-object v3, p1, Lcom/vk/id/auth/VKIDAuthParams;->theme:Lcom/vk/id/auth/VKIDAuthParams$Theme;

    if-eq v1, v3, :cond_4

    return v2

    .line 349
    :cond_4
    iget-boolean v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->useOAuthProviderIfPossible:Z

    iget-boolean v3, p1, Lcom/vk/id/auth/VKIDAuthParams;->useOAuthProviderIfPossible:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 350
    :cond_5
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->oAuth:Lcom/vk/id/OAuth;

    iget-object v3, p1, Lcom/vk/id/auth/VKIDAuthParams;->oAuth:Lcom/vk/id/OAuth;

    if-eq v1, v3, :cond_6

    return v2

    .line 351
    :cond_6
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->prompt:Lcom/vk/id/auth/Prompt;

    iget-object v3, p1, Lcom/vk/id/auth/VKIDAuthParams;->prompt:Lcom/vk/id/auth/Prompt;

    if-eq v1, v3, :cond_7

    return v2

    .line 352
    :cond_7
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->state:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/id/auth/VKIDAuthParams;->state:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 353
    :cond_8
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->codeChallenge:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/id/auth/VKIDAuthParams;->codeChallenge:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 354
    :cond_9
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->scopes:Ljava/util/Set;

    iget-object v3, p1, Lcom/vk/id/auth/VKIDAuthParams;->scopes:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 355
    :cond_a
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->extraParams:Ljava/util/Map;

    iget-object v3, p1, Lcom/vk/id/auth/VKIDAuthParams;->extraParams:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 356
    :cond_b
    iget-boolean v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->internalUse:Z

    iget-boolean p1, p1, Lcom/vk/id/auth/VKIDAuthParams;->internalUse:Z

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getCodeChallenge$vkid_release()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams;->codeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtraParams$vkid_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams;->extraParams:Ljava/util/Map;

    return-object v0
.end method

.method public final getInternalUse$vkid_release()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/vk/id/auth/VKIDAuthParams;->internalUse:Z

    return v0
.end method

.method public final getLocale$vkid_release()Lcom/vk/id/auth/VKIDAuthParams$Locale;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams;->locale:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    return-object v0
.end method

.method public final getOAuth$vkid_release()Lcom/vk/id/OAuth;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams;->oAuth:Lcom/vk/id/OAuth;

    return-object v0
.end method

.method public final getPrompt$vkid_release()Lcom/vk/id/auth/Prompt;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams;->prompt:Lcom/vk/id/auth/Prompt;

    return-object v0
.end method

.method public final getScopes$vkid_release()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams;->scopes:Ljava/util/Set;

    return-object v0
.end method

.method public final getState$vkid_release()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final getTheme$vkid_release()Lcom/vk/id/auth/VKIDAuthParams$Theme;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams;->theme:Lcom/vk/id/auth/VKIDAuthParams$Theme;

    return-object v0
.end method

.method public final getUseOAuthProviderIfPossible$vkid_release()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/vk/id/auth/VKIDAuthParams;->useOAuthProviderIfPossible:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams;->locale:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/id/auth/VKIDAuthParams$Locale;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 364
    iget-object v2, p0, Lcom/vk/id/auth/VKIDAuthParams;->theme:Lcom/vk/id/auth/VKIDAuthParams$Theme;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/vk/id/auth/VKIDAuthParams$Theme;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 365
    iget-boolean v2, p0, Lcom/vk/id/auth/VKIDAuthParams;->useOAuthProviderIfPossible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 366
    iget-object v2, p0, Lcom/vk/id/auth/VKIDAuthParams;->oAuth:Lcom/vk/id/OAuth;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/vk/id/OAuth;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 367
    iget-object v2, p0, Lcom/vk/id/auth/VKIDAuthParams;->prompt:Lcom/vk/id/auth/Prompt;

    invoke-virtual {v2}, Lcom/vk/id/auth/Prompt;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 368
    iget-object v2, p0, Lcom/vk/id/auth/VKIDAuthParams;->state:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 369
    iget-object v2, p0, Lcom/vk/id/auth/VKIDAuthParams;->codeChallenge:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 370
    iget-object v2, p0, Lcom/vk/id/auth/VKIDAuthParams;->scopes:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 371
    iget-object v2, p0, Lcom/vk/id/auth/VKIDAuthParams;->extraParams:Ljava/util/Map;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 372
    iget-boolean v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->internalUse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final newBuilder(Lkotlin/jvm/functions/Function1;)Lcom/vk/id/auth/VKIDAuthParams;
    .locals 2
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vk/id/auth/VKIDAuthParams$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/vk/id/auth/VKIDAuthParams;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    new-instance v0, Lcom/vk/id/auth/VKIDAuthParams$Builder;

    invoke-direct {v0}, Lcom/vk/id/auth/VKIDAuthParams$Builder;-><init>()V

    .line 310
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->locale:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setLocale(Lcom/vk/id/auth/VKIDAuthParams$Locale;)V

    .line 311
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->theme:Lcom/vk/id/auth/VKIDAuthParams$Theme;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setTheme(Lcom/vk/id/auth/VKIDAuthParams$Theme;)V

    .line 312
    iget-boolean v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->useOAuthProviderIfPossible:Z

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setUseOAuthProviderIfPossible(Z)V

    .line 313
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->oAuth:Lcom/vk/id/OAuth;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setOAuth(Lcom/vk/id/OAuth;)V

    .line 314
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->prompt:Lcom/vk/id/auth/Prompt;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setPrompt(Lcom/vk/id/auth/Prompt;)V

    .line 315
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setState(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->codeChallenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setCodeChallenge(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->scopes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setScopes(Ljava/util/Set;)V

    .line 318
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->extraParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setExtraParams(Ljava/util/Map;)V

    .line 319
    iget-boolean v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->internalUse:Z

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setInternalUse(Z)V

    .line 320
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {v0}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->build()Lcom/vk/id/auth/VKIDAuthParams;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 327
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams;->locale:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    .line 328
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams;->theme:Lcom/vk/id/auth/VKIDAuthParams$Theme;

    .line 329
    iget-boolean v2, p0, Lcom/vk/id/auth/VKIDAuthParams;->useOAuthProviderIfPossible:Z

    .line 330
    iget-object v3, p0, Lcom/vk/id/auth/VKIDAuthParams;->oAuth:Lcom/vk/id/OAuth;

    .line 331
    iget-object v4, p0, Lcom/vk/id/auth/VKIDAuthParams;->prompt:Lcom/vk/id/auth/Prompt;

    .line 332
    iget-object v5, p0, Lcom/vk/id/auth/VKIDAuthParams;->state:Ljava/lang/String;

    .line 333
    iget-object v6, p0, Lcom/vk/id/auth/VKIDAuthParams;->codeChallenge:Ljava/lang/String;

    .line 334
    iget-object v7, p0, Lcom/vk/id/auth/VKIDAuthParams;->scopes:Ljava/util/Set;

    .line 335
    iget-object v8, p0, Lcom/vk/id/auth/VKIDAuthParams;->extraParams:Ljava/util/Map;

    .line 336
    iget-boolean v9, p0, Lcom/vk/id/auth/VKIDAuthParams;->internalUse:Z

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "VKIDAuthParams(locale="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", theme="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useOAuthProviderIfPossible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codeChallenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scopes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", internalUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
