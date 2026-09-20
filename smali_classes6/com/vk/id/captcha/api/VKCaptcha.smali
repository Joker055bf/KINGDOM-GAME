.class public final Lcom/vk/id/captcha/api/VKCaptcha;
.super Ljava/lang/Object;
.source "VKCaptcha.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008<\u0010\u0004J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\'\u0010\u0017\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00022\u0008\u0010\u0019\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ!\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008 \u0010!R\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00100\"8\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R$\u0010%\u001a\u0004\u0018\u00010\u00158\u0001@\u0001X\u0081\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001b\u00100\u001a\u00020+8AX\u0081\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\"\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\"8\u0001X\u0081\u0004\u00a2\u0006\u000c\n\u0004\u00081\u0010$\u001a\u0004\u00082\u00103R$\u00104\u001a\u0004\u0018\u00010\u000c8\u0001@\u0001X\u0081\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u0010!R$\u00109\u001a\u0004\u0018\u00010\u000c8\u0001@\u0001X\u0081\u000e\u00a2\u0006\u0012\n\u0004\u00089\u00105\u001a\u0004\u0008:\u00107\"\u0004\u0008;\u0010!"
    }
    d2 = {
        "Lcom/vk/id/captcha/api/VKCaptcha;",
        "",
        "",
        "closeCaptcha",
        "()V",
        "Lcom/vk/id/captcha/a;",
        "state",
        "closeCaptcha$captcha_release",
        "(Lcom/vk/id/captcha/a;)V",
        "Ljava/util/Locale;",
        "getLocale",
        "()Ljava/util/Locale;",
        "",
        "domain",
        "getToken",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "init",
        "(Landroid/content/Context;)V",
        "redirectUri",
        "Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;",
        "listener",
        "openCaptcha",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;)V",
        "locale",
        "setLocale",
        "(Ljava/util/Locale;)V",
        "token",
        "setResult$captcha_release",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "userAgent",
        "setUserAgent",
        "(Ljava/lang/String;)V",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "appContext",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "captchaListener",
        "Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;",
        "getCaptchaListener$captcha_release",
        "()Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;",
        "setCaptchaListener$captcha_release",
        "(Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;)V",
        "Lcom/vk/id/captcha/a/a;",
        "captchaStorage$delegate",
        "Lkotlin/Lazy;",
        "getCaptchaStorage$captcha_release",
        "()Lcom/vk/id/captcha/a/a;",
        "captchaStorage",
        "internalLocale",
        "getInternalLocale$captcha_release",
        "()Ljava/util/concurrent/atomic/AtomicReference;",
        "lastDomain",
        "Ljava/lang/String;",
        "getLastDomain$captcha_release",
        "()Ljava/lang/String;",
        "setLastDomain$captcha_release",
        "lastRedirectUri",
        "getLastRedirectUri$captcha_release",
        "setLastRedirectUri$captcha_release",
        "<init>"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

.field private static final appContext:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile captchaListener:Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;

.field private static final captchaStorage$delegate:Lkotlin/Lazy;

.field private static final internalLocale:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile lastDomain:Ljava/lang/String;

.field private static volatile lastRedirectUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-direct {v0}, Lcom/vk/id/captcha/api/VKCaptcha;-><init>()V

    sput-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    .line 104
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha$captchaStorage$2;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha$captchaStorage$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->captchaStorage$delegate:Lkotlin/Lazy;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->appContext:Ljava/util/concurrent/atomic/AtomicReference;

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->internalLocale:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getLocale()Ljava/util/Locale;
    .locals 2

    .line 213
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->internalLocale:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/vk/id/captcha/api/VKCaptcha;

    .line 214
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->appContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/content/Context;

    .line 216
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    const-string v1, ""

    .line 219
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final closeCaptcha()V
    .locals 1

    .line 192
    sget-object v0, Lcom/vk/id/captcha/a$a;->INSTANCE:Lcom/vk/id/captcha/a$a;

    check-cast v0, Lcom/vk/id/captcha/a;

    invoke-virtual {p0, v0}, Lcom/vk/id/captcha/api/VKCaptcha;->closeCaptcha$captcha_release(Lcom/vk/id/captcha/a;)V

    return-void
.end method

