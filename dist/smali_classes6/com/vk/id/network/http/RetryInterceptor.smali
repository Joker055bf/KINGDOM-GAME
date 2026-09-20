.class public final Lcom/vk/id/network/http/RetryInterceptor;
.super Ljava/lang/Object;
.source "RetryInterceptor.kt"

# interfaces
.implements Lcom/vk/id/network/http/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/network/http/RetryInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRetryInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryInterceptor.kt\ncom/vk/id/network/http/RetryInterceptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB!\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0003H\u0002J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/vk/id/network/http/RetryInterceptor;",
        "Lcom/vk/id/network/http/Interceptor;",
        "maxRetries",
        "",
        "retryableStatusCodes",
        "",
        "<init>",
        "(ILjava/util/Set;)V",
        "getMaxRetries",
        "()I",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "intercept",
        "Lcom/vk/id/network/http/HttpResponse;",
        "chain",
        "Lcom/vk/id/network/http/Interceptor$Chain;",
        "(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shouldRetryByStatusCode",
        "",
        "statusCode",
        "isRetryableError",
        "error",
        "",
        "isIdempotent",
        "method",
        "",
        "getRetryDelay",
        "",
        "attempt",
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
.field public static final BASE_RETRY_DELAY_MS:J = 0x3e8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/vk/id/network/http/RetryInterceptor$Companion;

.field public static final DEFAULT_MAX_RETRIES:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_RETRYABLE_STATUSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IDEMPOTENT_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_RETRY_DELAY_MS:J = 0x1388L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;

.field private final maxRetries:I

