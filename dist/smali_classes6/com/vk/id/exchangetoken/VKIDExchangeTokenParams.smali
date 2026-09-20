.class public final Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;
.super Ljava/lang/Object;
.source "VKIDExchangeTokenParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000cB-\u0008\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;",
        "",
        "state",
        "",
        "codeExchangeState",
        "codeChallenge",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getState$vkid_release",
        "()Ljava/lang/String;",
        "getCodeExchangeState$vkid_release",
        "getCodeChallenge$vkid_release",
        "Builder",
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
.field private final codeChallenge:Ljava/lang/String;

.field private final codeExchangeState:Ljava/lang/String;

.field private final state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;->state:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;->codeExchangeState:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;->codeChallenge:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 21
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCodeChallenge$vkid_release()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;->codeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodeExchangeState$vkid_release()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;->codeExchangeState:Ljava/lang/String;

    return-object v0
.end method

.method public final getState$vkid_release()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;->state:Ljava/lang/String;

    return-object v0
.end method