.method public final closeCaptcha$captcha_release(Lcom/vk/id/captcha/a;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/vk/id/captcha/b/a;->a:Lcom/vk/id/captcha/b/a$a;

    invoke-static {}, Lcom/vk/id/captcha/b/a$a;->a()Lcom/vk/id/captcha/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/id/captcha/b/a;->a()Lcom/vk/id/captcha/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/vk/id/captcha/c/e;->a()V

    .line 197
    invoke-static {p1}, Lcom/vk/id/captcha/api/VKCaptchaKt;->setResult(Lcom/vk/id/captcha/a;)V

    return-void
.end method

.method public final getCaptchaListener$captcha_release()Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;
    .locals 1

    .line 96
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->captchaListener:Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;

    return-object v0
.end method

.method public final getCaptchaStorage$captcha_release()Lcom/vk/id/captcha/a/a;
    .locals 1

    .line 104
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->captchaStorage$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/captcha/a/a;

    return-object v0
.end method

.method public final getInternalLocale$captcha_release()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->internalLocale:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public final getLastDomain$captcha_release()Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->lastDomain:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastRedirectUri$captcha_release()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->lastRedirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/vk/id/captcha/api/VKCaptcha;->getCaptchaStorage$captcha_release()Lcom/vk/id/captcha/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vk/id/captcha/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/vk/id/captcha/api/VKCaptcha;->appContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 117
    sget-object v1, Lcom/vk/id/captcha/b/a;->a:Lcom/vk/id/captcha/b/a$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vk/id/captcha/b/a$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final openCaptcha(Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;)V
    .locals 5

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/vk/id/captcha/api/VKCaptcha;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xc81

    if-eq v3, v4, :cond_d

    const/16 v4, 0xca9

    if-eq v3, v4, :cond_c

    const/16 v4, 0xcae

    if-eq v3, v4, :cond_a

    const/16 v4, 0xccc

    if-eq v3, v4, :cond_8

    const/16 v4, 0xdfc

    if-eq v3, v4, :cond_6

    const/16 v4, 0xe43

    if-eq v3, v4, :cond_4

    const/16 v4, 0xe7e

    if-eq v3, v4, :cond_2

    const/16 v4, 0xe96

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "uk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    const-string v3, "tr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x52

    goto :goto_0

    :cond_4
    const-string v3, "ru"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    const-string v3, "pl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v2, 0xf

    goto :goto_0

    :cond_8
    const-string v3, "fr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v2, 0x10

    goto :goto_0

    :cond_a
    const-string v3, "es"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x4

    goto :goto_0

    :cond_c
    const-string v3, "en"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_d
    const-string v3, "de"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x6

    .line 171
    :cond_f
    :goto_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "lang_id"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    sput-object p3, Lcom/vk/id/captcha/api/VKCaptcha;->captchaListener:Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;

    .line 174
    sput-object p1, Lcom/vk/id/captcha/api/VKCaptcha;->lastDomain:Ljava/lang/String;

    .line 175
    sput-object p2, Lcom/vk/id/captcha/api/VKCaptcha;->lastRedirectUri:Ljava/lang/String;

    .line 176
    sget-object p3, Lcom/vk/id/captcha/b/a;->a:Lcom/vk/id/captcha/b/a$a;

    invoke-static {}, Lcom/vk/id/captcha/b/a$a;->a()Lcom/vk/id/captcha/b/a;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/vk/id/captcha/b/a;->a(Z)V

    .line 177
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    .line 178
    sget-object p3, Lcom/vk/id/captcha/api/VKCaptcha;->appContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_10

    check-cast p3, Landroid/content/Context;

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;

    invoke-direct {v0, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "VK_CAPTCHA_URL_KEY"

    .line 181
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "VK_CAPTCHA_CHALLENGE_DOMAIN_URL_KEY"

    .line 182
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_10
    const-string p1, "Required value was null."

    .line 178
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 172
    monitor-exit p0

    throw p1
.end method

.method public final setCaptchaListener$captcha_release(Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;)V
    .locals 0

    .line 96
    sput-object p1, Lcom/vk/id/captcha/api/VKCaptcha;->captchaListener:Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;

    return-void
.end method

.method public final setLastDomain$captcha_release(Ljava/lang/String;)V
    .locals 0

    .line 99
    sput-object p1, Lcom/vk/id/captcha/api/VKCaptcha;->lastDomain:Ljava/lang/String;

    return-void
.end method

.method public final setLastRedirectUri$captcha_release(Ljava/lang/String;)V
    .locals 0

    .line 102
    sput-object p1, Lcom/vk/id/captcha/api/VKCaptcha;->lastRedirectUri:Ljava/lang/String;

    return-void
.end method

.method public final setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 127
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->internalLocale:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setResult$captcha_release(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/vk/id/captcha/a$d;

    invoke-direct {v0, p1, p2}, Lcom/vk/id/captcha/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/vk/id/captcha/a;

    invoke-static {v0}, Lcom/vk/id/captcha/api/VKCaptchaKt;->setResult(Lcom/vk/id/captcha/a;)V

    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "No longer necessary and is now noop. Will be removed in version 1.0.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
