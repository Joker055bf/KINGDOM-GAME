.class public final Lru/ok/tracer/base/http/HttpMultipartBodyKt;
.super Ljava/lang/Object;
.source "HttpMultipartBody.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpMultipartBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpMultipartBody.kt\nru/ok/tracer/base/http/HttpMultipartBodyKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,148:1\n1079#2,2:149\n1170#2,2:151\n1109#2,3:153\n*S KotlinDebug\n*F\n+ 1 HttpMultipartBody.kt\nru/ok/tracer/base/http/HttpMultipartBodyKt\n*L\n106#1:149,2\n107#1:151,2\n140#1:153,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0008\u001a\u00020\t*\u00060\nj\u0002`\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0002\u001a\u0014\u0010\r\u001a\u00020\t*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "CRLF",
        "",
        "DASHDASH",
        "utf8Length",
        "",
        "",
        "getUtf8Length",
        "(Ljava/lang/String;)I",
        "appendQuoted",
        "",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "str",
        "writeUtf8",
        "Ljava/io/OutputStream;",
        "string",
        "tracer-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CRLF:[B

.field private static final DASHDASH:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\r\n"

    .line 6
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->CRLF:[B

    const-string v0, "--"

    .line 7
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->DASHDASH:[B

    return-void
.end method

.method public static final synthetic access$appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCRLF$p()[B
    .locals 1

    .line 1
    sget-object v0, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->CRLF:[B

    return-object v0
.end method

.method public static final synthetic access$getDASHDASH$p()[B
    .locals 1

    .line 1
    sget-object v0, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->DASHDASH:[B

    return-object v0
.end method

.method public static final synthetic access$getUtf8Length(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->getUtf8Length(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$writeUtf8(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->writeUtf8(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method private static final appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 8

    const/16 v0, 0x22

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move v3, v2

    .line 149
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0xd

    const/16 v6, 0x5c

    if-ge v3, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v0, :cond_1

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v7

    :goto_2
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v7, v2

    :goto_3
    if-eqz v7, :cond_6

    .line 151
    :goto_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ge v2, p1, :cond_7

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-eq p1, v0, :cond_4

    if-eq p1, v6, :cond_4

    if-ne p1, v5, :cond_5

    .line 109
    :cond_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 114
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final getUtf8Length(Ljava/lang/String;)I
    .locals 4

    .line 140
    check-cast p0, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    move v1, v0

    .line 154
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/16 v3, 0x7ff

    if-gt v2, v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static final writeUtf8(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    .line 124
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x7ff

    if-gt v2, v3, :cond_1

    shr-int/lit8 v3, v2, 0x6

    or-int/lit16 v3, v3, 0xc0

    .line 127
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    .line 128
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_1
    shr-int/lit8 v3, v2, 0xc

    or-int/lit16 v3, v3, 0xe0

    .line 131
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    .line 132
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    .line 133
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
