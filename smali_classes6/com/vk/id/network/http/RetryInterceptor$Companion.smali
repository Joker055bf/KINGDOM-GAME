.class final Lcom/vk/id/network/http/RetryInterceptor$Companion;
.super Ljava/lang/Object;
.source "RetryInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/network/http/RetryInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vk/id/network/http/RetryInterceptor$Companion;",
        "",
        "<init>",
        "()V",
        "DEFAULT_MAX_RETRIES",
        "",
        "BASE_RETRY_DELAY_MS",
        "",
        "MAX_RETRY_DELAY_MS",
        "IDEMPOTENT_METHODS",
        "",
        "",
        "getIDEMPOTENT_METHODS",
        "()Ljava/util/Set;",
        "DEFAULT_RETRYABLE_STATUSES",
        "getDEFAULT_RETRYABLE_STATUSES",
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

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/id/network/http/RetryInterceptor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_RETRYABLE_STATUSES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/vk/id/network/http/RetryInterceptor;->access$getDEFAULT_RETRYABLE_STATUSES$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getIDEMPOTENT_METHODS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/vk/id/network/http/RetryInterceptor;->access$getIDEMPOTENT_METHODS$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
