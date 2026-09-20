.class public final Lcom/vk/id/network/http/FormBody;
.super Ljava/lang/Object;
.source "FormBody.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/network/http/FormBody$Builder;,
        Lcom/vk/id/network/http/FormBody$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00072\u00020\u0001:\u0002\u0007\u0008B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0002\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vk/id/network/http/FormBody;",
        "",
        "content",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "content$network_release",
        "Companion",
        "Builder",
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
.field public static final Companion:Lcom/vk/id/network/http/FormBody$Companion;


# instance fields
.field private final content:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/network/http/FormBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/network/http/FormBody$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/network/http/FormBody;->Companion:Lcom/vk/id/network/http/FormBody$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vk/id/network/http/FormBody;->content:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/id/network/http/FormBody;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final content$network_release()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/vk/id/network/http/FormBody;->content:Ljava/lang/String;

    return-object v0
.end method
