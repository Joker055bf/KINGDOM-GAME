.class public Lorg/htmlcleaner/HtmlTokenizer;
.super Ljava/lang/Object;
.source "HtmlTokenizer.java"


# static fields
.field private static final WORKING_BUFFER_SIZE:I = 0x400


# instance fields
.field private _asExpected:Z

.field private transient _col:I

.field private transient _currentTagToken:Lorg/htmlcleaner/TagToken;

.field private transient _docType:Lorg/htmlcleaner/DoctypeToken;

.field private transient _isLateForDoctype:Z

.field private _isSpecialContext:Z

.field private _isSpecialContextName:Ljava/lang/String;

.field private transient _len:I

.field private transient _namespacePrefixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient _pos:I

.field private _reader:Ljava/io/BufferedReader;

.field private transient _row:I

.field private transient _saved:Ljava/lang/StringBuffer;

.field private transient _tokenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;"
        }
    .end annotation
.end field

.field private _working:[C

.field private cleanTimeValues:Lorg/htmlcleaner/CleanTimeValues;

.field private cleaner:Lorg/htmlcleaner/HtmlCleaner;

.field private props:Lorg/htmlcleaner/CleanerProperties;

.field private transformations:Lorg/htmlcleaner/CleanerTransformations;


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/HtmlCleaner;Ljava/io/Reader;Lorg/htmlcleaner/CleanTimeValues;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 59
    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_row:I

    .line 64
    iput v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_col:I

    .line 67
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    .line 73
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_namespacePrefixes:Ljava/util/Set;

    .line 75
    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    .line 92
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_reader:Ljava/io/BufferedReader;

    .line 93
    iput-object p1, p0, Lorg/htmlcleaner/HtmlTokenizer;->cleaner:Lorg/htmlcleaner/HtmlCleaner;

    .line 94
    invoke-virtual {p1}, Lorg/htmlcleaner/HtmlCleaner;->getProperties()Lorg/htmlcleaner/CleanerProperties;

    move-result-object p2

    iput-object p2, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    .line 95
    invoke-virtual {p1}, Lorg/htmlcleaner/HtmlCleaner;->getTransformations()Lorg/htmlcleaner/CleanerTransformations;

    move-result-object p1

    iput-object p1, p0, Lorg/htmlcleaner/HtmlTokenizer;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    .line 96
    iput-object p3, p0, Lorg/htmlcleaner/HtmlTokenizer;->cleanTimeValues:Lorg/htmlcleaner/CleanTimeValues;

    return-void
.end method

.method private addSavedAsContent()Z
    .locals 4

    .line 406
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 407
    new-instance v0, Lorg/htmlcleaner/ContentNode;

    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v2}, Lorg/htmlcleaner/CleanerProperties;->isDeserializeEntities()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v3

    invoke-static {v2, v3}, Lorg/htmlcleaner/Utils;->deserializeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v2}, Lorg/htmlcleaner/ContentNode;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->addToken(Lorg/htmlcleaner/BaseToken;)V

    .line 408
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private addToken(Lorg/htmlcleaner/BaseToken;)V
    .locals 3

    .line 100
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_row:I

    invoke-interface {p1, v0}, Lorg/htmlcleaner/BaseToken;->setRow(I)V

    .line 101
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_col:I

    invoke-interface {p1, v0}, Lorg/htmlcleaner/BaseToken;->setCol(I)V

    .line 102
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lorg/htmlcleaner/HtmlTokenizer;->cleaner:Lorg/htmlcleaner/HtmlCleaner;

    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->cleanTimeValues:Lorg/htmlcleaner/CleanTimeValues;

    invoke-virtual {p1, v0, v1, v2}, Lorg/htmlcleaner/HtmlCleaner;->makeTree(Ljava/util/List;Ljava/util/ListIterator;Lorg/htmlcleaner/CleanTimeValues;)V

    return-void
.end method

