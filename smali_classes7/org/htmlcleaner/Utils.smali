.class public Lorg/htmlcleaner/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final ASCII_CHAR:Ljava/util/regex/Pattern;

.field public static DECIMAL:Ljava/util/regex/Pattern; = null

.field public static HEX_RELAXED:Ljava/util/regex/Pattern; = null

.field public static HEX_STRICT:Ljava/util/regex/Pattern; = null

.field static final VALID_XML_IDENTIFIER_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field static final VALID_XML_IDENTIFIER_CHAR_REGEX:Ljava/lang/String; = "^[:A-Z_a-z\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\ud7ff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\x{10000}-\\x{EFFFF}][:A-Z_a-z\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\udfff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\-\\.0-9\\u00b7\\u0300-\\u036f\\u203f-\\u2040]*\\Z"

.field static final VALID_XML_IDENTIFIER_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field static final VALID_XML_IDENTIFIER_START_CHAR_REGEX:Ljava/lang/String; = "^[:A-Z_a-z\\u00C0\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\ud7ff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\x{10000}-\\x{EFFFF}]"

.field private static ampNcr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[:A-Z_a-z\\u00C0\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\ud7ff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\x{10000}-\\x{EFFFF}]"

    .line 54
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->compileUnicodePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/htmlcleaner/Utils;->VALID_XML_IDENTIFIER_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^[:A-Z_a-z\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\ud7ff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\x{10000}-\\x{EFFFF}][:A-Z_a-z\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\udfff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\-\\.0-9\\u00b7\\u0300-\\u036f\\u203f-\\u2040]*\\Z"

    .line 71
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->compileUnicodePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/htmlcleaner/Utils;->VALID_XML_IDENTIFIER_CHAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\p{Print}"

    .line 412
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/htmlcleaner/Utils;->ASCII_CHAR:Ljava/util/regex/Pattern;

    const-string v0, "^([x|X][\\p{XDigit}]+)(;?)"

    .line 556
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/htmlcleaner/Utils;->HEX_STRICT:Ljava/util/regex/Pattern;

    const-string v0, "^0*([x|X][\\p{XDigit}]+)(;?)"

    .line 557
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/htmlcleaner/Utils;->HEX_RELAXED:Ljava/util/regex/Pattern;

    const-string v0, "^([\\p{Digit}]+)(;?)"

    .line 558
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/htmlcleaner/Utils;->DECIMAL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bchomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-static {p0}, Lorg/htmlcleaner/Utils;->lchomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/htmlcleaner/Utils;->chomp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 93
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0

    .line 101
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_4

    add-int/lit8 v2, v0, -0x1

    .line 105
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    if-eq v4, v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 111
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static compileUnicodePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    const/16 v0, 0x100

    .line 897
    :try_start_0
    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 899
    :catch_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private static convertToUnicode(Ljava/lang/String;ZZZLjava/lang/StringBuilder;I)I
    .locals 9

    const-string v0, "&amp;#"

    const-string v1, ";"

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    .line 500
    invoke-static {p0, p5, v3, v2}, Lorg/htmlcleaner/Utils;->extractCharCode(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result p0

    .line 501
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p5

    const-string v4, "&amp;"

    if-lez p5, :cond_9

    const/4 p5, 0x0

    .line 503
    :try_start_0
    invoke-virtual {v2, p5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 511
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 516
    :goto_0
    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    .line 518
    sget-object v8, Lorg/htmlcleaner/SpecialEntities;->INSTANCE:Lorg/htmlcleaner/SpecialEntities;

    invoke-virtual {v8, v6}, Lorg/htmlcleaner/SpecialEntities;->getSpecialEntityByUnicode(I)Lorg/htmlcleaner/SpecialEntity;

    move-result-object v6

    .line 519
    array-length v8, v7

    if-ne v8, v3, :cond_1

    aget-char p5, v7, p5

    if-nez p5, :cond_1

    .line 522
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_1
    if-eqz v6, :cond_6

    .line 525
    invoke-virtual {v6}, Lorg/htmlcleaner/SpecialEntity;->isHtmlSpecialEntity()Z

    move-result p5

    if-eqz p5, :cond_2

    if-nez p2, :cond_6

    :cond_2
    if-eqz p1, :cond_3

    .line 528
    invoke-virtual {v6}, Lorg/htmlcleaner/SpecialEntity;->getHtmlString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_5

    if-eqz v5, :cond_4

    .line 529
    invoke-virtual {v6}, Lorg/htmlcleaner/SpecialEntity;->getHexNCR()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Lorg/htmlcleaner/SpecialEntity;->getDecimalNCR()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 530
    :cond_5
    invoke-virtual {v6}, Lorg/htmlcleaner/SpecialEntity;->getEscapedXmlString()Ljava/lang/String;

    move-result-object p1

    .line 528
    :goto_1
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 533
    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 534
    :cond_7
    sget-object p1, Lorg/htmlcleaner/Utils;->ASCII_CHAR:Ljava/util/regex/Pattern;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 537
    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string p1, "&#"

    .line 539
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 547
    :catch_0
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 543
    :catch_1
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 550
    :cond_9
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return p0
.end method

.method private static convert_To_Entity_Name(Ljava/lang/String;ZZZLjava/lang/StringBuilder;I)I
    .locals 8

    const-string v0, ";"

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    .line 431
    invoke-static {p0, p5, v2, v1}, Lorg/htmlcleaner/Utils;->extractCharCode(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result p0

    .line 432
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p5

    const-string v3, "&amp;"

    if-lez p5, :cond_a

    const/4 p5, 0x0

    .line 434
    :try_start_0
    invoke-virtual {v1, p5, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 443
    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 446
    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    .line 449
    :goto_0
    sget-object v7, Lorg/htmlcleaner/SpecialEntities;->INSTANCE:Lorg/htmlcleaner/SpecialEntities;

    invoke-virtual {v7, v5}, Lorg/htmlcleaner/SpecialEntities;->getSpecialEntityByUnicode(I)Lorg/htmlcleaner/SpecialEntity;

    move-result-object v5

    .line 450
    array-length v7, v6

    if-ne v7, v2, :cond_1

    aget-char p5, v6, p5

    if-nez p5, :cond_1

    .line 453
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_1
    if-eqz v5, :cond_7

    .line 457
    invoke-virtual {v5}, Lorg/htmlcleaner/SpecialEntity;->isHtmlSpecialEntity()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 459
    invoke-virtual {v5}, Lorg/htmlcleaner/SpecialEntity;->getHtmlString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lorg/htmlcleaner/SpecialEntity;->getEscapedValue()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    .line 463
    invoke-virtual {v5}, Lorg/htmlcleaner/SpecialEntity;->getHtmlString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_6

    if-eqz v4, :cond_5

    .line 464
    invoke-virtual {v5}, Lorg/htmlcleaner/SpecialEntity;->getHexNCR()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lorg/htmlcleaner/SpecialEntity;->getDecimalNCR()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 465
    :cond_6
    invoke-virtual {v5}, Lorg/htmlcleaner/SpecialEntity;->getHtmlString()Ljava/lang/String;

    move-result-object p1

    .line 463
    :goto_2
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    .line 469
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 470
    :cond_8
    sget-object p1, Lorg/htmlcleaner/Utils;->ASCII_CHAR:Ljava/util/regex/Pattern;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 473
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    const-string p1, "&#"

    .line 476
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "&amp;#"

    .line 480
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 483
    :cond_a
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    return p0
.end method

.method public static deserializeEntities(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13

    .line 796
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 797
    sget-object p0, Lorg/htmlcleaner/SpecialEntities;->INSTANCE:Lorg/htmlcleaner/SpecialEntities;

    .line 801
    invoke-virtual {p0}, Lorg/htmlcleaner/SpecialEntities;->getMaxEntityLength()I

    move-result v1

    .line 803
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v5, v2, :cond_c

    .line 805
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    const/16 v10, 0x26

    if-ne v9, v10, :cond_0

    add-int/lit8 v6, v5, 0x1

    move v7, v4

    move v8, v7

    move v12, v6

    move v6, v5

    move v5, v12

    goto :goto_0

    :cond_0
    if-eq v6, v3, :cond_b

    .line 811
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_8

    if-eqz v7, :cond_4

    if-eqz v8, :cond_1

    const/4 v9, 0x3

    goto :goto_1

    :cond_1
    const/4 v9, 0x2

    :goto_1
    add-int/2addr v9, v6

    .line 816
    :try_start_0
    invoke-virtual {v0, v9, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_2

    const/16 v10, 0x10

    goto :goto_2

    :cond_2
    const/16 v10, 0xa

    .line 815
    :goto_2
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move v9, v3

    .line 826
    :goto_3
    invoke-virtual {p0, v9}, Lorg/htmlcleaner/SpecialEntities;->getSpecialEntityByUnicode(I)Lorg/htmlcleaner/SpecialEntity;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 828
    invoke-virtual {v10}, Lorg/htmlcleaner/SpecialEntity;->intValue()I

    move-result v9

    goto :goto_5

    :cond_3
    if-nez p1, :cond_6

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v6, 0x1

    .line 832
    invoke-virtual {v0, v9, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/htmlcleaner/SpecialEntities;->getSpecialEntity(Ljava/lang/String;)Lorg/htmlcleaner/SpecialEntity;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 834
    invoke-virtual {v9}, Lorg/htmlcleaner/SpecialEntity;->intValue()I

    move-result v9

    goto :goto_5

    :cond_5
    :goto_4
    move v9, v3

    :cond_6
    :goto_5
    if-ltz v9, :cond_7

    .line 838
    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    .line 839
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v6, v5, v9}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 840
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 841
    array-length v2, v2

    add-int/2addr v6, v2

    move v2, v5

    move v5, v6

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    :goto_6
    move v6, v3

    goto :goto_0

    :cond_8
    add-int/lit8 v9, v6, 0x1

    const/4 v10, 0x1

    if-ne v5, v9, :cond_9

    .line 847
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    const/16 v11, 0x23

    if-ne v9, v11, :cond_9

    move v7, v10

    goto :goto_7

    :cond_9
    add-int/lit8 v9, v6, 0x2

    if-ne v5, v9, :cond_a

    if-eqz v7, :cond_a

    .line 849
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    const/16 v11, 0x78

    if-ne v9, v11, :cond_a

    move v8, v10

    goto :goto_7

    :cond_a
    sub-int v9, v5, v6

    if-le v9, v1, :cond_b

    move v6, v3

    :cond_b
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 860
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeHtml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;)Ljava/lang/String;
    .locals 8

    .line 233
    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->isAdvancedXmlEscape()Z

    move-result v1

    .line 234
    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v2

    .line 235
    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->isTranslateSpecialEntities()Z

    move-result v3

    .line 236
    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->isTransResCharsToNCR()Z

    move-result v5

    .line 237
    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->isTransSpecialEntitiesToNCR()Z

    move-result v6

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    .line 238
    invoke-static/range {v0 .. v7}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;ZZZZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml(Ljava/lang/String;Lorg/htmlcleaner/CleanerProperties;Z)Ljava/lang/String;
    .locals 8

    .line 248
    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->isAdvancedXmlEscape()Z

    move-result v1

    .line 249
    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v2

    .line 250
    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->isTranslateSpecialEntities()Z

    move-result v3

    .line 251
    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->isTransResCharsToNCR()Z

    move-result v5

    .line 252
    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->isTransSpecialEntitiesToNCR()Z

    move-result v6

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p2

    .line 253
    invoke-static/range {v0 .. v7}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;ZZZZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml(Ljava/lang/String;ZZZZZZ)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 271
    invoke-static/range {v0 .. v7}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;ZZZZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml(Ljava/lang/String;ZZZZZZZ)Ljava/lang/String;
    .locals 12

    move-object v6, p0

    move/from16 v7, p4

    if-eqz v6, :cond_18

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 292
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v10, 0x0

    move v0, v10

    :goto_0
    if-ge v0, v8, :cond_17

    .line 295
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    const/4 v11, 0x1

    if-ne v1, v2, :cond_10

    const/16 v1, 0x23

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    add-int/lit8 v2, v8, -0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 299
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_1

    add-int/lit8 v5, v0, 0x2

    move-object v0, p0

    move/from16 v1, p4

    move v2, p2

    move/from16 v3, p6

    move-object v4, v9

    .line 301
    invoke-static/range {v0 .. v5}, Lorg/htmlcleaner/Utils;->convertToUnicode(Ljava/lang/String;ZZZLjava/lang/StringBuilder;I)I

    move-result v0

    goto/16 :goto_8

    :cond_1
    const/16 v2, 0xa

    const-string v3, "&amp;"

    if-nez p3, :cond_2

    if-eqz p1, :cond_a

    .line 302
    :cond_2
    sget-object v4, Lorg/htmlcleaner/SpecialEntities;->INSTANCE:Lorg/htmlcleaner/SpecialEntities;

    sub-int v5, v8, v0

    .line 303
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/htmlcleaner/SpecialEntities;->getSpecialEntity(Ljava/lang/String;)Lorg/htmlcleaner/SpecialEntity;

    move-result-object v4

    if-eqz v4, :cond_a

    if-eqz p3, :cond_4

    .line 304
    invoke-virtual {v4}, Lorg/htmlcleaner/SpecialEntity;->isHtmlSpecialEntity()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    .line 306
    invoke-virtual {v4}, Lorg/htmlcleaner/SpecialEntity;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 308
    :cond_3
    invoke-virtual {v4}, Lorg/htmlcleaner/SpecialEntity;->getDecimalNCR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :goto_1
    invoke-virtual {v4}, Lorg/htmlcleaner/SpecialEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_5

    :cond_4
    if-eqz p1, :cond_8

    if-eqz p5, :cond_5

    .line 316
    invoke-virtual {v4}, Lorg/htmlcleaner/SpecialEntity;->getDecimalNCR()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    if-nez p7, :cond_7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move v1, v10

    goto :goto_3

    :cond_7
    :goto_2
    move v1, v11

    :goto_3
    invoke-virtual {v4, v1}, Lorg/htmlcleaner/SpecialEntity;->getEscaped(Z)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v4}, Lorg/htmlcleaner/SpecialEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_5

    :cond_8
    if-eqz p5, :cond_9

    .line 319
    invoke-static {}, Lorg/htmlcleaner/Utils;->getAmpNcr()Ljava/lang/String;

    move-result-object v3

    :cond_9
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_a
    if-eqz p7, :cond_e

    .line 332
    sget-object v4, Lorg/htmlcleaner/SpecialEntities;->INSTANCE:Lorg/htmlcleaner/SpecialEntities;

    sub-int v5, v8, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/htmlcleaner/SpecialEntities;->getSpecialEntity(Ljava/lang/String;)Lorg/htmlcleaner/SpecialEntity;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 338
    invoke-virtual {v2}, Lorg/htmlcleaner/SpecialEntity;->getEscapedValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v2}, Lorg/htmlcleaner/SpecialEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_5
    add-int/2addr v1, v11

    add-int/2addr v0, v1

    goto/16 :goto_8

    :cond_b
    add-int/lit8 v2, v8, -0x1

    if-ge v0, v2, :cond_c

    add-int/lit8 v2, v0, 0x1

    .line 344
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_c

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v5, v0, 0x2

    move-object v0, p0

    move-object v4, v9

    .line 348
    invoke-static/range {v0 .. v5}, Lorg/htmlcleaner/Utils;->convert_To_Entity_Name(Ljava/lang/String;ZZZLjava/lang/StringBuilder;I)I

    move-result v0

    goto :goto_8

    :cond_c
    if-eqz p5, :cond_d

    .line 356
    invoke-static {}, Lorg/htmlcleaner/Utils;->getAmpNcr()Ljava/lang/String;

    move-result-object v3

    :cond_d
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_e
    if-eqz p5, :cond_f

    .line 359
    invoke-static {}, Lorg/htmlcleaner/Utils;->getAmpNcr()Ljava/lang/String;

    move-result-object v3

    :cond_f
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 361
    :cond_10
    sget-object v2, Lorg/htmlcleaner/SpecialEntities;->INSTANCE:Lorg/htmlcleaner/SpecialEntities;

    invoke-virtual {v2, v1}, Lorg/htmlcleaner/SpecialEntities;->getSpecialEntityByUnicode(I)Lorg/htmlcleaner/SpecialEntity;

    move-result-object v2

    if-eqz v2, :cond_16

    if-eqz p7, :cond_13

    const-string v3, "apos"

    .line 367
    invoke-virtual {v2}, Lorg/htmlcleaner/SpecialEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 371
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_11
    if-eqz v7, :cond_12

    .line 376
    invoke-virtual {v2}, Lorg/htmlcleaner/SpecialEntity;->getHtmlString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_12
    invoke-virtual {v2}, Lorg/htmlcleaner/SpecialEntity;->getEscapedValue()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_13
    if-eqz v7, :cond_14

    .line 383
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/htmlcleaner/Utils;->isXmlReservedCharacter(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 384
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_14
    if-eqz p5, :cond_15

    .line 387
    invoke-virtual {v2}, Lorg/htmlcleaner/SpecialEntity;->getDecimalNCR()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_15
    invoke-virtual {v2, v7}, Lorg/htmlcleaner/SpecialEntity;->getEscaped(Z)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 392
    :cond_16
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    add-int/2addr v0, v11

    goto/16 :goto_0

    .line 396
    :cond_17
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private static extractCharCode(Ljava/lang/String;IZLjava/lang/StringBuilder;)I
    .locals 2

    .line 574
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p1, 0xf

    .line 575
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 578
    sget-object p2, Lorg/htmlcleaner/Utils;->HEX_RELAXED:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    goto :goto_0

    .line 580
    :cond_0
    sget-object p2, Lorg/htmlcleaner/Utils;->HEX_STRICT:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 583
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p2, Lorg/htmlcleaner/Utils;->DECIMAL:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 585
    :cond_1
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    add-int/2addr p1, p0

    .line 586
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return p1
.end method

.method public static fullUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 196
    invoke-static {p1}, Lorg/htmlcleaner/Utils;->isFullUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    const-string v2, "?"

    .line 198
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x3f

    .line 199
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gez v2, :cond_1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_2

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 206
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v2, "/"

    .line 210
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 212
    invoke-static {p0}, Lorg/htmlcleaner/Utils;->isFullUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    const/16 v4, 0x8

    if-eqz v3, :cond_5

    .line 216
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    :goto_0
    if-gt v5, v4, :cond_6

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_6
    add-int/2addr v5, v1

    .line 220
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 223
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAmpNcr()Ljava/lang/String;
    .locals 2

    .line 405
    sget-object v0, Lorg/htmlcleaner/Utils;->ampNcr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 406
    sget-object v0, Lorg/htmlcleaner/SpecialEntities;->INSTANCE:Lorg/htmlcleaner/SpecialEntities;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/SpecialEntities;->getSpecialEntityByUnicode(I)Lorg/htmlcleaner/SpecialEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlcleaner/SpecialEntity;->getDecimalNCR()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/htmlcleaner/Utils;->ampNcr:Ljava/lang/String;

    .line 409
    :cond_0
    sget-object v0, Lorg/htmlcleaner/Utils;->ampNcr:Ljava/lang/String;

    return-object v0
.end method

.method public static getXmlNSPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    .line 711
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 713
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getXmlName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    .line 724
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 725
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 726
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static isEmptyString(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 679
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 680
    invoke-static/range {v1 .. v8}, Lorg/htmlcleaner/Utils;->escapeXml(Ljava/lang/String;ZZZZZZZ)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xa0

    const/16 v2, 0x20

    .line 682
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 683
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFullUrl(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 186
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "http://"

    .line 187
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isValidHtmlAttributeName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[^\\u0000\\u0020\\u0022\\u0027\\u003E\\u002F\\u003d]+$"

    .line 611
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->compileUnicodePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 612
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 613
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method static isValidInt(Ljava/lang/String;I)Z
    .locals 0

    .line 734
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidXmlIdentifier(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 662
    :cond_0
    sget-object v1, Lorg/htmlcleaner/Utils;->VALID_XML_IDENTIFIER_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 663
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isValidXmlIdentifierStartChar(Ljava/lang/String;)Z
    .locals 1

    .line 869
    sget-object v0, Lorg/htmlcleaner/Utils;->VALID_XML_IDENTIFIER_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 870
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static isWhitespaceString(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 786
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, ""

    .line 787
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isXmlReservedCharacter(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\'\"<>&"

    .line 703
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static lchomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 125
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 126
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    const-string p0, ""

    return-object p0

    .line 135
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_6

    .line 138
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 v3, 0x2

    goto :goto_1

    :cond_5
    move v3, v4

    .line 144
    :cond_6
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ltrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 751
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 753
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lt v1, v0, :cond_2

    const-string p0, ""

    goto :goto_1

    .line 757
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static readUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    .line 159
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-array p1, v1, [C

    .line 164
    :cond_0
    invoke-virtual {v2, p1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v3, 0x0

    .line 166
    invoke-virtual {v0, p1, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-gtz v1, :cond_0

    .line 170
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public static replaceInvalidXmlIdentifierCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[^:A-Z_a-z\\u00C0\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\udfff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\-\\.0-9\\u00b7\\u0300-\\u036f\\u203f-\\u2040]"

    .line 887
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->compileUnicodePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 888
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 889
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rtrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 769
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 772
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-gtz v0, :cond_2

    const-string p0, ""

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 776
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static sanitizeHtmlAttributeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[\\u0000\\u0020\\u0022\\u0027\\u003E\\u002F\\u003d]"

    .line 603
    invoke-static {v0}, Lorg/htmlcleaner/Utils;->compileUnicodePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 604
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    .line 605
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeXmlIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "hc-generated-"

    const-string v1, ""

    .line 592
    invoke-static {p0, v0, v1}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeXmlIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 596
    invoke-static {p0, p1, v0}, Lorg/htmlcleaner/Utils;->sanitizeXmlIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeXmlIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 623
    invoke-static {p0}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 629
    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifierStartChar(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 630
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 631
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 632
    invoke-static {p1}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    .line 637
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-static {p1}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    :cond_2
    const-string p1, ""

    .line 645
    invoke-static {p0, p1}, Lorg/htmlcleaner/Utils;->replaceInvalidXmlIdentifierCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 646
    invoke-static {p0}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tokenize(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 691
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 694
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 695
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    move v0, p1

    goto :goto_0

    :cond_1
    return-object p0
.end method
