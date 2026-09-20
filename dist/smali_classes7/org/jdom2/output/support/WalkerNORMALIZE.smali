.class public Lorg/jdom2/output/support/WalkerNORMALIZE;
.super Lorg/jdom2/output/support/AbstractFormattedWalker;
.source "WalkerNORMALIZE.java"


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/jdom2/output/support/FormatStack;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;",
            "Lorg/jdom2/output/support/FormatStack;",
            "Z)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lorg/jdom2/output/support/AbstractFormattedWalker;-><init>(Ljava/util/List;Lorg/jdom2/output/support/FormatStack;Z)V

    return-void
.end method

.method private isSpaceFirst(Ljava/lang/String;)Z
    .locals 2

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method private isSpaceLast(Ljava/lang/String;)Z
    .locals 2

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected analyzeMultiText(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;II)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p3, :cond_a

    add-int v4, p2, v1

    .line 104
    invoke-virtual {p0, v4}, Lorg/jdom2/output/support/WalkerNORMALIZE;->get(I)Lorg/jdom2/Content;

    move-result-object v4

    .line 105
    sget-object v5, Lorg/jdom2/output/support/WalkerNORMALIZE$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v4}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const-string v6, " "

    const/4 v7, 0x1

    if-eq v5, v7, :cond_5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 142
    sget-object v2, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {p1, v2, v6}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-virtual {p1, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendRaw(Lorg/jdom2/Content;)V

    move v3, v0

    :goto_1
    move v2, v7

    goto :goto_3

    .line 122
    :cond_1
    invoke-virtual {v4}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-static {v4}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_9

    .line 124
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    .line 128
    invoke-direct {p0, v4}, Lorg/jdom2/output/support/WalkerNORMALIZE;->isSpaceFirst(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    :cond_3
    sget-object v2, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {p1, v2, v6}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 131
    :cond_4
    sget-object v2, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->COMPACT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {p1, v2, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendCDATA(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, v4}, Lorg/jdom2/output/support/WalkerNORMALIZE;->isSpaceLast(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 107
    :cond_5
    invoke-virtual {v4}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v4}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_9

    .line 109
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    :goto_2
    move v3, v7

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_8

    if-nez v3, :cond_7

    .line 113
    invoke-direct {p0, v4}, Lorg/jdom2/output/support/WalkerNORMALIZE;->isSpaceFirst(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 114
    :cond_7
    sget-object v2, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {p1, v2, v6}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 116
    :cond_8
    sget-object v2, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->COMPACT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {p1, v2, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v4}, Lorg/jdom2/output/support/WalkerNORMALIZE;->isSpaceLast(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method
