.class public Lorg/htmlcleaner/XPather;
.super Ljava/lang/Object;
.source "XPather.java"


# static fields
.field private static final C0:I = 0x30

.field private static final C9:I = 0x39

.field private static final CD:I = 0x2e

.field private static final CM:I = 0x2d

.field private static final CP:I = 0x2b

.field private static final CS:I = 0x20


# instance fields
.field private tokenArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "/()[]\"\'=<>"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    .line 84
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 90
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findClosingIndex(II)I
    .locals 12

    if-ge p1, p2, :cond_d

    .line 390
    iget-object v0, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "\""

    .line 392
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    add-int/2addr p1, v3

    :goto_0
    if-gt p1, p2, :cond_d

    .line 394
    iget-object v0, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "\'"

    .line 398
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/2addr p1, v3

    :goto_1
    if-gt p1, p2, :cond_d

    .line 400
    iget-object v0, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "("

    .line 404
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "/"

    const-string v7, "["

    if-nez v5, :cond_4

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 407
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 408
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 409
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    add-int/2addr p1, v3

    move v9, v8

    move v8, v5

    move v5, v3

    :goto_2
    if-gt p1, p2, :cond_d

    .line 411
    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    xor-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 413
    :cond_5
    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    xor-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 415
    :cond_6
    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 417
    :cond_7
    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, p1

    const-string v11, ")"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v3, :cond_8

    if-eqz v5, :cond_8

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 419
    :cond_8
    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v3, :cond_9

    if-eqz v5, :cond_9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 421
    :cond_9
    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, p1

    const-string v11, "]"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v3, :cond_a

    if-eqz v5, :cond_a

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 423
    :cond_a
    iget-object v10, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v3, :cond_b

    if-eqz v5, :cond_b

    if-nez v8, :cond_b

    if-nez v9, :cond_b

    add-int/lit8 v0, v0, -0x1

    :cond_b
    :goto_3
    if-eqz v3, :cond_c

    if-eqz v5, :cond_c

    if-nez v8, :cond_c

    if-nez v9, :cond_c

    if-nez v0, :cond_c

    return p1

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method private flatten(II)Ljava/lang/String;
    .locals 2

    if-gt p1, p2, :cond_1

    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 205
    iget-object v1, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getElementsByName(Ljava/util/Collection;IIZZ)Ljava/util/Collection;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 466
    iget-object v0, v9, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 468
    invoke-direct {v9, v10}, Lorg/htmlcleaner/XPather;->isAtt(Ljava/lang/String;)Z

    move-result v0

    const-string v11, "*"

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 469
    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 470
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_1

    .line 473
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 474
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 475
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 477
    instance-of v4, v3, Lorg/htmlcleaner/TagNode;

    if-eqz v4, :cond_0

    .line 478
    check-cast v3, Lorg/htmlcleaner/TagNode;

    .line 479
    invoke-virtual {v3, v0}, Lorg/htmlcleaner/TagNode;->getAllElementsList(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v1, p1

    .line 486
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 487
    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 488
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 489
    instance-of v1, v0, Lorg/htmlcleaner/TagNode;

    if-eqz v1, :cond_5

    .line 490
    check-cast v0, Lorg/htmlcleaner/TagNode;

    .line 491
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 492
    invoke-virtual {v0}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 494
    :cond_4
    invoke-virtual {v0, v10}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 496
    invoke-direct {v9, v0}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 500
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/htmlcleaner/XPather;->throwStandardException()V

    goto :goto_1

    :cond_6
    return-object v12

    .line 505
    :cond_7
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 506
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    move v0, v14

    .line 508
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 509
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 510
    instance-of v2, v1, Lorg/htmlcleaner/TagNode;

    if-eqz v2, :cond_11

    .line 511
    move-object v15, v1

    check-cast v15, Lorg/htmlcleaner/TagNode;

    add-int/lit8 v16, v0, 0x1

    const-string v0, "."

    .line 513
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const-string v0, ".."

    .line 514
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 515
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v17, :cond_8

    .line 519
    invoke-direct {v9, v15}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_3

    :cond_8
    if-eqz v18, :cond_a

    .line 521
    invoke-virtual {v15}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 522
    invoke-direct {v9, v0}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_a
    if-eqz v19, :cond_b

    .line 524
    invoke-virtual {v15}, Lorg/htmlcleaner/TagNode;->getChildTagList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_b
    invoke-virtual {v15, v10, v14}, Lorg/htmlcleaner/TagNode;->getElementListByName(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 527
    :goto_3
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    add-int/lit8 v2, p2, 0x1

    const/4 v4, 0x0

    .line 528
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v5, v16

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    if-eqz p4, :cond_f

    .line 531
    invoke-virtual {v15}, Lorg/htmlcleaner/TagNode;->getChildTagList()Ljava/util/List;

    move-result-object v0

    if-nez v17, :cond_c

    if-nez v18, :cond_c

    if-eqz v19, :cond_d

    .line 533
    :cond_c
    invoke-interface {v12, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 535
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 536
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 537
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/htmlcleaner/TagNode;

    .line 538
    invoke-direct {v9, v8}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/htmlcleaner/XPather;->getElementsByName(Ljava/util/Collection;IIZZ)Ljava/util/Collection;

    move-result-object v0

    if-nez v17, :cond_e

    if-nez v18, :cond_e

    if-nez v19, :cond_e

    .line 539
    invoke-interface {v6, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 540
    invoke-interface {v12, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_e
    invoke-interface {v12, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 545
    :cond_f
    invoke-interface {v12, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_10
    move/from16 v0, v16

    goto/16 :goto_2

    .line 548
    :cond_11
    invoke-direct/range {p0 .. p0}, Lorg/htmlcleaner/XPather;->throwStandardException()V

    goto/16 :goto_2

    :cond_12
    return-object v12
.end method

.method private isAtt(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFunctionCall(II)Z
    .locals 3

    .line 278
    iget-object v0, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lorg/htmlcleaner/XPather;->isIdentifier(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    const-string v2, "("

    invoke-direct {p0, v2, v0}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 282
    invoke-direct {p0, p1, p2}, Lorg/htmlcleaner/XPather;->findClosingIndex(II)I

    move-result p2

    if-le p2, p1, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method private isIdentifier(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 255
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    .line 260
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 261
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    .line 262
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private isToken(Ljava/lang/String;I)Z
    .locals 2

    .line 378
    iget-object v0, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    array-length v1, v0

    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    .line 379
    aget-object p2, v0, p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidDouble(Ljava/lang/String;)Z
    .locals 8

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 233
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    const/16 v4, 0x39

    const/16 v5, 0x30

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    if-lt v2, v5, :cond_4

    if-gt v2, v4, :cond_4

    :cond_0
    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 236
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_2

    if-lt v6, v5, :cond_1

    if-le v6, v4, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method private static isValidInteger(Ljava/lang/String;)Z
    .locals 7

    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 217
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    const/16 v4, 0x39

    const/16 v5, 0x30

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    if-lt v2, v5, :cond_4

    if-gt v2, v4, :cond_4

    :cond_0
    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 220
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_2

    if-le v6, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method private singleton(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private throwStandardException()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/htmlcleaner/XPatherException;

    invoke-direct {v0}, Lorg/htmlcleaner/XPatherException;-><init>()V

    throw v0
.end method

.method private toText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 605
    :cond_0
    instance-of v0, p1, Lorg/htmlcleaner/TagNode;

    if-eqz v0, :cond_1

    .line 606
    check-cast p1, Lorg/htmlcleaner/TagNode;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 608
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    if-ltz v11, :cond_13

    .line 129
    iget-object v0, v9, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    array-length v1, v0

    if-ge v12, v1, :cond_13

    if-gt v11, v12, :cond_13

    .line 130
    aget-object v0, v0, v11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 131
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "("

    .line 132
    invoke-direct {p0, v0, v11}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-direct {p0, v11, v12}, Lorg/htmlcleaner/XPather;->findClosingIndex(II)I

    move-result v13

    if-lez v13, :cond_1

    add-int/lit8 v2, v11, 0x1

    add-int/lit8 v3, v13, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 135
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v13, 0x1

    move/from16 v3, p3

    .line 136
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1
    invoke-direct {p0}, Lorg/htmlcleaner/XPather;->throwStandardException()V

    goto/16 :goto_3

    :cond_2
    const-string v0, "["

    .line 140
    invoke-direct {p0, v0, v11}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    invoke-direct {p0, v11, v12}, Lorg/htmlcleaner/XPather;->findClosingIndex(II)I

    move-result v0

    if-lez v0, :cond_3

    if-eqz v10, :cond_3

    add-int/lit8 v1, v11, 0x1

    add-int/lit8 v2, v0, -0x1

    .line 143
    invoke-virtual {p0, p1, v1, v2}, Lorg/htmlcleaner/XPather;->filterByCondition(Ljava/util/Collection;II)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 144
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 146
    :cond_3
    invoke-direct {p0}, Lorg/htmlcleaner/XPather;->throwStandardException()V

    goto/16 :goto_3

    :cond_4
    const-string v0, "\""

    .line 148
    invoke-direct {p0, v0, v11}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "\'"

    invoke-direct {p0, v0, v11}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v0, "="

    .line 156
    invoke-direct {p0, v0, v11}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v1

    const-string v2, ">"

    const-string v3, "<"

    if-nez v1, :cond_6

    invoke-direct {p0, v3, v11}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, v2, v11}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    if-eqz p7, :cond_9

    add-int/lit8 v13, v11, 0x1

    .line 158
    invoke-direct {p0, v0, v13}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v3, v11}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v2, v11}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    add-int/lit8 v2, v11, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p8

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 159
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v2, v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/htmlcleaner/XPather;->evaluateLogic(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p8

    move v2, v13

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 162
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 163
    iget-object v1, v9, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {p0, p1, v0, v1}, Lorg/htmlcleaner/XPather;->evaluateLogic(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    .line 165
    :goto_0
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-direct {p0, v1}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "/"

    .line 166
    invoke-direct {p0, v0, v11}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    add-int/lit8 v1, v11, 0x1

    .line 167
    invoke-direct {p0, v0, v1}, Lorg/htmlcleaner/XPather;->isToken(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    move v11, v1

    :cond_a
    if-ge v11, v12, :cond_c

    .line 172
    invoke-direct {p0, v11, v12}, Lorg/htmlcleaner/XPather;->findClosingIndex(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v0, v11, :cond_b

    move v13, v12

    goto :goto_1

    :cond_b
    move v13, v0

    :goto_1
    add-int/lit8 v2, v11, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v13

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 176
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v13, 0x1

    const/4 v4, 0x0

    move/from16 v3, p3

    .line 177
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 179
    :cond_c
    invoke-direct {p0}, Lorg/htmlcleaner/XPather;->throwStandardException()V

    goto/16 :goto_3

    .line 181
    :cond_d
    invoke-direct {p0, v11, v12}, Lorg/htmlcleaner/XPather;->isFunctionCall(II)Z

    move-result v0

    if-eqz v0, :cond_e

    add-int/lit8 v0, v11, 0x1

    .line 182
    invoke-direct {p0, v0, v12}, Lorg/htmlcleaner/XPather;->findClosingIndex(II)I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 183
    invoke-virtual/range {v0 .. v6}, Lorg/htmlcleaner/XPather;->evaluateFunction(Ljava/util/Collection;IIIIZ)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 184
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 185
    :cond_e
    iget-object v0, v9, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v0, v0, v11

    invoke-static {v0}, Lorg/htmlcleaner/XPather;->isValidInteger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 186
    iget-object v0, v9, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v11, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 187
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 188
    :cond_f
    iget-object v0, v9, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v0, v0, v11

    invoke-direct {p0, v0}, Lorg/htmlcleaner/XPather;->isValidDouble(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 189
    iget-object v0, v9, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v11, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 190
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_10
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p7

    .line 192
    invoke-direct/range {v0 .. v5}, Lorg/htmlcleaner/XPather;->getElementsByName(Ljava/util/Collection;IIZZ)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 149
    :cond_11
    :goto_2
    invoke-direct {p0, v11, v12}, Lorg/htmlcleaner/XPather;->findClosingIndex(II)I

    move-result v0

    if-le v0, v11, :cond_12

    add-int/lit8 v1, v11, 0x1

    add-int/lit8 v2, v0, -0x1

    .line 151
    invoke-direct {p0, v1, v2}, Lorg/htmlcleaner/XPather;->flatten(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 152
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 154
    :cond_12
    invoke-direct {p0}, Lorg/htmlcleaner/XPather;->throwStandardException()V

    .line 198
    :goto_3
    new-instance v0, Lorg/htmlcleaner/XPatherException;

    invoke-direct {v0}, Lorg/htmlcleaner/XPatherException;-><init>()V

    throw v0

    :cond_13
    return-object v10
.end method

.method public evaluateAgainstNode(Lorg/htmlcleaner/TagNode;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 105
    invoke-direct {p0, p1}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p1, p0, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 108
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    .line 110
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0

    .line 102
    :cond_1
    new-instance p1, Lorg/htmlcleaner/XPatherException;

    const-string v0, "Cannot evaluate XPath expression against null value!"

    invoke-direct {p1, v0}, Lorg/htmlcleaner/XPatherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected evaluateFunction(Ljava/util/Collection;IIIIZ)Ljava/util/Collection;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    move-object v9, p0

    .line 301
    iget-object v0, v9, Lorg/htmlcleaner/XPather;->tokenArray:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 302
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v12

    .line 305
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v0, 0x0

    .line 307
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 308
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v14, v0, 0x1

    const-string v0, "last"

    .line 310
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p6, :cond_0

    move/from16 v0, p5

    goto :goto_1

    :cond_0
    move v0, v12

    .line 311
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_1
    const-string v0, "position"

    .line 312
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p6, :cond_2

    move/from16 v0, p4

    goto :goto_2

    :cond_2
    move v0, v14

    .line 313
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_3
    const-string v0, "text"

    .line 314
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 315
    instance-of v0, v1, Lorg/htmlcleaner/TagNode;

    if-eqz v0, :cond_4

    .line 316
    check-cast v1, Lorg/htmlcleaner/TagNode;

    invoke-virtual {v1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 317
    :cond_4
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 318
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_5
    const-string v0, "count"

    .line 320
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p4

    move/from16 v7, p6

    .line 322
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 323
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const-string v0, "data"

    .line 324
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p4

    move/from16 v7, p6

    .line 325
    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 327
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 329
    instance-of v2, v1, Lorg/htmlcleaner/TagNode;

    if-eqz v2, :cond_8

    .line 330
    check-cast v1, Lorg/htmlcleaner/TagNode;

    invoke-virtual {v1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 331
    :cond_8
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 332
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    :goto_4
    move v0, v14

    goto/16 :goto_0

    .line 336
    :cond_a
    new-instance v0, Lorg/htmlcleaner/XPatherException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown function "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/htmlcleaner/XPatherException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return-object v11
.end method

.method protected evaluateLogic(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 563
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_13

    if-eqz p2, :cond_13

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 566
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 567
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 568
    instance-of v1, p1, Ljava/lang/Number;

    const-string v2, ">="

    const-string v3, "<="

    const-string v4, ">"

    const-string v5, "<"

    const-string v6, "="

    const/4 v7, 0x1

    if-eqz v1, :cond_a

    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_a

    .line 569
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 570
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 571
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    cmpl-double p1, v8, p1

    if-nez p1, :cond_1

    move v0, v7

    :cond_1
    return v0

    .line 573
    :cond_2
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    cmpg-double p1, v8, p1

    if-gez p1, :cond_3

    move v0, v7

    :cond_3
    return v0

    .line 575
    :cond_4
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    cmpl-double p1, v8, p1

    if-lez p1, :cond_5

    move v0, v7

    :cond_5
    return v0

    .line 577
    :cond_6
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    cmpg-double p1, v8, p1

    if-gtz p1, :cond_7

    move v0, v7

    :cond_7
    return v0

    .line 579
    :cond_8
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    cmpl-double p1, v8, p1

    if-ltz p1, :cond_9

    move v0, v7

    :cond_9
    return v0

    .line 583
    :cond_a
    invoke-direct {p0, p1}, Lorg/htmlcleaner/XPather;->toText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 584
    invoke-direct {p0, p2}, Lorg/htmlcleaner/XPather;->toText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 585
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    .line 586
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    if-nez p1, :cond_b

    move v0, v7

    :cond_b
    return v0

    .line 588
    :cond_c
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    if-gez p1, :cond_d

    move v0, v7

    :cond_d
    return v0

    .line 590
    :cond_e
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    if-lez p1, :cond_f

    move v0, v7

    :cond_f
    return v0

    .line 592
    :cond_10
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    if-gtz p1, :cond_11

    move v0, v7

    :cond_11
    return v0

    .line 594
    :cond_12
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    if-ltz p1, :cond_13

    move v0, v7

    :cond_13
    :goto_0
    return v0
.end method

.method protected filterByCondition(Ljava/util/Collection;II)Ljava/util/Collection;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 350
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 353
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v0, 0x0

    .line 354
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 355
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x1

    add-int/lit8 v8, v0, 0x1

    .line 358
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v9, v14}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v16, 0x1

    invoke-direct {v9, v14}, Lorg/htmlcleaner/XPather;->singleton(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move v5, v8

    move v6, v12

    move-object v13, v7

    move/from16 v7, v16

    move/from16 v18, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lorg/htmlcleaner/XPather;->evaluateAgainst(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 359
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v15, :cond_3

    const/4 v0, 0x0

    .line 360
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 361
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 362
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move/from16 v2, v18

    goto :goto_1

    .line 365
    :cond_1
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 366
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v2, v18

    if-ne v1, v2, :cond_4

    .line 367
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move/from16 v2, v18

    .line 370
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move/from16 v2, v18

    const/4 v0, 0x0

    :cond_4
    :goto_1
    move v0, v2

    goto :goto_0

    :cond_5
    return-object v10
.end method
