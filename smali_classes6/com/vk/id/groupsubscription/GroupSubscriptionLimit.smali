.class public final Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;
.super Ljava/lang/Object;
.source "GroupSubscriptionLimit.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;",
        "",
        "maxSubscriptionsToShow",
        "",
        "periodInDays",
        "<init>",
        "(II)V",
        "getMaxSubscriptionsToShow",
        "()I",
        "getPeriodInDays",
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
.field public static final $stable:I


# instance fields
.field private final maxSubscriptionsToShow:I

.field private final periodInDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;->maxSubscriptionsToShow:I

    .line 26
    iput p2, p0, Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;->periodInDays:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x2

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/2addr p3, v0

    if-eqz p3, :cond_1

    const/16 p2, 0x1e

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getMaxSubscriptionsToShow()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;->maxSubscriptionsToShow:I

    return v0
.end method

.method public final getPeriodInDays()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/vk/id/groupsubscription/GroupSubscriptionLimit;->periodInDays:I

    return v0
.end method
