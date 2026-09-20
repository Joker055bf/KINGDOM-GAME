.class public final Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;
.super Ljava/lang/Object;
.source "TrustedProvidersCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/internal/auth/app/TrustedProvidersCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;",
        "",
        "<init>",
        "()V",
        "RELEASE_APP_SHA",
        "",
        "DEBUG_APP_SHA",
        "DEFAULT_TRUSTED_PROVIDERS",
        "",
        "Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;",
        "createBaseProviders",
        "appPackage",
        "weight",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createBaseProviders(Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/vk/id/internal/auth/app/TrustedProvidersCache$Companion;->createBaseProviders(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final createBaseProviders(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;

    .line 79
    new-instance v1, Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;

    const-string v2, "48761eef50ee53afc4cc9c5f10e6bde7f8f5b82f"

    invoke-direct {v1, p1, v2, p2}, Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 80
    new-instance v1, Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;

    const-string v2, "86259288a43f6c409a922bc3ce40ba08085bbadb"

    invoke-direct {v1, p1, v2, p2}, Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    .line 78
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
