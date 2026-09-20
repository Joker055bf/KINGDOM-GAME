.class public final Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;
.super Ljava/lang/Object;
.source "HitmanChallengeHandlingInterceptor.kt"

# interfaces
.implements Lcom/vk/id/network/http/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHitmanChallengeHandlingInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitmanChallengeHandlingInterceptor.kt\ncom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1#2:78\n1734#3,3:79\n*S KotlinDebug\n*F\n+ 1 HitmanChallengeHandlingInterceptor.kt\ncom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor\n*L\n69#1:79,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0017\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0096@\u00a2\u0006\u0002\u0010\u000bJ\u001e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0082@\u00a2\u0006\u0002\u0010\u000fJ\u0014\u0010\u0010\u001a\u00020\u0011*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u000c\u0010\u0013\u001a\u00020\u0011*\u00020\u0011H\u0002J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u000c\u0010\u0017\u001a\u00020\u0004*\u00020\u0011H\u0002R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;",
        "Lcom/vk/id/network/http/Interceptor;",
        "domains",
        "",
        "",
        "<init>",
        "(Ljava/util/Set;)V",
        "intercept",
        "Lcom/vk/id/network/http/HttpResponse;",
        "chain",
        "Lcom/vk/id/network/http/Interceptor$Chain;",
        "(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "passCaptchaAndGetToken",
        "domain",
        "challengeUrl",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withChallengeSolution",
        "Lcom/vk/id/network/http/HttpRequest;",
        "token",
        "withSavedChallengeSolution",
        "shouldSkipCaptcha",
        "",
        "response",
        "getDomain",
        "Companion",
        "network_release"
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
.field private static final Companion:Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$Companion;

.field private static final HEADER_CHALLENGE:Ljava/lang/String; = "X-Challenge"

.field private static final HEADER_CHALLENGE_SOLUTION:Ljava/lang/String; = "X-Challenge-Solution"

.field private static final HEADER_CHALLENGE_URL:Ljava/lang/String; = "X-Challenge-Url"


