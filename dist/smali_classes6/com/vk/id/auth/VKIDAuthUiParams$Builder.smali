.class public final Lcom/vk/id/auth/VKIDAuthUiParams$Builder;
.super Ljava/lang/Object;
.source "VKIDAuthUiParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/auth/VKIDAuthUiParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0013\u001a\u00020\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR \u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vk/id/auth/VKIDAuthUiParams$Builder;",
        "",
        "<init>",
        "()V",
        "state",
        "",
        "getState",
        "()Ljava/lang/String;",
        "setState",
        "(Ljava/lang/String;)V",
        "codeChallenge",
        "getCodeChallenge",
        "setCodeChallenge",
        "scopes",
        "",
        "getScopes",
        "()Ljava/util/Set;",
        "setScopes",
        "(Ljava/util/Set;)V",
        "build",
        "Lcom/vk/id/auth/VKIDAuthUiParams;",
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

.field private scopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->scopes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final build()Lcom/vk/id/auth/VKIDAuthUiParams;
    .locals 5

    .line 64
    new-instance v0, Lcom/vk/id/auth/VKIDAuthUiParams;

    .line 65
    iget-object v1, p0, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->state:Ljava/lang/String;

    .line 66
    iget-object v2, p0, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->codeChallenge:Ljava/lang/String;

    .line 67
    iget-object v3, p0, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->scopes:Ljava/util/Set;

    const/4 v4, 0x0

    .line 64
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vk/id/auth/VKIDAuthUiParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getCodeChallenge()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->codeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public final getScopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->scopes:Ljava/util/Set;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final setCodeChallenge(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->codeChallenge:Ljava/lang/String;

    return-void
.end method

.method public final setScopes(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->scopes:Ljava/util/Set;

    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/vk/id/auth/VKIDAuthUiParams$Builder;->state:Ljava/lang/String;

    return-void
.end method
