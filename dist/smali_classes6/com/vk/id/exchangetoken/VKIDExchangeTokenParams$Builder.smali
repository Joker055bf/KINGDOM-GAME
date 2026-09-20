.class public final Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;
.super Ljava/lang/Object;
.source "VKIDExchangeTokenParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0010\u001a\u00020\u0011R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;",
        "",
        "<init>",
        "()V",
        "state",
        "",
        "getState",
        "()Ljava/lang/String;",
        "setState",
        "(Ljava/lang/String;)V",
        "codeExchangeState",
        "getCodeExchangeState",
        "setCodeExchangeState",
        "codeChallenge",
        "getCodeChallenge",
        "setCodeChallenge",
        "build",
        "Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;",
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
.field public static final $stable:I = 0x8


# instance fields
.field private codeChallenge:Ljava/lang/String;

.field private codeExchangeState:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;
    .locals 5

    .line 60
    new-instance v0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;

    .line 61
    iget-object v1, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;->state:Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;->codeExchangeState:Ljava/lang/String;

    .line 63
    iget-object v3, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;->codeChallenge:Ljava/lang/String;

    const/4 v4, 0x0

    .line 60
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getCodeChallenge()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;->codeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodeExchangeState()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;->codeExchangeState:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final setCodeChallenge(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;->codeChallenge:Ljava/lang/String;

    return-void
.end method

.method public final setCodeExchangeState(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;->codeExchangeState:Ljava/lang/String;

    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams$Builder;->state:Ljava/lang/String;

    return-void
.end method
