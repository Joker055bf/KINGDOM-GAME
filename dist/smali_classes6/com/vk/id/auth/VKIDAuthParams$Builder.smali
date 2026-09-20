.class public final Lcom/vk/id/auth/VKIDAuthParams$Builder;
.super Ljava/lang/Object;
.source "VKIDAuthParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/auth/VKIDAuthParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010<\u001a\u00020=R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010(\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010%\"\u0004\u0008*\u0010\'R \u0010+\u001a\u0008\u0012\u0004\u0012\u00020#0,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R2\u00101\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#\u0018\u0001028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00083\u0010\u0003\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R$\u00108\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00089\u0010\u0003\u001a\u0004\u0008:\u0010\u0013\"\u0004\u0008;\u0010\u0015\u00a8\u0006>"
    }
    d2 = {
        "Lcom/vk/id/auth/VKIDAuthParams$Builder;",
        "",
        "<init>",
        "()V",
        "locale",
        "Lcom/vk/id/auth/VKIDAuthParams$Locale;",
        "getLocale",
        "()Lcom/vk/id/auth/VKIDAuthParams$Locale;",
        "setLocale",
        "(Lcom/vk/id/auth/VKIDAuthParams$Locale;)V",
        "theme",
        "Lcom/vk/id/auth/VKIDAuthParams$Theme;",
        "getTheme",
        "()Lcom/vk/id/auth/VKIDAuthParams$Theme;",
        "setTheme",
        "(Lcom/vk/id/auth/VKIDAuthParams$Theme;)V",
        "useOAuthProviderIfPossible",
        "",
        "getUseOAuthProviderIfPossible",
        "()Z",
        "setUseOAuthProviderIfPossible",
        "(Z)V",
        "oAuth",
        "Lcom/vk/id/OAuth;",
        "getOAuth",
        "()Lcom/vk/id/OAuth;",
        "setOAuth",
        "(Lcom/vk/id/OAuth;)V",
        "prompt",
        "Lcom/vk/id/auth/Prompt;",
        "getPrompt",
        "()Lcom/vk/id/auth/Prompt;",
        "setPrompt",
        "(Lcom/vk/id/auth/Prompt;)V",
        "state",
        "",
        "getState",
        "()Ljava/lang/String;",
        "setState",
        "(Ljava/lang/String;)V",
        "codeChallenge",
        "getCodeChallenge",
        "setCodeChallenge",
        "scopes",
        "",
        "getScopes",
        "()Ljava/util/Set;",
        "setScopes",
        "(Ljava/util/Set;)V",
        "extraParams",
        "",
        "getExtraParams$annotations",
        "getExtraParams",
        "()Ljava/util/Map;",
        "setExtraParams",
        "(Ljava/util/Map;)V",
        "internalUse",
        "getInternalUse$annotations",
        "getInternalUse",
        "setInternalUse",
        "build",
        "Lcom/vk/id/auth/VKIDAuthParams;",
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
.field private codeChallenge:Ljava/lang/String;

.field private extraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private internalUse:Z

.field private locale:Lcom/vk/id/auth/VKIDAuthParams$Locale;

.field private oAuth:Lcom/vk/id/OAuth;

.field private prompt:Lcom/vk/id/auth/Prompt;

.field private scopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/String;

.field private theme:Lcom/vk/id/auth/VKIDAuthParams$Theme;

.field private useOAuthProviderIfPossible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->useOAuthProviderIfPossible:Z

    .line 246
    sget-object v0, Lcom/vk/id/auth/Prompt;->BLANK:Lcom/vk/id/auth/Prompt;

    iput-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->prompt:Lcom/vk/id/auth/Prompt;

    .line 272
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->scopes:Ljava/util/Set;

    return-void
.end method

.method public static synthetic getExtraParams$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getInternalUse$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method


# virtual methods
.method public final build()Lcom/vk/id/auth/VKIDAuthParams;
    .locals 13

    .line 292
    new-instance v12, Lcom/vk/id/auth/VKIDAuthParams;

    .line 293
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->locale:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    .line 294
    iget-object v2, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->theme:Lcom/vk/id/auth/VKIDAuthParams$Theme;

    .line 295
    iget-boolean v3, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->useOAuthProviderIfPossible:Z

    .line 296
    iget-object v4, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->oAuth:Lcom/vk/id/OAuth;

    .line 297
    iget-object v5, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->prompt:Lcom/vk/id/auth/Prompt;

    .line 298
    iget-object v6, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->state:Ljava/lang/String;

    .line 299
    iget-object v7, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->codeChallenge:Ljava/lang/String;

    .line 300
    iget-object v8, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->scopes:Ljava/util/Set;

    .line 301
    iget-object v9, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->extraParams:Ljava/util/Map;

    .line 302
    iget-boolean v10, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->internalUse:Z

    const/4 v11, 0x0

    move-object v0, v12

    .line 292
    invoke-direct/range {v0 .. v11}, Lcom/vk/id/auth/VKIDAuthParams;-><init>(Lcom/vk/id/auth/VKIDAuthParams$Locale;Lcom/vk/id/auth/VKIDAuthParams$Theme;ZLcom/vk/id/OAuth;Lcom/vk/id/auth/Prompt;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method public final getCodeChallenge()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->codeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtraParams()Ljava/util/Map;
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

    .line 277
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->extraParams:Ljava/util/Map;

    return-object v0
.end method

.method public final getInternalUse()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->internalUse:Z

    return v0
.end method

.method public final getLocale()Lcom/vk/id/auth/VKIDAuthParams$Locale;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->locale:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    return-object v0
.end method

.method public final getOAuth()Lcom/vk/id/OAuth;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->oAuth:Lcom/vk/id/OAuth;

    return-object v0
.end method

.method public final getPrompt()Lcom/vk/id/auth/Prompt;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->prompt:Lcom/vk/id/auth/Prompt;

    return-object v0
.end method

.method public final getScopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->scopes:Ljava/util/Set;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final getTheme()Lcom/vk/id/auth/VKIDAuthParams$Theme;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->theme:Lcom/vk/id/auth/VKIDAuthParams$Theme;

    return-object v0
.end method

.method public final getUseOAuthProviderIfPossible()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->useOAuthProviderIfPossible:Z

    return v0
.end method

.method public final setCodeChallenge(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->codeChallenge:Ljava/lang/String;

    return-void
.end method

.method public final setExtraParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->extraParams:Ljava/util/Map;

    return-void
.end method

.method public final setInternalUse(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->internalUse:Z

    return-void
.end method

.method public final setLocale(Lcom/vk/id/auth/VKIDAuthParams$Locale;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->locale:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    return-void
.end method

.method public final setOAuth(Lcom/vk/id/OAuth;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->oAuth:Lcom/vk/id/OAuth;

    return-void
.end method

.method public final setPrompt(Lcom/vk/id/auth/Prompt;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->prompt:Lcom/vk/id/auth/Prompt;

    return-void
.end method

.method public final setScopes(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->scopes:Ljava/util/Set;

    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->state:Ljava/lang/String;

    return-void
.end method

.method public final setTheme(Lcom/vk/id/auth/VKIDAuthParams$Theme;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->theme:Lcom/vk/id/auth/VKIDAuthParams$Theme;

    return-void
.end method

.method public final setUseOAuthProviderIfPossible(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/vk/id/auth/VKIDAuthParams$Builder;->useOAuthProviderIfPossible:Z

    return-void
.end method
