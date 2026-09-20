.class public final Lcom/vk/id/internal/auth/web/BrowserDescriptor;
.super Ljava/lang/Object;
.source "BrowserDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/auth/web/BrowserDescriptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrowserDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrowserDescriptor.kt\ncom/vk/id/internal/auth/web/BrowserDescriptor\n+ 2 InternalVKIDLog.kt\ncom/vk/id/logger/InternalVKIDLogKt\n*L\n1#1,147:1\n40#2:148\n*S KotlinDebug\n*F\n+ 1 BrowserDescriptor.kt\ncom/vk/id/internal/auth/web/BrowserDescriptor\n*L\n117#1:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0001\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nB\u0019\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\rJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0008J\u0013\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/web/BrowserDescriptor;",
        "",
        "packageName",
        "",
        "signatureHashes",
        "",
        "version",
        "useCustomTab",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V",
        "packageInfo",
        "Landroid/content/pm/PackageInfo;",
        "(Landroid/content/pm/PackageInfo;Z)V",
        "getPackageName",
        "()Ljava/lang/String;",
        "getSignatureHashes",
        "()Ljava/util/Set;",
        "getVersion",
        "getUseCustomTab",
        "()Z",
        "changeUseCustomTab",
        "newUseCustomTabValue",
        "equals",
        "other",
        "hashCode",
        "",
        "Companion",
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

.field public static final Companion:Lcom/vk/id/internal/auth/web/BrowserDescriptor$Companion;

.field private static final DIGEST_SHA_512:Ljava/lang/String; = "SHA-512"

.field private static final PRIME_HASH_FACTOR:I = 0x16a95

.field private static final logger:Lcom/vk/id/logger/InternalVKIDLogger;


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final signatureHashes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final useCustomTab:Z

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vk/id/internal/auth/web/BrowserDescriptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/internal/auth/web/BrowserDescriptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->Companion:Lcom/vk/id/internal/auth/web/BrowserDescriptor$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->$stable:I

    .line 148
    sget-object v0, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-class v1, Lcom/vk/id/internal/auth/web/BrowserDescriptor$Companion;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getSimpleName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object v0

    .line 117
    sput-object v0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageInfo;Z)V
    .locals 4

    const-string v0, "packageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->Companion:Lcom/vk/id/internal/auth/web/BrowserDescriptor$Companion;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string v3, "signatures"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vk/id/internal/auth/web/BrowserDescriptor$Companion;->generateSignatureHashes([Landroid/content/pm/Signature;)Ljava/util/Set;

    move-result-object v1

    .line 72
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "versionName"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureHashes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->packageName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->signatureHashes:Ljava/util/Set;

    .line 56
    iput-object p3, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->version:Ljava/lang/String;

    .line 60
    iput-boolean p4, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->useCustomTab:Z

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/vk/id/logger/InternalVKIDLogger;
    .locals 1

    .line 29
    sget-object v0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    return-object v0
.end method


# virtual methods
.method public final changeUseCustomTab(Z)Lcom/vk/id/internal/auth/web/BrowserDescriptor;
    .locals 4

    .line 81
    new-instance v0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;

    .line 82
    iget-object v1, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->packageName:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->signatureHashes:Ljava/util/Set;

    .line 84
    iget-object v3, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->version:Ljava/lang/String;

    .line 81
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 93
    instance-of v2, p1, Lcom/vk/id/internal/auth/web/BrowserDescriptor;

    if-nez v2, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->packageName:Ljava/lang/String;

    check-cast p1, Lcom/vk/id/internal/auth/web/BrowserDescriptor;

    iget-object v3, p1, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->version:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    iget-boolean v2, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->useCustomTab:Z

    iget-boolean v3, p1, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->useCustomTab:Z

    if-ne v2, v3, :cond_2

    .line 99
    iget-object v2, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->signatureHashes:Ljava/util/Set;

    iget-object p1, p1, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->signatureHashes:Ljava/util/Set;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignatureHashes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->signatureHashes:Ljava/util/Set;

    return-object v0
.end method

.method public final getUseCustomTab()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->useCustomTab:Z

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x16a95

    mul-int/2addr v0, v1

    .line 104
    iget-object v2, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->version:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 105
    iget-boolean v2, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->useCustomTab:Z

    add-int/2addr v0, v2

    .line 106
    iget-object v2, p0, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->signatureHashes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 107
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method
