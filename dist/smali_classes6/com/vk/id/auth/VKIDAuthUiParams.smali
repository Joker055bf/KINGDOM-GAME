.class public final Lcom/vk/id/auth/VKIDAuthUiParams;
.super Ljava/lang/Object;
.source "VKIDAuthUiParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/auth/VKIDAuthUiParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVKIDAuthUiParams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKIDAuthUiParams.kt\ncom/vk/id/auth/VKIDAuthUiParams\n+ 2 VKIDAuthUiParams.kt\ncom/vk/id/auth/VKIDAuthUiParamsKt\n*L\n1#1,94:1\n13#2:95\n*S KotlinDebug\n*F\n+ 1 VKIDAuthUiParams.kt\ncom/vk/id/auth/VKIDAuthUiParams\n*L\n74#1:95\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0016B+\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000e\u001a\u00020\u00002\u0017\u0010\u000f\u001a\u0013\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010\u00a2\u0006\u0002\u0008\u0013H\u0007J!\u0010\u0014\u001a\u00020\u00152\u0017\u0010\u000f\u001a\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00120\u0010\u00a2\u0006\u0002\u0008\u0013H\u0007R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vk/id/auth/VKIDAuthUiParams;",
        "",
        "state",
        "",
        "codeChallenge",
        "scopes",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V",
        "getState$vkid_release",
        "()Ljava/lang/String;",
        "getCodeChallenge$vkid_release",
        "getScopes$vkid_release",
        "()Ljava/util/Set;",
        "newBuilder",
        "initializer",
        "Lkotlin/Function1;",
        "Lcom/vk/id/auth/VKIDAuthUiParams$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "asParamsBuilder",
        "Lcom/vk/id/auth/VKIDAuthParams$Builder;",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final codeChallenge:Ljava/lang/String;

.field private final scopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthUiParams;->state:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/vk/id/auth/VKIDAuthUiParams;->codeChallenge:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/vk/id/auth/VKIDAuthUiParams;->scopes:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vk/id/auth/VKIDAuthUiParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final asParamsBuilder(Lkotlin/jvm/functions/Function1;)Lcom/vk/id/auth/VKIDAuthParams$Builder;
    .locals 2
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vk/id/auth/VKIDAuthParams$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/vk/id/auth/VKIDAuthParams$Builder;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/vk/id/auth/VKIDAuthParams$Builder;

    invoke-direct {v0}, Lcom/vk/id/auth/VKIDAuthParams$Builder;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthUiParams;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setState(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthUiParams;->codeChallenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setCodeChallenge(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthUiParams;->scopes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setScopes(Ljava/util/Set;)V

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->setInternalUse(Z)V

    .line 90
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getCodeChallenge$vkid_release()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthUiParams;->codeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public final getScopes$vkid_release()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthUiParams;->scopes:Ljava/util/Set;

    return-object v0
.end method

.method public final getState$vkid_release()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthUiParams;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final newBuilder(Lkotlin/jvm/functions/Function1;)Lcom/vk/id/auth/VKIDAuthUiParams;
    .locals 2
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vk/id/auth/VKIDAuthUiParams$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/vk/id/auth/VKIDAuthUiParams;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;

    invoke-direct {v0}, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthUiParams;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->setState(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthUiParams;->codeChallenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->setCodeChallenge(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthUiParams;->scopes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->setScopes(Ljava/util/Set;)V

    .line 78
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v0}, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->build()Lcom/vk/id/auth/VKIDAuthUiParams;

    move-result-object p1

    return-object p1
.end method