.method private attributeValue()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    const/16 v0, 0x3c

    .line 756
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "/>"

    invoke-direct {p0, v2}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 763
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    .line 765
    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x22

    if-eqz v4, :cond_1

    .line 767
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 768
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_0

    .line 769
    :cond_1
    invoke-direct {p0, v7}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 771
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 772
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    move v11, v6

    move v6, v5

    move v5, v11

    goto :goto_0

    :cond_2
    move v5, v6

    .line 775
    :goto_0
    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v4}, Lorg/htmlcleaner/CleanerProperties;->isAllowMultiWordAttributes()Z

    move-result v4

    .line 777
    iget-object v8, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v8}, Lorg/htmlcleaner/CleanerProperties;->isAllowHtmlInsideAttributes()Z

    move-result v8

    .line 779
    :goto_1
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v5, :cond_4

    .line 780
    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v8, :cond_3

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    if-nez v4, :cond_7

    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isWhitespace()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_4
    if-eqz v6, :cond_6

    .line 781
    invoke-direct {p0, v7}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v9

    if-nez v9, :cond_6

    if-nez v8, :cond_5

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    if-nez v4, :cond_7

    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isWhitespace()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    if-nez v5, :cond_8

    if-nez v6, :cond_8

    .line 782
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isWhitespace()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v9

    if-nez v9, :cond_8

    .line 785
    :cond_7
    iget-object v9, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v10, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v9, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 786
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 787
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_1

    .line 790
    :cond_8
    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v5, :cond_9

    .line 791
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 792
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_2

    .line 793
    :cond_9
    invoke-direct {p0, v7}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v6, :cond_a

    .line 794
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 795
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 798
    :cond_a
    :goto_2
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isDeserializeEntities()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 799
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->isRecognizeUnicodeChars()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/htmlcleaner/Utils;->deserializeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 802
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_3
    const-string v0, ""

    return-object v0
.end method

.method private cdata()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 882
    iget-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isSpecialContext:Z

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isOmitCdataOutsideScriptAndStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->content()Z

    return-void

    :cond_0
    const-string v0, "/*<![CDATA[*/"

    .line 892
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    .line 893
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    goto :goto_0

    :cond_1
    const-string v0, "//<![CDATA["

    .line 894
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    .line 895
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    .line 897
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    .line 900
    :goto_0
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 907
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->containsEndCData()Z

    move-result v1

    if-nez v1, :cond_3

    .line 908
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    return-void

    .line 912
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v1

    const-string v2, "]]>"

    const-string v3, "//]]>"

    const-string v4, "/*]]>*/"

    if-nez v1, :cond_4

    .line 913
    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 914
    invoke-direct {p0, v2}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 915
    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 917
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 918
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_1

    .line 921
    :cond_4
    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    .line 922
    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    goto :goto_2

    .line 924
    :cond_5
    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    .line 925
    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    goto :goto_2

    .line 927
    :cond_6
    invoke-direct {p0, v2}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x3

    .line 928
    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    .line 938
    :goto_2
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 943
    iget-boolean v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isSpecialContext:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->isOmitCdataOutsideScriptAndStyle()Z

    move-result v1

    if-nez v1, :cond_8

    .line 944
    :cond_7
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 945
    new-instance v2, Lorg/htmlcleaner/CData;

    invoke-direct {v2, v1}, Lorg/htmlcleaner/CData;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/htmlcleaner/HtmlTokenizer;->addToken(Lorg/htmlcleaner/BaseToken;)V

    .line 949
    :cond_8
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-void

    .line 934
    :cond_9
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    return-void
.end method

.method private comment()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 851
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    .line 852
    :goto_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    const-string v1, "-->"

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 854
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_0

    .line 857
    :cond_0
    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 858
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    .line 861
    :cond_1
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 862
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isOmitComments()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 863
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getHyphenReplacementInComment()Ljava/lang/String;

    move-result-object v0

    .line 864
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 866
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x2d

    if-lez v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    .line 867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 869
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    sub-int/2addr v3, v4

    .line 870
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 874
    :cond_3
    new-instance v0, Lorg/htmlcleaner/CommentNode;

    invoke-direct {v0, v2}, Lorg/htmlcleaner/CommentNode;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->addToken(Lorg/htmlcleaner/BaseToken;)V

    .line 876
    :cond_4
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_5
    return-void
