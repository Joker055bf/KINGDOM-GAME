.class public Lorg/jdom2/output/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/Format$TextMode;,
        Lorg/jdom2/output/Format$DefaultCharsetEscapeStrategy;,
        Lorg/jdom2/output/Format$EscapeStrategy7Bits;,
        Lorg/jdom2/output/Format$EscapeStrategy8Bits;,
        Lorg/jdom2/output/Format$EscapeStrategyUTF;
    }
.end annotation


# static fields
.field private static final Bits7EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field private static final Bits8EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field private static final DefaultEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field private static final STANDARD_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final STANDARD_INDENT:Ljava/lang/String; = "  "

.field private static final STANDARD_LINE_SEPARATOR:Ljava/lang/String;

.field private static final UTFEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;


# instance fields
.field encoding:Ljava/lang/String;

.field escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field expandEmptyElements:Z

.field ignoreTrAXEscapingPIs:Z

.field indent:Ljava/lang/String;

.field lineSeparator:Ljava/lang/String;

.field mode:Lorg/jdom2/output/Format$TextMode;

.field omitDeclaration:Z

.field omitEncoding:Z

.field specifiedAttributesOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    new-instance v0, Lorg/jdom2/output/Format$EscapeStrategyUTF;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/output/Format$EscapeStrategyUTF;-><init>(Lorg/jdom2/output/Format$1;)V

    sput-object v0, Lorg/jdom2/output/Format;->UTFEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 126
    new-instance v0, Lorg/jdom2/output/Format$EscapeStrategy8Bits;

    invoke-direct {v0, v1}, Lorg/jdom2/output/Format$EscapeStrategy8Bits;-><init>(Lorg/jdom2/output/Format$1;)V

    sput-object v0, Lorg/jdom2/output/Format;->Bits8EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 142
    new-instance v0, Lorg/jdom2/output/Format$EscapeStrategy7Bits;

    invoke-direct {v0, v1}, Lorg/jdom2/output/Format$EscapeStrategy7Bits;-><init>(Lorg/jdom2/output/Format$1;)V

    sput-object v0, Lorg/jdom2/output/Format;->Bits7EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 148
    new-instance v0, Lorg/jdom2/output/Format$1;

    invoke-direct {v0}, Lorg/jdom2/output/Format$1;-><init>()V

    sput-object v0, Lorg/jdom2/output/Format;->DefaultEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 571
    sget-object v0, Lorg/jdom2/output/LineSeparator;->DEFAULT:Lorg/jdom2/output/LineSeparator;

    invoke-virtual {v0}, Lorg/jdom2/output/LineSeparator;->value()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jdom2/output/Format;->STANDARD_LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    .line 581
    sget-object v0, Lorg/jdom2/output/Format;->STANDARD_LINE_SEPARATOR:Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    const-string v0, "UTF-8"

    .line 584
    iput-object v0, p0, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    const/4 v1, 0x0

    .line 588
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->omitDeclaration:Z

    .line 592
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->omitEncoding:Z

    .line 596
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->specifiedAttributesOnly:Z

    .line 600
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    .line 604
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->ignoreTrAXEscapingPIs:Z

    .line 607
    sget-object v1, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    iput-object v1, p0, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    .line 610
    sget-object v1, Lorg/jdom2/output/Format;->DefaultEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    iput-object v1, p0, Lorg/jdom2/output/Format;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 616
    invoke-virtual {p0, v0}, Lorg/jdom2/output/Format;->setEncoding(Ljava/lang/String;)Lorg/jdom2/output/Format;

    return-void
.end method

