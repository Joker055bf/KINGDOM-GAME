.class public final Lcom/vk/id/network/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/network/http/HttpResponse$Builder;,
        Lcom/vk/id/network/http/HttpResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 22\u00020\u0001:\u000212BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0013\u0010!\u001a\u00020\u000c2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010#\u001a\u00020\u0005H\u0016J\u0008\u0010$\u001a\u00020\u0007H\u0016J\u0012\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020+H\u0007J\u0014\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00070-2\u0006\u0010.\u001a\u00020\u0007J\u0006\u0010/\u001a\u000200R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0010\u001a\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0010\u001a\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0010\u001a\u0004\u0008\u001a\u0010\u0018R(\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\n8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001b\u0010\u0010\u001a\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001e\u0010\u0010\u001a\u0004\u0008\u000b\u0010\u001fR\u0011\u0010 \u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001fR\u0011\u0010%\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u001fR\u0011\u0010&\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u001fR\u0011\u0010\'\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u001f\u00a8\u00063"
    }
    d2 = {
        "Lcom/vk/id/network/http/HttpResponse;",
        "",
        "request",
        "Lcom/vk/id/network/http/HttpRequest;",
        "code",
        "",
        "message",
        "",
        "body",
        "headers",
        "",
        "isRequestSuccessful",
        "",
        "<init>",
        "(Lcom/vk/id/network/http/HttpRequest;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V",
        "getRequest$annotations",
        "()V",
        "getRequest",
        "()Lcom/vk/id/network/http/HttpRequest;",
        "getCode$annotations",
        "getCode",
        "()I",
        "getMessage$annotations",
        "getMessage",
        "()Ljava/lang/String;",
        "getBody$annotations",
        "getBody",
        "getHeaders$annotations",
        "getHeaders",
        "()Ljava/util/Map;",
        "isRequestSuccessful$annotations",
        "()Z",
        "isSuccessful",
        "equals",
        "other",
        "hashCode",
        "toString",
        "isRedirect",
        "isClientError",
        "isServerError",
        "peekBody",
        "Lcom/vk/id/network/http/ResponseBody;",
        "maxBytes",
        "",
        "headerValues",
        "",
        "name",
        "newBuilder",
        "Lcom/vk/id/network/http/HttpResponse$Builder;",
        "Builder",
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
.field private static final CLIENT_ERROR_CODES:Lkotlin/ranges/IntRange;

.field private static final Companion:Lcom/vk/id/network/http/HttpResponse$Companion;

.field private static final HTTP_MULTIPLE_CHOICES:I = 0x12c

.field private static final HTTP_OK:I = 0xc8

.field private static final REDIRECT_CODES:Lkotlin/ranges/IntRange;

.field private static final SERVER_ERROR_CODES:Lkotlin/ranges/IntRange;


# instance fields
.field private final body:Ljava/lang/String;

.field private final code:I

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isRequestSuccessful:Z

.field private final message:Ljava/lang/String;

.field private final request:Lcom/vk/id/network/http/HttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vk/id/network/http/HttpResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/network/http/HttpResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/network/http/HttpResponse;->Companion:Lcom/vk/id/network/http/HttpResponse$Companion;

    .line 140
    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, 0x12c

    const/16 v2, 0x18f

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    sput-object v0, Lcom/vk/id/network/http/HttpResponse;->REDIRECT_CODES:Lkotlin/ranges/IntRange;

    .line 141
    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, 0x190

    const/16 v2, 0x1f3

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    sput-object v0, Lcom/vk/id/network/http/HttpResponse;->CLIENT_ERROR_CODES:Lkotlin/ranges/IntRange;

    .line 142
    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, 0x1f4

    const/16 v2, 0x257

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    sput-object v0, Lcom/vk/id/network/http/HttpResponse;->SERVER_ERROR_CODES:Lkotlin/ranges/IntRange;

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/network/http/HttpRequest;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/http/HttpRequest;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/vk/id/network/http/HttpResponse;->request:Lcom/vk/id/network/http/HttpRequest;

    .line 19
    iput p2, p0, Lcom/vk/id/network/http/HttpResponse;->code:I

    .line 21
    iput-object p3, p0, Lcom/vk/id/network/http/HttpResponse;->message:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/vk/id/network/http/HttpResponse;->body:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/vk/id/network/http/HttpResponse;->headers:Ljava/util/Map;

    .line 27
    iput-boolean p6, p0, Lcom/vk/id/network/http/HttpResponse;->isRequestSuccessful:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/id/network/http/HttpRequest;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    .line 26
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p5

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    :cond_1
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/vk/id/network/http/HttpResponse;-><init>(Lcom/vk/id/network/http/HttpRequest;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static final synthetic access$getCLIENT_ERROR_CODES$cp()Lkotlin/ranges/IntRange;
    .locals 1

    .line 15
    sget-object v0, Lcom/vk/id/network/http/HttpResponse;->CLIENT_ERROR_CODES:Lkotlin/ranges/IntRange;

    return-object v0
.end method

.method public static final synthetic access$getREDIRECT_CODES$cp()Lkotlin/ranges/IntRange;
    .locals 1

    .line 15
    sget-object v0, Lcom/vk/id/network/http/HttpResponse;->REDIRECT_CODES:Lkotlin/ranges/IntRange;

    return-object v0
.end method

.method public static final synthetic access$getSERVER_ERROR_CODES$cp()Lkotlin/ranges/IntRange;
    .locals 1

    .line 15
    sget-object v0, Lcom/vk/id/network/http/HttpResponse;->SERVER_ERROR_CODES:Lkotlin/ranges/IntRange;

    return-object v0
.end method

.method public static synthetic getBody$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getCode$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getHeaders$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getMessage$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getRequest$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic isRequestSuccessful$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 34
    :cond_0
    instance-of v1, p1, Lcom/vk/id/network/http/HttpResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/vk/id/network/http/HttpResponse;->request:Lcom/vk/id/network/http/HttpRequest;

    check-cast p1, Lcom/vk/id/network/http/HttpResponse;

    iget-object v3, p1, Lcom/vk/id/network/http/HttpResponse;->request:Lcom/vk/id/network/http/HttpRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    iget v1, p0, Lcom/vk/id/network/http/HttpResponse;->code:I

    iget v3, p1, Lcom/vk/id/network/http/HttpResponse;->code:I

    if-ne v1, v3, :cond_2

    .line 37
    iget-object v1, p0, Lcom/vk/id/network/http/HttpResponse;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/id/network/http/HttpResponse;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    iget-object v1, p0, Lcom/vk/id/network/http/HttpResponse;->body:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/id/network/http/HttpResponse;->body:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/vk/id/network/http/HttpResponse;->headers:Ljava/util/Map;

    iget-object v3, p1, Lcom/vk/id/network/http/HttpResponse;->headers:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    iget-boolean v1, p0, Lcom/vk/id/network/http/HttpResponse;->isRequestSuccessful:Z

    iget-boolean p1, p1, Lcom/vk/id/network/http/HttpResponse;->isRequestSuccessful:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/vk/id/network/http/HttpResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getCode()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/vk/id/network/http/HttpResponse;->code:I

    return v0
.end method

.method public final getHeaders()Ljava/util/Map;
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

    .line 25
    iget-object v0, p0, Lcom/vk/id/network/http/HttpResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/vk/id/network/http/HttpResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequest()Lcom/vk/id/network/http/HttpRequest;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/vk/id/network/http/HttpResponse;->request:Lcom/vk/id/network/http/HttpRequest;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/vk/id/network/http/HttpResponse;->request:Lcom/vk/id/network/http/HttpRequest;

    invoke-virtual {v0}, Lcom/vk/id/network/http/HttpRequest;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget v1, p0, Lcom/vk/id/network/http/HttpResponse;->code:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 46
    iget-object v1, p0, Lcom/vk/id/network/http/HttpResponse;->message:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 47
    iget-object v1, p0, Lcom/vk/id/network/http/HttpResponse;->body:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 48
    iget-object v1, p0, Lcom/vk/id/network/http/HttpResponse;->headers:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-boolean v1, p0, Lcom/vk/id/network/http/HttpResponse;->isRequestSuccessful:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final headerValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/vk/id/network/http/HttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 81
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final isClientError()Z
    .locals 4

    .line 59
    sget-object v0, Lcom/vk/id/network/http/HttpResponse;->CLIENT_ERROR_CODES:Lkotlin/ranges/IntRange;

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v0

    iget v2, p0, Lcom/vk/id/network/http/HttpResponse;->code:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    if-gt v2, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public final isRedirect()Z
    .locals 4

    .line 57
    sget-object v0, Lcom/vk/id/network/http/HttpResponse;->REDIRECT_CODES:Lkotlin/ranges/IntRange;

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v0

    iget v2, p0, Lcom/vk/id/network/http/HttpResponse;->code:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    if-gt v2, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public final isRequestSuccessful()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/vk/id/network/http/HttpResponse;->isRequestSuccessful:Z

    return v0
.end method

.method public final isServerError()Z
    .locals 4

    .line 61
    sget-object v0, Lcom/vk/id/network/http/HttpResponse;->SERVER_ERROR_CODES:Lkotlin/ranges/IntRange;

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v0

    iget v2, p0, Lcom/vk/id/network/http/HttpResponse;->code:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    if-gt v2, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public final isSuccessful()Z
    .locals 3

    .line 30
    iget v0, p0, Lcom/vk/id/network/http/HttpResponse;->code:I

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-gt v1, v0, :cond_0

    const/16 v1, 0x12d

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final newBuilder()Lcom/vk/id/network/http/HttpResponse$Builder;
    .locals 1

    .line 84
    new-instance v0, Lcom/vk/id/network/http/HttpResponse$Builder;

    invoke-direct {v0, p0}, Lcom/vk/id/network/http/HttpResponse$Builder;-><init>(Lcom/vk/id/network/http/HttpResponse;)V

    return-object v0
.end method

.method public final peekBody(J)Lcom/vk/id/network/http/ResponseBody;
    .locals 3
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/vk/id/network/http/HttpResponse;->body:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 73
    new-instance v1, Lcom/vk/id/network/http/ResponseBody;

    long-to-int p1, p1

    .line 74
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/vk/id/network/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v0, "Content-Type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 73
    invoke-direct {v1, p1, p2}, Lcom/vk/id/network/http/ResponseBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/vk/id/network/http/HttpResponse;->request:Lcom/vk/id/network/http/HttpRequest;

    iget v1, p0, Lcom/vk/id/network/http/HttpResponse;->code:I

    iget-object v2, p0, Lcom/vk/id/network/http/HttpResponse;->message:Ljava/lang/String;

    iget-object v3, p0, Lcom/vk/id/network/http/HttpResponse;->body:Ljava/lang/String;

    iget-object v4, p0, Lcom/vk/id/network/http/HttpResponse;->headers:Ljava/util/Map;

    iget-boolean v5, p0, Lcom/vk/id/network/http/HttpResponse;->isRequestSuccessful:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HttpResponse(request="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", code="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRequestSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
