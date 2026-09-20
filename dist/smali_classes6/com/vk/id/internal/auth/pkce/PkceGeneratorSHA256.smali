.class public final Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;
.super Ljava/lang/Object;
.source "PkceGeneratorSHA256.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPkceGeneratorSHA256.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PkceGeneratorSHA256.kt\ncom/vk/id/internal/auth/pkce/PkceGeneratorSHA256\n+ 2 InternalVKIDLog.kt\ncom/vk/id/logger/InternalVKIDLogKt\n*L\n1#1,75:1\n40#2:76\n*S KotlinDebug\n*F\n+ 1 PkceGeneratorSHA256.kt\ncom/vk/id/internal/auth/pkce/PkceGeneratorSHA256\n*L\n43#1:76\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "generateRandomCodeVerifier",
        "",
        "entropySource",
        "Ljava/security/SecureRandom;",
        "deriveCodeVerifierChallenge",
        "codeVerifier",
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

.field private static final ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final CHARSET_NAME:Ljava/lang/String; = "ISO_8859_1"

.field public static final Companion:Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256$Companion;

.field private static final MIN_CODE_VERIFIER_ENTROPY:I = 0x80

.field private static final PKCE_BASE64_ENCODE_SETTINGS:I = 0xb


# instance fields
.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;->Companion:Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string v1, "getSimpleName(...)"

    const-string v2, "PkceGeneratorSHA256"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    return-void
.end method


# virtual methods
.method public final deriveCodeVerifierChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "codeVerifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "SHA-256"

    .line 53
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "ISO_8859_1"

    .line 54
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "forName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 56
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v1, 0xb

    .line 57
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    iget-object v0, p0, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "Can\'t encode codeVerifier"

    invoke-interface {v0, v1, p1}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ISO_8859_1 encoding not supported"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    .line 59
    iget-object v1, p0, Lcom/vk/id/internal/auth/pkce/PkceGeneratorSHA256;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    const-string v2, "SHA-256 algorithm not available"

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v2, v0}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method

.method public final generateRandomCodeVerifier(Ljava/security/SecureRandom;)Ljava/lang/String;
    .locals 1

    const-string v0, "entropySource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 47
    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 p1, 0xb

    .line 48
    invoke-static {v0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "encodeToString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