.field private final retryableStatusCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vk/id/network/http/RetryInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/network/http/RetryInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/network/http/RetryInterceptor;->Companion:Lcom/vk/id/network/http/RetryInterceptor$Companion;

    const-string v0, "PUT"

    const-string v1, "DELETE"

    const-string v2, "GET"

    const-string v3, "HEAD"

    const-string v4, "OPTIONS"

    .line 135
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vk/id/network/http/RetryInterceptor;->IDEMPOTENT_METHODS:Ljava/util/Set;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x198

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x1ad

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1f4

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x1f6

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x1f7

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x1f8

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 138
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vk/id/network/http/RetryInterceptor;->DEFAULT_RETRYABLE_STATUSES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lcom/vk/id/network/http/RetryInterceptor;-><init>(ILjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "retryableStatusCodes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/vk/id/network/http/RetryInterceptor;->maxRetries:I

    .line 33
    iput-object p2, p0, Lcom/vk/id/network/http/RetryInterceptor;->retryableStatusCodes:Ljava/util/Set;

    .line 36
    sget-object p1, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string p2, "RetryInterceptor"

    invoke-virtual {p1, p2}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/http/RetryInterceptor;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x3

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 33
    sget-object p2, Lcom/vk/id/network/http/RetryInterceptor;->DEFAULT_RETRYABLE_STATUSES:Ljava/util/Set;

    .line 31
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/vk/id/network/http/RetryInterceptor;-><init>(ILjava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_RETRYABLE_STATUSES$cp()Ljava/util/Set;
    .locals 1

    .line 31
    sget-object v0, Lcom/vk/id/network/http/RetryInterceptor;->DEFAULT_RETRYABLE_STATUSES:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getIDEMPOTENT_METHODS$cp()Ljava/util/Set;
    .locals 1

    .line 31
    sget-object v0, Lcom/vk/id/network/http/RetryInterceptor;->IDEMPOTENT_METHODS:Ljava/util/Set;

    return-object v0
.end method

.method private final isIdempotent(Ljava/lang/String;)Z
    .locals 2

    .line 114
    sget-object v0, Lcom/vk/id/network/http/RetryInterceptor;->IDEMPOTENT_METHODS:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toUpperCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final isRetryableError(Ljava/lang/Throwable;)Z
    .locals 5

    .line 94
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    instance-of v0, p1, Ljava/io/IOException;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "connection reset"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "connection refused"

    .line 100
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "network is unreachable"

    .line 101
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "broken pipe"

    .line 102
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    :goto_0
    return v2

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method

.method private final shouldRetryByStatusCode(I)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/vk/id/network/http/RetryInterceptor;->retryableStatusCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final getMaxRetries()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/vk/id/network/http/RetryInterceptor;->maxRetries:I

    return v0
.end method

.method public final getRetryDelay(I)J
    .locals 5

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 125
    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Lkotlin/random/Random$Default;->nextInt(II)I

    move-result v0

    const-wide/16 v1, 0x3e8

    int-to-long v3, v0

    add-long/2addr v3, v1

    int-to-long v0, p1

    mul-long/2addr v3, v0

    const-wide/16 v0, 0x1388

    .line 127
    invoke-static {v3, v4, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public intercept(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
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

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;

    iget v3, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;

    invoke-direct {v2, v1, v0}, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;-><init>(Lcom/vk/id/network/http/RetryInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 38
    iget v4, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->label:I

    const-string v7, " for "

    const-string v8, "Retry attempt "

    const-string v9, "Request failed after "

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v13, :cond_3

    if-eq v4, v12, :cond_2

    if-ne v4, v11, :cond_1

    iget v4, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->I$1:I

    iget v14, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->I$0:I

    iget-object v15, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$2:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Throwable;

    iget-object v10, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/vk/id/network/http/Interceptor$Chain;

    iget-object v11, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/vk/id/network/http/RetryInterceptor;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v13, 0x3

    const-wide/16 v16, 0x0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v4, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->I$1:I

    iget v10, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->I$0:I

    iget-object v11, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Throwable;

    iget-object v14, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/vk/id/network/http/Interceptor$Chain;

    iget-object v15, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/vk/id/network/http/RetryInterceptor;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :cond_3
    iget v4, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->I$1:I

    iget v10, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->I$0:I

    iget-object v11, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Throwable;

    iget-object v14, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/vk/id/network/http/Interceptor$Chain;

    iget-object v15, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/vk/id/network/http/RetryInterceptor;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_1
    move-object v11, v15

    move-object/from16 v18, v14

    move v14, v10

    move-object/from16 v10, v18

    goto/16 :goto_5

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    iget v0, v1, Lcom/vk/id/network/http/RetryInterceptor;->maxRetries:I

    const/4 v4, 0x0

    move-object v11, v1

    if-ltz v0, :cond_e

    move-object v10, v3

    const/4 v14, 0x0

    move v3, v0

    move-object v0, v4

    move-object v4, v2

    move-object/from16 v2, p1

    .line 44
    :goto_2
    :try_start_2
    invoke-interface {v2}, Lcom/vk/id/network/http/Interceptor$Chain;->request()Lcom/vk/id/network/http/HttpRequest;

    move-result-object v15

    iput-object v11, v4, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput-object v0, v4, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$2:Ljava/lang/Object;

    iput v14, v4, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->I$0:I

    iput v3, v4, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->I$1:I

    iput v13, v4, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->label:I

    invoke-interface {v2, v15, v4}, Lcom/vk/id/network/http/Interceptor$Chain;->proceed(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v15, v10, :cond_5

    return-object v10

    :cond_5
    move-object/from16 v18, v11

    move-object v11, v0

    move-object v0, v15

    move-object/from16 v15, v18

    move/from16 v19, v14

    move-object v14, v2

    move-object v2, v4

    move v4, v3

    move-object v3, v10

    move/from16 v10, v19

    .line 38
    :goto_3
    :try_start_3
    check-cast v0, Lcom/vk/id/network/http/HttpResponse;

    .line 46
    iget v13, v15, Lcom/vk/id/network/http/RetryInterceptor;->maxRetries:I

    if-ge v10, v13, :cond_8

    invoke-virtual {v0}, Lcom/vk/id/network/http/HttpResponse;->getCode()I

    move-result v13

    invoke-direct {v15, v13}, Lcom/vk/id/network/http/RetryInterceptor;->shouldRetryByStatusCode(I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 47
    iget-object v13, v15, Lcom/vk/id/network/http/RetryInterceptor;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    invoke-interface {v14}, Lcom/vk/id/network/http/Interceptor$Chain;->request()Lcom/vk/id/network/http/HttpRequest;

    move-result-object v16
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lcom/vk/id/network/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/vk/id/network/http/HttpResponse;->getCode()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to status code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Lcom/vk/id/logger/InternalVKIDLogger;->debug(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v15, v10}, Lcom/vk/id/network/http/RetryInterceptor;->getRetryDelay(I)J

    move-result-wide v5

    const-wide/16 v12, 0x0

    cmp-long v0, v5, v12

    if-lez v0, :cond_7

    .line 50
    iput-object v15, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$2:Ljava/lang/Object;

    iput v10, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->I$0:I

    iput v4, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->I$1:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v12, 0x2

    :try_start_5
    iput v12, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->label:I

    invoke-static {v5, v6, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    if-ne v0, v3, :cond_6

    return-object v3

    :cond_6
    :goto_4
    move-object v5, v3

    move v3, v4

    move-object v0, v11

    move-object v11, v15

    const/4 v13, 0x3

    const-wide/16 v16, 0x0

    move-object v4, v2

    move-object v2, v14

    goto/16 :goto_8

    :cond_7
    const/4 v12, 0x2

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v12, 0x2

    goto/16 :goto_1

    :cond_8
    return-object v0

    :catch_2
    move-exception v0

    move-object/from16 v18, v10

    move-object v10, v2

    move-object v2, v4

    move v4, v3

    move-object/from16 v3, v18

    .line 57
    :goto_5
    move-object v15, v0

    check-cast v15, Ljava/lang/Throwable;

    .line 59
    iget v5, v11, Lcom/vk/id/network/http/RetryInterceptor;->maxRetries:I

    if-ge v14, v5, :cond_9

    .line 60
    invoke-interface {v10}, Lcom/vk/id/network/http/Interceptor$Chain;->request()Lcom/vk/id/network/http/HttpRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/id/network/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Lcom/vk/id/network/http/RetryInterceptor;->isIdempotent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 61
    invoke-direct {v11, v15}, Lcom/vk/id/network/http/RetryInterceptor;->isRetryableError(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_d

    .line 68
    iget-object v5, v11, Lcom/vk/id/network/http/RetryInterceptor;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    invoke-interface {v10}, Lcom/vk/id/network/http/Interceptor$Chain;->request()Lcom/vk/id/network/http/HttpRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vk/id/network/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " due to error: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/vk/id/logger/InternalVKIDLogger;->debug(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v11, v14}, Lcom/vk/id/network/http/RetryInterceptor;->getRetryDelay(I)J

    move-result-wide v5

    const-wide/16 v16, 0x0

    cmp-long v0, v5, v16

    if-lez v0, :cond_b

    .line 72
    iput-object v11, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput-object v15, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->L$2:Ljava/lang/Object;

    iput v14, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->I$0:I

    iput v4, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->I$1:I

    const/4 v13, 0x3

    iput v13, v2, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->label:I

    invoke-static {v5, v6, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    return-object v3

    :cond_a
    :goto_7
    move-object v5, v3

    move v3, v4

    move-object v0, v15

    move-object v4, v2

    move-object v2, v10

    move v10, v14

    goto :goto_8

    :cond_b
    const/4 v13, 0x3

    goto :goto_7

    :goto_8
    if-eq v10, v3, :cond_c

    add-int/lit8 v14, v10, 0x1

    move-object v10, v5

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_c
    move-object v4, v0

    goto :goto_9

    .line 64
    :cond_d
    iget-object v2, v11, Lcom/vk/id/network/http/RetryInterceptor;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attempt(s): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v15}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    throw v0

    :cond_e
    :goto_9
    if-eqz v4, :cond_f

    .line 77
    throw v4

    .line 79
    :cond_f
    new-instance v0, Ljava/io/IOException;

    iget v2, v11, Lcom/vk/id/network/http/RetryInterceptor;->maxRetries:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attempts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
