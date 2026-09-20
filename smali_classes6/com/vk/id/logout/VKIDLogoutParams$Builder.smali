.class public final Lcom/vk/id/logout/VKIDLogoutParams$Builder;
.super Ljava/lang/Object;
.source "VKIDLogoutParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/logout/VKIDLogoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vk/id/logout/VKIDLogoutParams$Builder;",
        "",
        "<init>",
        "()V",
        "build",
        "Lcom/vk/id/logout/VKIDLogoutParams;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/vk/id/logout/VKIDLogoutParams;
    .locals 2

    .line 34
    new-instance v0, Lcom/vk/id/logout/VKIDLogoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/logout/VKIDLogoutParams;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
