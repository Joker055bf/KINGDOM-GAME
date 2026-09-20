.class public final Lcom/vk/id/internal/util/MD5;
.super Ljava/lang/Object;
.source "MD5.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\u0010\u0010\u0004\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0006\u001a\u00060\u0007j\u0002`\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vk/id/internal/util/MD5;",
        "",
        "<init>",
        "()V",
        "hex",
        "",
        "tmpBuilder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "getTmpBuilder",
        "()Ljava/lang/StringBuilder;",
        "tmpBuilder$delegate",
        "Lcom/vk/id/internal/util/ThreadLocalDelegate;",
        "convert",
        "",
        "h",
        "",
        "b",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final $stable:I

.field public static final INSTANCE:Lcom/vk/id/internal/util/MD5;

.field private static final hex:[C

.field private static final tmpBuilder$delegate:Lcom/vk/id/internal/util/ThreadLocalDelegate;


# direct methods
.method public static synthetic $r8$lambda$YnRIa8O6gaN8tEU96N5-TEHj4m0()Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {}, Lcom/vk/id/internal/util/MD5;->tmpBuilder_delegate$lambda$0()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 36
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "tmpBuilder"

    const-string v3, "getTmpBuilder()Ljava/lang/StringBuilder;"

    const-class v4, Lcom/vk/id/internal/util/MD5;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/vk/id/internal/util/MD5;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vk/id/internal/util/MD5;

    invoke-direct {v0}, Lcom/vk/id/internal/util/MD5;-><init>()V

    sput-object v0, Lcom/vk/id/internal/util/MD5;->INSTANCE:Lcom/vk/id/internal/util/MD5;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 35
    fill-array-data v0, :array_0

    sput-object v0, Lcom/vk/id/internal/util/MD5;->hex:[C

    .line 36
    new-instance v0, Lcom/vk/id/internal/util/MD5$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/vk/id/internal/util/MD5$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/vk/id/internal/util/ThreadLocalDelegateKt;->threadLocal(Lkotlin/jvm/functions/Function0;)Lcom/vk/id/internal/util/ThreadLocalDelegate;

    move-result-object v0

    sput-object v0, Lcom/vk/id/internal/util/MD5;->tmpBuilder$delegate:Lcom/vk/id/internal/util/ThreadLocalDelegate;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/util/MD5;->$stable:I

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "h"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "MD5"

    .line 41
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 42
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "forName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "getBytes(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 44
    sget-object v0, Lcom/vk/id/internal/util/MD5;->INSTANCE:Lcom/vk/id/internal/util/MD5;

    invoke-direct {v0}, Lcom/vk/id/internal/util/MD5;->getTmpBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 45
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/vk/id/internal/util/MD5;->hex([B)V

    .line 46
    invoke-direct {v0}, Lcom/vk/id/internal/util/MD5;->getTmpBuilder()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private final getTmpBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .line 36
    sget-object v0, Lcom/vk/id/internal/util/MD5;->tmpBuilder$delegate:Lcom/vk/id/internal/util/ThreadLocalDelegate;

    sget-object v1, Lcom/vk/id/internal/util/MD5;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/vk/id/internal/util/ThreadLocalDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static final hex([B)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 54
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    .line 55
    sget-object v3, Lcom/vk/id/internal/util/MD5;->INSTANCE:Lcom/vk/id/internal/util/MD5;

    invoke-direct {v3}, Lcom/vk/id/internal/util/MD5;->getTmpBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vk/id/internal/util/MD5;->hex:[C

    and-int/lit16 v6, v2, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-char v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v3}, Lcom/vk/id/internal/util/MD5;->getTmpBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final tmpBuilder_delegate$lambda$0()Ljava/lang/StringBuilder;
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method