.end method

.method private containsEndCData()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 993
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 994
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 995
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "]]>"

    .line 996
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    const-string v2, "/*]]>*/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "//]]>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1007
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->markSupported()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    return v5

    .line 1026
    :cond_1
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_reader:Ljava/io/BufferedReader;

    const/high16 v6, 0x80000

    invoke-virtual {v0, v6}, Ljava/io/BufferedReader;->mark(I)V

    .line 1028
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v6, v5

    .line 1036
    :cond_2
    :goto_0
    iget-object v7, p0, Lorg/htmlcleaner/HtmlTokenizer;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->read()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    const v8, 0x7ffff

    if-ge v6, v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    int-to-char v7, v7

    .line 1038
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1039
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1040
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 1048
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/16 v8, 0x10

    if-le v7, v8, :cond_2

    const/16 v7, 0x8

    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1041
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    return v3

    .line 1054
    :cond_5
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    return v5

    :cond_6
    :goto_2
    return v3
.end method

.method private content()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    :cond_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 809
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 810
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    const-string v0, "/*<![CDATA[*/"

    .line 812
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "<![CDATA["

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "//<![CDATA["

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 816
    :cond_1
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isTagStartOrEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->addSavedAsContent()Z

    move-result v0

    return v0
.end method

.method private doctype()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 954
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    .line 956
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    const/4 v0, 0x0

    .line 957
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->identifier(Z)Ljava/lang/String;

    move-result-object v2

    .line 958
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 959
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->identifier(Z)Ljava/lang/String;

    move-result-object v3

    .line 960
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 961
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->attributeValue()Ljava/lang/String;

    move-result-object v4

    .line 962
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 963
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->attributeValue()Ljava/lang/String;

    move-result-object v5

    .line 964
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 965
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->attributeValue()Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x3c

    .line 967
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->ignoreUntil(C)V

    if-eqz v6, :cond_1

    .line 969
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 972
    :cond_0
    new-instance v0, Lorg/htmlcleaner/DoctypeToken;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/htmlcleaner/DoctypeToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_docType:Lorg/htmlcleaner/DoctypeToken;

    goto :goto_1

    .line 970
    :cond_1
    :goto_0
    new-instance v0, Lorg/htmlcleaner/DoctypeToken;

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/htmlcleaner/DoctypeToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_docType:Lorg/htmlcleaner/DoctypeToken;

    :goto_1
    return-void
.end method

.method private go()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 152
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    return-void
.end method

