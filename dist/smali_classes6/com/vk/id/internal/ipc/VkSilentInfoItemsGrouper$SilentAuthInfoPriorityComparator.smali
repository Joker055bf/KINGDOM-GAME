.class final Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper$SilentAuthInfoPriorityComparator;
.super Ljava/lang/Object;
.source "VkSilentInfoItemsGrouper.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SilentAuthInfoPriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper$SilentAuthInfoPriorityComparator;",
        "Ljava/util/Comparator;",
        "Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;",
        "Lkotlin/Comparator;",
        "<init>",
        "()V",
        "compare",
        "",
        "first",
        "second",
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
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;)I
    .locals 2

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getProviderWeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getProviderWeight()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getInfo()Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/silentauth/SilentAuthInfo;->getWeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getInfo()Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/silentauth/SilentAuthInfo;->getWeight()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getInfo()Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/silentauth/SilentAuthInfo;->getUserHash()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 80
    invoke-virtual {p2}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getInfo()Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vk/silentauth/SilentAuthInfo;->getUserHash()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 64
    check-cast p1, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    check-cast p2, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper$SilentAuthInfoPriorityComparator;->compare(Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;)I

    move-result p1

    return p1
.end method