.method private static final chooseStrategy(Ljava/lang/String;)Lorg/jdom2/output/EscapeStrategy;
    .locals 2

    const-string v0, "UTF-8"

    .line 540
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "UTF-16"

    .line 541
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 547
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Latin1"

    .line 548
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "US-ASCII"

    .line 552
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ASCII"

    .line 553
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 558
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    .line 559
    new-instance v0, Lorg/jdom2/output/Format$DefaultCharsetEscapeStrategy;

    invoke-direct {v0, p0}, Lorg/jdom2/output/Format$DefaultCharsetEscapeStrategy;-><init>(Ljava/nio/charset/CharsetEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 563
    :catch_0
    sget-object p0, Lorg/jdom2/output/Format;->DefaultEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object p0

    .line 554
    :cond_3
    :goto_0
    sget-object p0, Lorg/jdom2/output/Format;->Bits7EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object p0

    .line 549
    :cond_4
    :goto_1
    sget-object p0, Lorg/jdom2/output/Format;->Bits8EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object p0

    .line 542
    :cond_5
    :goto_2
    sget-object p0, Lorg/jdom2/output/Format;->UTFEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object p0
.end method

.method public static final compact(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_0

    .line 239
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le v0, v3, :cond_1

    .line 243
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-le v3, v0, :cond_2

    const-string p0, ""

    return-object p0

    .line 252
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    sub-int v5, v0, v3

    add-int/2addr v5, v1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move v5, v1

    :goto_2
    if-gt v3, v0, :cond_5

    .line 254
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 255
    invoke-static {v6}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    .line 257
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v2

    goto :goto_3

    .line 261
    :cond_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 266
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeAttribute(Lorg/jdom2/output/EscapeStrategy;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 349
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x22

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0xd

    const/16 v9, 0x26

    const/16 v10, 0x3e

    const/16 v11, 0x3c

    if-ge v4, v2, :cond_1

    .line 353
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v11, :cond_1

    if-eq v12, v10, :cond_1

    if-eq v12, v9, :cond_1

    if-eq v12, v8, :cond_1

    if-eq v12, v6, :cond_1

    if-eq v12, v5, :cond_1

    if-eq v12, v7, :cond_1

    .line 355
    invoke-interface {v0, v12}, Lorg/jdom2/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v4, v2, :cond_2

    return-object v1

    .line 366
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    add-int/lit8 v13, v2, 0x5

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 367
    invoke-virtual {v12, v1, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v13, v3

    :goto_2
    if-ge v4, v2, :cond_e

    add-int/lit8 v14, v4, 0x1

    .line 369
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v15, 0x3b

    const-string v3, "&#x"

    if-lez v13, :cond_4

    .line 371
    invoke-static {v4}, Lorg/jdom2/Verifier;->isLowSurrogate(C)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 377
    invoke-static {v13, v4}, Lorg/jdom2/Verifier;->decodeSurrogatePair(CC)I

    move-result v4

    .line 378
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v14

    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_2

    .line 372
    :cond_3
    new-instance v0, Lorg/jdom2/IllegalDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not decode surrogate pair 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eq v4, v7, :cond_d

    if-eq v4, v6, :cond_c

    if-eq v4, v8, :cond_b

    if-eq v4, v5, :cond_a

    if-eq v4, v9, :cond_9

    if-eq v4, v11, :cond_8

    if-eq v4, v10, :cond_7

    .line 408
    invoke-interface {v0, v4}, Lorg/jdom2/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 411
    invoke-static {v4}, Lorg/jdom2/Verifier;->isHighSurrogate(C)Z

    move-result v16

    if-eqz v16, :cond_5

    move v13, v4

    goto :goto_3

    .line 415
    :cond_5
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 420
    :cond_6
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string v3, "&gt;"

    .line 389
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string v3, "&lt;"

    .line 386
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    const-string v3, "&amp;"

    .line 392
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    const-string v3, "&quot;"

    .line 398
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    const-string v3, "&#xD;"

    .line 395
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    const-string v3, "&#xA;"

    .line 404
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    const-string v3, "&#x9;"

    .line 401
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v4, v14

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_e
    if-gtz v13, :cond_f

    .line 430
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 426
    :cond_f
    new-instance v0, Lorg/jdom2/IllegalDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Surrogate pair 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "truncated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final escapeText(Lorg/jdom2/output/EscapeStrategy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 458
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0xd

    const/16 v7, 0x26

    const/16 v8, 0x3e

    const/16 v9, 0x3c

    const/16 v10, 0xa

    if-ge v5, v3, :cond_1

    .line 461
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v9, :cond_1

    if-eq v11, v8, :cond_1

    if-eq v11, v7, :cond_1

    if-eq v11, v6, :cond_1

    if-eq v11, v10, :cond_1

    .line 463
    invoke-interface {v0, v11}, Lorg/jdom2/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v5, v3, :cond_2

    return-object v2

    .line 474
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v5, :cond_3

    .line 476
    invoke-virtual {v11, v2, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_3
    move v12, v4

    :goto_2
    if-ge v5, v3, :cond_e

    add-int/lit8 v13, v5, 0x1

    .line 480
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string v14, ";"

    const-string v15, "&#x"

    if-lez v12, :cond_5

    .line 482
    invoke-static {v5}, Lorg/jdom2/Verifier;->isLowSurrogate(C)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 488
    invoke-static {v12, v5}, Lorg/jdom2/Verifier;->decodeSurrogatePair(CC)I

    move-result v5

    .line 489
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v12, v4

    move v5, v13

    goto :goto_2

    .line 483
    :cond_4
    new-instance v0, Lorg/jdom2/IllegalDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not decode surrogate pair 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 486
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eq v5, v10, :cond_c

    if-eq v5, v6, :cond_b

    if-eq v5, v7, :cond_a

    if-eq v5, v9, :cond_9

    if-eq v5, v8, :cond_8

    .line 515
    invoke-interface {v0, v5}, Lorg/jdom2/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 518
    invoke-static {v5}, Lorg/jdom2/Verifier;->isHighSurrogate(C)Z

    move-result v16

    if-eqz v16, :cond_6

    move v12, v5

    goto :goto_3

    .line 522
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 525
    :cond_7
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string v4, "&gt;"

    .line 498
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    const-string v4, "&lt;"

    .line 495
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    const-string v4, "&amp;"

    .line 501
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    const-string v4, "&#xD;"

    .line 504
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    if-eqz v1, :cond_d

    .line 508
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 510
    :cond_d
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move v5, v13

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_e
    if-gtz v12, :cond_f

    .line 535
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 531
    :cond_f
    new-instance v0, Lorg/jdom2/IllegalDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Surrogate pair 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "truncated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCompactFormat()Lorg/jdom2/output/Format;
    .locals 2

    .line 222
    new-instance v0, Lorg/jdom2/output/Format;

    invoke-direct {v0}, Lorg/jdom2/output/Format;-><init>()V

    .line 223
    sget-object v1, Lorg/jdom2/output/Format$TextMode;->NORMALIZE:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v0, v1}, Lorg/jdom2/output/Format;->setTextMode(Lorg/jdom2/output/Format$TextMode;)Lorg/jdom2/output/Format;

    return-object v0
.end method

.method public static getPrettyFormat()Lorg/jdom2/output/Format;
    .locals 2

    .line 206
    new-instance v0, Lorg/jdom2/output/Format;

    invoke-direct {v0}, Lorg/jdom2/output/Format;-><init>()V

    const-string v1, "  "

    .line 207
    invoke-virtual {v0, v1}, Lorg/jdom2/output/Format;->setIndent(Ljava/lang/String;)Lorg/jdom2/output/Format;

    .line 208
    sget-object v1, Lorg/jdom2/output/Format$TextMode;->TRIM:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v0, v1}, Lorg/jdom2/output/Format;->setTextMode(Lorg/jdom2/output/Format$TextMode;)Lorg/jdom2/output/Format;

    return-object v0
.end method

.method public static getRawFormat()Lorg/jdom2/output/Format;
    .locals 1

    .line 192
    new-instance v0, Lorg/jdom2/output/Format;

    invoke-direct {v0}, Lorg/jdom2/output/Format;-><init>()V

    return-object v0
.end method

.method public static final trimBoth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 315
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-gt v1, v0, :cond_1

    .line 320
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-le v1, v0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 326
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trimLeft(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 297
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lt v1, v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 304
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trimRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 278
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 284
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/output/Format;
    .locals 1

    .line 938
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/output/Format;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 909
    iget-object v0, p0, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEscapeStrategy()Lorg/jdom2/output/EscapeStrategy;
    .locals 1

    .line 636
    iget-object v0, p0, Lorg/jdom2/output/Format;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object v0
.end method

.method public getExpandEmptyElements()Z
    .locals 1

    .line 800
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    return v0
.end method

.method public getIgnoreTrAXEscapingPIs()Z
    .locals 1

    .line 841
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->ignoreTrAXEscapingPIs:Z

    return v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .line 886
    iget-object v0, p0, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    .line 728
    iget-object v0, p0, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getOmitDeclaration()Z
    .locals 1

    .line 777
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->omitDeclaration:Z

    return v0
.end method

.method public getOmitEncoding()Z
    .locals 1

    .line 753
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->omitEncoding:Z

    return v0
.end method

.method public getTextMode()Lorg/jdom2/output/Format$TextMode;
    .locals 1

    .line 862
    iget-object v0, p0, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    return-object v0
.end method

.method public isSpecifiedAttributesOnly()Z
    .locals 1

    .line 919
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->specifiedAttributesOnly:Z

    return v0
.end method

.method public setEncoding(Ljava/lang/String;)Lorg/jdom2/output/Format;
    .locals 0

    .line 898
    iput-object p1, p0, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    .line 899
    invoke-static {p1}, Lorg/jdom2/output/Format;->chooseStrategy(Ljava/lang/String;)Lorg/jdom2/output/EscapeStrategy;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom2/output/Format;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object p0
.end method

.method public setEscapeStrategy(Lorg/jdom2/output/EscapeStrategy;)Lorg/jdom2/output/Format;
    .locals 0

    .line 626
    iput-object p1, p0, Lorg/jdom2/output/Format;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object p0
.end method

.method public setExpandEmptyElements(Z)Lorg/jdom2/output/Format;
    .locals 0

    .line 790
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    return-object p0
.end method

.method public setIgnoreTrAXEscapingPIs(Z)V
    .locals 0

    .line 831
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->ignoreTrAXEscapingPIs:Z

    return-void
.end method

.method public setIndent(Ljava/lang/String;)Lorg/jdom2/output/Format;
    .locals 0

    .line 876
    iput-object p1, p0, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    return-object p0
.end method

.method public setLineSeparator(Ljava/lang/String;)Lorg/jdom2/output/Format;
    .locals 1

    const-string v0, ""

    .line 697
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    return-object p0
.end method

.method public setLineSeparator(Lorg/jdom2/output/LineSeparator;)Lorg/jdom2/output/Format;
    .locals 0

    if-nez p1, :cond_0

    .line 717
    sget-object p1, Lorg/jdom2/output/Format;->STANDARD_LINE_SEPARATOR:Ljava/lang/String;

    goto :goto_0

    .line 719
    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/output/LineSeparator;->value()Ljava/lang/String;

    move-result-object p1

    .line 717
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jdom2/output/Format;->setLineSeparator(Ljava/lang/String;)Lorg/jdom2/output/Format;

    move-result-object p1

    return-object p1
.end method

.method public setOmitDeclaration(Z)Lorg/jdom2/output/Format;
    .locals 0

    .line 767
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->omitDeclaration:Z

    return-object p0
.end method

.method public setOmitEncoding(Z)Lorg/jdom2/output/Format;
    .locals 0

    .line 743
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->omitEncoding:Z

    return-object p0
.end method

.method public setSpecifiedAttributesOnly(Z)V
    .locals 0

    .line 930
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->specifiedAttributesOnly:Z

    return-void
.end method

.method public setTextMode(Lorg/jdom2/output/Format$TextMode;)Lorg/jdom2/output/Format;
    .locals 0

    .line 852
    iput-object p1, p0, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    return-object p0
.end method