.method private go(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/lit8 p1, p1, -0x1

    .line 157
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlTokenizer;->readIfNeeded(I)V

    .line 162
    iget p1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    :cond_0
    return-void
.end method

.method private handleInterruption()V
    .locals 0

    return-void
.end method

.method private identifier(Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 655
    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    .line 657
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isHtmlAttributeIdentifierStartChar()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 658
    iput-boolean v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    return-object v2

    .line 662
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 664
    :goto_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isHtmlAttributeIdentifierChar()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-nez p1, :cond_3

    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isHtmlElementIdentifier()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 665
    :cond_2
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 666
    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 667
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_0

    .line 670
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-nez p1, :cond_4

    return-object v2

    .line 674
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3a

    .line 676
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_6

    .line 678
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v2, v0

    .line 679
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 680
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    .line 682
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 684
    :cond_5
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "xmlns"

    .line 686
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 687
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_namespacePrefixes:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p1
.end method

.method private ignoreUntil(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    :cond_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 843
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->updateCoordinates(C)V

    .line 844
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private isAllRead()Z
    .locals 2

    .line 343
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isChar(C)Z
    .locals 1

    .line 230
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    invoke-direct {p0, v0, p1}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(IC)Z

    move-result p1

    return p1
.end method

.method private isChar(IC)Z
    .locals 2

    .line 217
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    if-lt p1, v0, :cond_0

    return v1

    .line 221
    :cond_0
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aget-char p1, v0, p1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isElementIdentifierStartChar(I)Z
    .locals 1

    .line 239
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v0, :cond_0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aget-char p1, v0, p1

    .line 244
    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result p1

    return p1
.end method

.method private isHtmlAttributeIdentifierChar()Z
    .locals 1

    .line 264
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isHtmlAttributeIdentifierChar(I)Z

    move-result v0

    return v0
.end method

.method private isHtmlAttributeIdentifierChar(I)Z
    .locals 2

    .line 319
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    if-lt p1, v0, :cond_0

    return v1

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aget-char p1, v0, p1

    .line 325
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_5

    const v0, 0xfffd

    if-eq p1, v0, :cond_5

    const/16 v0, 0x22

    if-eq p1, v0, :cond_5

    const-string v0, "\'"

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 331
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 333
    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->isDefined(C)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method private isHtmlAttributeIdentifierStartChar()Z
    .locals 2

    .line 255
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 260
    :cond_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isHtmlAttributeIdentifierChar()Z

    move-result v0

    return v0
.end method

.method private isHtmlElementIdentifier()Z
    .locals 1

    .line 268
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isHtmlElementIdentifier(I)Z

    move-result v0

    return v0
.end method

.method private isHtmlElementIdentifier(I)Z
    .locals 2

    .line 272
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlTokenizer;->isHtmlAttributeIdentifierChar(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 274
    :cond_0
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v0, :cond_1

    if-lt p1, v0, :cond_1

    return v1

    .line 278
    :cond_1
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aget-char p1, v0, p1

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_3

    return v1

    :cond_3
    const/16 v0, 0x20

    if-ne p1, v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_5

    return v1

    .line 296
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method private isReservedTag(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "html"

    .line 513
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isTagStartOrEnd()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "</"

    .line 837
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "<!"

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<?"

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<"

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isElementIdentifierStartChar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isWhitespace()Z
    .locals 1

    .line 207
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method private isWhitespace(I)Z
    .locals 1

    .line 195
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz v0, :cond_0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aget-char p1, v0, p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    return p1
.end method

.method private readIfNeeded(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr p1, v0

    const/16 v1, 0x400

    if-lt p1, v1, :cond_7

    rsub-int p1, v0, 0x400

    .line 109
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    const/4 v3, 0x0

    invoke-static {v2, v0, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iput v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    rsub-int v0, p1, 0x400

    move v2, p1

    move v4, v3

    .line 117
    :cond_0
    iget-object v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_reader:Ljava/io/BufferedReader;

    iget-object v6, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    invoke-virtual {v5, v6, v2, v0}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5

    if-ltz v5, :cond_1

    add-int/2addr v4, v5

    add-int/2addr v2, v5

    sub-int/2addr v0, v5

    :cond_1
    if-ltz v5, :cond_2

    if-gtz v0, :cond_0

    :cond_2
    if-lez v0, :cond_3

    add-int/2addr v4, p1

    .line 126
    iput v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    .line 131
    :cond_3
    :goto_0
    iget p1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    if-ltz p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    if-ge v3, p1, :cond_7

    .line 132
    iget-object p1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aget-char v0, p1, v3

    const/4 v2, 0x1

    if-lt v0, v2, :cond_5

    const/16 v2, 0x20

    if-gt v0, v2, :cond_5

    const/16 v4, 0xa

    if-eq v0, v4, :cond_5

    const/16 v4, 0xd

    if-eq v0, v4, :cond_5

    .line 134
    aput-char v2, p1, v3

    :cond_5
    if-nez v0, :cond_6

    const v0, 0xfffd

    .line 137
    aput-char v0, p1, v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private save(C)V
    .locals 1

    .line 351
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlTokenizer;->updateCoordinates(C)V

    .line 352
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private saveCurrent()V
    .locals 2

    .line 374
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->save(C)V

    :cond_0
    return-void
.end method

.method private saveCurrent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-direct {p0, p1}, Lorg/htmlcleaner/HtmlTokenizer;->readIfNeeded(I)V

    .line 385
    iget v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    .line 386
    :goto_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 387
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    aget-char v1, v1, v0

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->save(C)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private skipWhitespaces()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    :goto_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isWhitespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 401
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startsWith(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 173
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->readIfNeeded(I)V

    .line 174
    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_len:I

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iget v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v3, v0

    if-le v3, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 180
    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_working:[C

    iget v5, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private tagAttributes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 702
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "/>"

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 703
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 705
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->handleInterruption()V

    return-void

    .line 708
    :cond_1
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    const/4 v2, 0x1

    .line 709
    invoke-direct {p0, v2}, Lorg/htmlcleaner/HtmlTokenizer;->identifier(Z)Ljava/lang/String;

    move-result-object v3

    .line 711
    iget-boolean v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    if-nez v4, :cond_3

    const/16 v3, 0x3c

    .line 712
    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 713
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 714
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 717
    :cond_2
    invoke-direct {p0, v3}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    goto :goto_0

    .line 726
    :cond_3
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    const/16 v0, 0x3d

    .line 727
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 728
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 729
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 730
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->attributeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 731
    :cond_4
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getBooleanAttributeValues()Ljava/lang/String;

    move-result-object v0

    const-string v1, "empty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    goto :goto_1

    .line 733
    :cond_5
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getBooleanAttributeValues()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v3

    .line 739
    :goto_1
    iget-boolean v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    invoke-virtual {v1, v3, v0}, Lorg/htmlcleaner/TagToken;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private tagEnd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 586
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent(I)V

    .line 587
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    .line 588
    iget v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_col:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_col:I

    .line 590
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 594
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->identifier(Z)Ljava/lang/String;

    move-result-object v1

    .line 595
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lorg/htmlcleaner/CleanerTransformations;->hasTransformationForTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 596
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    invoke-virtual {v2, v1}, Lorg/htmlcleaner/CleanerTransformations;->getTransformation(Ljava/lang/String;)Lorg/htmlcleaner/TagTransformation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 598
    invoke-virtual {v2}, Lorg/htmlcleaner/TagTransformation;->getDestTag()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_4

    .line 603
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->cleaner:Lorg/htmlcleaner/HtmlCleaner;

    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->cleanTimeValues:Lorg/htmlcleaner/CleanTimeValues;

    invoke-virtual {v2, v1, v3}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 604
    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isOmitUnknownTags()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isTreatUnknownTagsAsContent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->isReservedTag(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    .line 605
    invoke-virtual {v2}, Lorg/htmlcleaner/TagInfo;->isDeprecated()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v2}, Lorg/htmlcleaner/CleanerProperties;->isOmitDeprecatedTags()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v2}, Lorg/htmlcleaner/CleanerProperties;->isTreatDeprecatedTagsAsContent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 606
    :cond_3
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->content()Z

    return-void

    .line 611
    :cond_4
    new-instance v2, Lorg/htmlcleaner/EndTagToken;

    invoke-direct {v2, v1}, Lorg/htmlcleaner/EndTagToken;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    .line 613
    iget-boolean v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    if-eqz v2, :cond_9

    .line 614
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 615
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->tagAttributes()V

    if-eqz v1, :cond_5

    .line 618
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    invoke-direct {p0, v2}, Lorg/htmlcleaner/HtmlTokenizer;->addToken(Lorg/htmlcleaner/BaseToken;)V

    :cond_5
    const/16 v2, 0x3e

    .line 621
    invoke-direct {p0, v2}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 622
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 625
    :cond_6
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v2, v1}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataFor(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 626
    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isSpecialContext:Z

    .line 627
    iput-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isSpecialContextName:Ljava/lang/String;

    :cond_7
    if-eqz v1, :cond_8

    const-string v0, "html"

    .line 639
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 640
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    :cond_8
    const/4 v0, 0x0

    .line 643
    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    goto :goto_0

    .line 645
    :cond_9
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->addSavedAsContent()Z

    :goto_0
    return-void
.end method

.method private tagStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->saveCurrent()V

    .line 524
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 526
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 530
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->identifier(Z)Ljava/lang/String;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    invoke-virtual {v1, v0}, Lorg/htmlcleaner/CleanerTransformations;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 534
    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->cleaner:Lorg/htmlcleaner/HtmlCleaner;

    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->cleanTimeValues:Lorg/htmlcleaner/CleanTimeValues;

    invoke-virtual {v2, v1, v3}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 535
    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isOmitUnknownTags()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isTreatUnknownTagsAsContent()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlTokenizer;->isReservedTag(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    .line 536
    invoke-virtual {v2}, Lorg/htmlcleaner/TagInfo;->isDeprecated()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v2}, Lorg/htmlcleaner/CleanerProperties;->isOmitDeprecatedTags()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v2}, Lorg/htmlcleaner/CleanerProperties;->isTreatDeprecatedTagsAsContent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 537
    :cond_2
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->content()Z

    return-void

    .line 542
    :cond_3
    new-instance v2, Lorg/htmlcleaner/TagNode;

    invoke-direct {v2, v1}, Lorg/htmlcleaner/TagNode;-><init>(Ljava/lang/String;)V

    .line 543
    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isTrimAttributeValues()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/htmlcleaner/TagNode;->setTrimAttributeValues(Z)V

    .line 544
    iput-object v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    .line 546
    iget-boolean v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    if-eqz v3, :cond_8

    .line 547
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->skipWhitespaces()V

    .line 548
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->tagAttributes()V

    if-eqz v1, :cond_5

    .line 551
    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    if-eqz v3, :cond_4

    .line 552
    invoke-virtual {v2}, Lorg/htmlcleaner/TagNode;->getAttributesInLowerCase()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/htmlcleaner/CleanerTransformations;->transformAttributes(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/htmlcleaner/TagNode;->setAttributes(Ljava/util/Map;)V

    .line 554
    :cond_4
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->addToken(Lorg/htmlcleaner/BaseToken;)V

    :cond_5
    const/16 v0, 0x3e

    .line 557
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 558
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    .line 559
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/CleanerProperties;->isUseCdataFor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isSpecialContext:Z

    .line 561
    iput-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isSpecialContextName:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "/>"

    .line 563
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    .line 564
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->go(I)V

    .line 569
    new-instance v0, Lorg/htmlcleaner/EndTagToken;

    invoke-direct {v0, v1}, Lorg/htmlcleaner/EndTagToken;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlTokenizer;->addToken(Lorg/htmlcleaner/BaseToken;)V

    :cond_7
    :goto_0
    const/4 v0, 0x0

    .line 572
    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    goto :goto_1

    .line 574
    :cond_8
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->addSavedAsContent()Z

    :goto_1
    return-void
.end method

.method private updateCoordinates(C)V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 363
    iget p1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_row:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_row:I

    .line 364
    iput v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_col:I

    goto :goto_0

    .line 366
    :cond_0
    iget p1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_col:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_col:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getDocType()Lorg/htmlcleaner/DoctypeToken;
    .locals 1

    .line 977
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_docType:Lorg/htmlcleaner/DoctypeToken;

    return-object v0
.end method

.method getNamespacePrefixes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_namespacePrefixes:Ljava/util/Set;

    return-object v0
.end method

.method getTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    return-object v0
.end method

.method start()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    .line 422
    iget-object v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    .line 423
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    const/4 v2, 0x0

    .line 424
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isSpecialContext:Z

    .line 425
    iput-boolean v2, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isLateForDoctype:Z

    .line 426
    iget-object v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_namespacePrefixes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    const/16 v3, 0x400

    .line 428
    iput v3, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    .line 429
    invoke-direct {p0, v2}, Lorg/htmlcleaner/HtmlTokenizer;->readIfNeeded(I)V

    :goto_0
    move v3, v1

    .line 433
    :cond_0
    :goto_1
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->isAllRead()Z

    move-result v4

    if-nez v4, :cond_13

    .line 434
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->handleInterruption()V

    .line 436
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_namespacePrefixes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 438
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void

    .line 442
    :cond_1
    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_saved:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 443
    iput-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_currentTagToken:Lorg/htmlcleaner/TagToken;

    .line 444
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_asExpected:Z

    const/16 v4, 0xa

    .line 447
    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->readIfNeeded(I)V

    .line 449
    iget-boolean v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isSpecialContext:Z

    const-string v5, "//<![CDATA["

    const-string v6, "<![CDATA["

    const/16 v7, 0x3e

    const-string v8, "<!--"

    const-string v9, "/*<![CDATA[*/"

    const-string v10, "</"

    if-eqz v4, :cond_8

    .line 450
    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isSpecialContextName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 451
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isSpecialContextName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x2

    invoke-direct {p0, v10}, Lorg/htmlcleaner/HtmlTokenizer;->isWhitespace(I)Z

    move-result v10

    if-nez v10, :cond_2

    iget v10, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x2

    invoke-direct {p0, v10, v7}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(IC)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 452
    :cond_2
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->tagEnd()V

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    .line 453
    invoke-direct {p0, v8}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 454
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->comment()V

    goto :goto_3

    .line 455
    :cond_4
    invoke-direct {p0, v9}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0, v6}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 458
    :cond_5
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->content()Z

    move-result v4

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 460
    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_tokenList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/htmlcleaner/BaseToken;

    if-eqz v4, :cond_7

    .line 462
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 463
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    move v3, v2

    goto :goto_3

    .line 456
    :cond_6
    :goto_2
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->cdata()V

    .line 469
    :cond_7
    :goto_3
    iget-boolean v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isSpecialContext:Z

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_8
    const-string v4, "<!doctype"

    .line 473
    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v11, 0x3c

    if-eqz v4, :cond_a

    .line 474
    iget-boolean v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isLateForDoctype:Z

    if-nez v4, :cond_9

    .line 475
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->doctype()V

    .line 476
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isLateForDoctype:Z

    goto/16 :goto_1

    .line 478
    :cond_9
    invoke-direct {p0, v11}, Lorg/htmlcleaner/HtmlTokenizer;->ignoreUntil(C)V

    goto/16 :goto_1

    .line 480
    :cond_a
    invoke-direct {p0, v10}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->isElementIdentifierStartChar(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 481
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isLateForDoctype:Z

    .line 482
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->tagEnd()V

    goto/16 :goto_1

    .line 483
    :cond_b
    invoke-direct {p0, v9}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-direct {p0, v6}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-direct {p0, v5}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_4

    .line 485
    :cond_c
    invoke-direct {p0, v8}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 486
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->comment()V

    goto/16 :goto_1

    :cond_d
    const-string v4, "<"

    .line 487
    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->_pos:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->isElementIdentifierStartChar(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 488
    iput-boolean v1, p0, Lorg/htmlcleaner/HtmlTokenizer;->_isLateForDoctype:Z

    .line 489
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->tagStart()V

    goto/16 :goto_1

    .line 490
    :cond_e
    iget-object v4, p0, Lorg/htmlcleaner/HtmlTokenizer;->props:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v4}, Lorg/htmlcleaner/CleanerProperties;->isIgnoreQuestAndExclam()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "<!"

    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "<?"

    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 491
    :cond_f
    invoke-direct {p0, v11}, Lorg/htmlcleaner/HtmlTokenizer;->ignoreUntil(C)V

    .line 492
    invoke-direct {p0, v7}, Lorg/htmlcleaner/HtmlTokenizer;->isChar(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->go()V

    goto/16 :goto_1

    :cond_10
    const-string v4, "<?xml"

    .line 495
    invoke-direct {p0, v4}, Lorg/htmlcleaner/HtmlTokenizer;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 496
    invoke-direct {p0, v11}, Lorg/htmlcleaner/HtmlTokenizer;->ignoreUntil(C)V

    goto/16 :goto_1

    .line 498
    :cond_11
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->content()Z

    goto/16 :goto_1

    .line 484
    :cond_12
    :goto_4
    invoke-direct {p0}, Lorg/htmlcleaner/HtmlTokenizer;->cdata()V

    goto/16 :goto_1

    .line 504
    :cond_13
    iget-object v0, p0, Lorg/htmlcleaner/HtmlTokenizer;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method