# instance fields
.field private final domains:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;->Companion:Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;-><init>(Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "domains"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;->domains:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 20
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$passCaptchaAndGetToken(Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;->passCaptchaAndGetToken(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getDomain(Lcom/vk/id/network/http/HttpRequest;)Ljava/lang/String;
    .locals 4

    .line 73
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    const-string v3, ""

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final passCaptchaAndGetToken(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$passCaptchaAndGetToken$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$passCaptchaAndGetToken$1;

    iget v1, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$passCaptchaAndGetToken$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$passCaptchaAndGetToken$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$passCaptchaAndGetToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$passCaptchaAndGetToken$1;

    invoke-direct {v0, p0, p3}, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$passCaptchaAndGetToken$1;-><init>(Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$passCaptchaAndGetToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$passCaptchaAndGetToken$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    sget-object p3, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 44
    iput v3, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$passCaptchaAndGetToken$1;->label:I

    invoke-static {p3, p1, p2, v0}, Lcom/vk/id/network/http/captcha/VKCaptchaExtensionsKt;->openCaptchaSuspended(Lcom/vk/id/captcha/api/VKCaptcha;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 40
    :cond_3
    :goto_1
    check-cast p3, Lcom/vk/id/captcha/api/data/VKCaptchaResult;

    .line 48
    invoke-static {p3}, Lcom/vk/id/network/http/captcha/VKCaptchaExtensionsKt;->toResult(Lcom/vk/id/captcha/api/data/VKCaptchaResult;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final shouldSkipCaptcha(Lcom/vk/id/network/http/HttpResponse;Ljava/lang/String;)Z
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;->domains:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;->domains:Ljava/util/Set;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    if-nez p2, :cond_5

    :cond_0
    const-string p2, "X-Challenge"

    invoke-virtual {p1, p2}, Lcom/vk/id/network/http/HttpResponse;->headerValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 79
    instance-of p2, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    move p1, v0

    goto :goto_0

    .line 80
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v2, "required"

    .line 69
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    if-nez p2, :cond_3

    move p1, v1

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :cond_5
    :goto_1
    return v0
.end method

.method private final withChallengeSolution(Lcom/vk/id/network/http/HttpRequest;Ljava/lang/String;)Lcom/vk/id/network/http/HttpRequest;
    .locals 1

    .line 52
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->newBuilder()Lcom/vk/id/network/http/HttpRequest$Builder;

    move-result-object p1

    const-string v0, "X-Challenge-Solution"

    .line 53
    invoke-virtual {p1, v0, p2}, Lcom/vk/id/network/http/HttpRequest$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/HttpRequest$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest$Builder;->build()Lcom/vk/id/network/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method private final withSavedChallengeSolution(Lcom/vk/id/network/http/HttpRequest;)Lcom/vk/id/network/http/HttpRequest;
    .locals 3

    .line 58
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-virtual {v1, v0}, Lcom/vk/id/captcha/api/VKCaptcha;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Challenge-Solution"

    .line 60
    invoke-virtual {p1, v1}, Lcom/vk/id/network/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->newBuilder()Lcom/vk/id/network/http/HttpRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/vk/id/network/http/HttpRequest$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/HttpRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest$Builder;->build()Lcom/vk/id/network/http/HttpRequest;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public intercept(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/http/Interceptor$Chain;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;

    iget v1, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;

    invoke-direct {v0, p0, p2}, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;-><init>(Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/vk/id/network/http/Interceptor$Chain;

    iget-object v2, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/vk/id/network/http/Interceptor$Chain;

    iget-object v5, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    invoke-interface {p1}, Lcom/vk/id/network/http/Interceptor$Chain;->request()Lcom/vk/id/network/http/HttpRequest;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;->getDomain(Lcom/vk/id/network/http/HttpRequest;)Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-interface {p1}, Lcom/vk/id/network/http/Interceptor$Chain;->request()Lcom/vk/id/network/http/HttpRequest;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;->withSavedChallengeSolution(Lcom/vk/id/network/http/HttpRequest;)Lcom/vk/id/network/http/HttpRequest;

    move-result-object v2

    .line 33
    iput-object p0, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->label:I

    invoke-interface {p1, v2, v0}, Lcom/vk/id/network/http/Interceptor$Chain;->proceed(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, p0

    move-object v8, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v8

    .line 29
    :goto_1
    check-cast p2, Lcom/vk/id/network/http/HttpResponse;

    .line 34
    invoke-direct {v5, p2, p1}, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;->shouldSkipCaptcha(Lcom/vk/id/network/http/HttpResponse;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    return-object p2

    :cond_6
    const-string v7, "X-Challenge-Url"

    .line 35
    invoke-virtual {p2, v7}, Lcom/vk/id/network/http/HttpResponse;->headerValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_7

    return-object p2

    .line 36
    :cond_7
    iput-object v5, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->label:I

    invoke-direct {v5, p1, v7, v0}, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;->passCaptchaAndGetToken(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    move-object p1, v2

    move-object v2, v5

    .line 29
    :goto_2
    check-cast p2, Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Lcom/vk/id/network/http/Interceptor$Chain;->request()Lcom/vk/id/network/http/HttpRequest;

    move-result-object v4

    invoke-direct {v2, v4, p2}, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor;->withChallengeSolution(Lcom/vk/id/network/http/HttpRequest;Ljava/lang/String;)Lcom/vk/id/network/http/HttpRequest;

    move-result-object p2

    iput-object v6, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/vk/id/network/http/captcha/HitmanChallengeHandlingInterceptor$intercept$1;->label:I

    invoke-interface {p1, p2, v0}, Lcom/vk/id/network/http/Interceptor$Chain;->proceed(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    :goto_3
    return-object p2
.end method
