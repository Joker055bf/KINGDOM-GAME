.class final Lcom/vk/id/network/http/HttpResponse$Companion;
.super Ljava/lang/Object;
.source "HttpResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/network/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vk/id/network/http/HttpResponse$Companion;",
        "",
        "<init>",
        "()V",
        "HTTP_OK",
        "",
        "HTTP_MULTIPLE_CHOICES",
        "REDIRECT_CODES",
        "Lkotlin/ranges/IntRange;",
        "getREDIRECT_CODES",
        "()Lkotlin/ranges/IntRange;",
        "CLIENT_ERROR_CODES",
        "getCLIENT_ERROR_CODES",
        "SERVER_ERROR_CODES",
        "getSERVER_ERROR_CODES",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/id/network/http/HttpResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCLIENT_ERROR_CODES()Lkotlin/ranges/IntRange;
    .locals 1

    .line 141
    invoke-static {}, Lcom/vk/id/network/http/HttpResponse;->access$getCLIENT_ERROR_CODES$cp()Lkotlin/ranges/IntRange;

    move-result-object v0

    return-object v0
.end method

.method public final getREDIRECT_CODES()Lkotlin/ranges/IntRange;
    .locals 1

    .line 140
    invoke-static {}, Lcom/vk/id/network/http/HttpResponse;->access$getREDIRECT_CODES$cp()Lkotlin/ranges/IntRange;

    move-result-object v0

    return-object v0
.end method

.method public final getSERVER_ERROR_CODES()Lkotlin/ranges/IntRange;
    .locals 1

    .line 142
    invoke-static {}, Lcom/vk/id/network/http/HttpResponse;->access$getSERVER_ERROR_CODES$cp()Lkotlin/ranges/IntRange;

    move-result-object v0

    return-object v0
.end method
