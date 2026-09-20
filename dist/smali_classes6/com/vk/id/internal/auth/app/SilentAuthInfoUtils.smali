.class public final Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;
.super Ljava/lang/Object;
.source "SilentAuthInfoUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0002J.\u0010\u000c\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\u000eH\u0002J$\u0010\u000c\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u000eH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;",
        "",
        "<init>",
        "()V",
        "calculateDigestHex",
        "",
        "packageManager",
        "Lcom/vk/id/internal/context/InternalVKIDPackageManager;",
        "pkg",
        "calculateDigestBase64",
        "signature",
        "Landroid/content/pm/Signature;",
        "calculateDigest",
        "transform",
        "Lkotlin/Function1;",
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


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;


# direct methods
.method public static synthetic $r8$lambda$MG_Waa9fiaoYSQpyDK-KV5_GLaw([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->calculateDigestHex$lambda$1([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hJmyXJsskxgLO_LAShOnniAx_no([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->calculateDigestBase64$lambda$0([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;

    invoke-direct {v0}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;-><init>()V

    sput-object v0, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->INSTANCE:Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$calculateDigestHex(Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->calculateDigestHex(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final calculateDigest(Landroid/content/pm/Signature;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/Signature;",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "SHA"

    .line 81
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 83
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v0, "digest(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private final calculateDigest(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/internal/context/InternalVKIDPackageManager;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/pm/Signature;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-interface {p1, p2, v0}, Lcom/vk/id/internal/context/InternalVKIDPackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string p2, "signatures"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/Signature;

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :catch_0
    :cond_0
    return-object v1
.end method

.method private static final calculateDigestBase64$lambda$0([B)Ljava/lang/String;
    .locals 1

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "encodeToString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final calculateDigestHex(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1

    .line 55
    new-instance v0, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->calculateDigest(Landroid/content/pm/Signature;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final calculateDigestHex$lambda$1([B)Ljava/lang/String;
    .locals 4

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 57
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    array-length p0, p0

    shl-int/2addr p0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "X"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "ENGLISH"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final calculateDigestBase64(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1

    const-string v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->calculateDigest(Landroid/content/pm/Signature;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final calculateDigestHex(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils$calculateDigestHex$1;

    sget-object v1, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->INSTANCE:Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;

    invoke-direct {v0, v1}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils$calculateDigestHex$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, p2, v0}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->calculateDigest(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
