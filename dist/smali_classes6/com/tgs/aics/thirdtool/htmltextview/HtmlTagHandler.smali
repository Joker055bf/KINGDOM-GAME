.class public Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;
.super Ljava/lang/Object;
.source "HtmlTagHandler.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/htmltextview/WrapperTagHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Ol;,
        Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Ul;,
        Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;,
        Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Code;,
        Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Center;,
        Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Strike;,
        Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Table;,
        Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Tr;,
        Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Th;,
        Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Td;
    }
.end annotation


# static fields
.field public static final A_ITEM:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_A_TAG"

.field public static final LIST_ITEM:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_LI_TAG"

.field public static final ORDERED_LIST:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_OL_TAG"

.field public static final PLACEHOLDER_ITEM:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_PLACEHOLDER"

.field public static final UNORDERED_LIST:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_UL_TAG"

.field private static final defaultBullet:Landroid/text/style/BulletSpan;

.field private static final defaultIndent:I = 0xa

.field private static final defaultListItemIndent:I = 0x14

.field private static userGivenIndent:I = -0x1


# instance fields
.field private clickableTableSpan:Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;

.field private drawTableLinkSpan:Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;

.field lists:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field olNextIndex:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onClickATagListenerProvider:Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;

.field tableHtmlBuilder:Ljava/lang/StringBuilder;

.field tableTagLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 114
    new-instance v0, Landroid/text/style/BulletSpan;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->defaultBullet:Landroid/text/style/BulletSpan;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 88
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableTagLevel:I

    return-void
.end method

.method static synthetic access$1100(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;)Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->onClickATagListenerProvider:Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;

    return-object p0
.end method

.method private varargs end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V
    .locals 4

    .line 358
    invoke-static {p1, p2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 360
    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 362
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 365
    iget v3, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableTagLevel:I

    if-lez v3, :cond_0

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->extractSpanText(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 367
    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 370
    :cond_0
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    if-eq v1, v2, :cond_2

    if-eqz p3, :cond_1

    const-string p2, "\n"

    .line 376
    invoke-interface {p1, p2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v2, v2, 0x1

    .line 379
    :cond_1
    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v0, p4, p3

    const/16 v3, 0x21

    .line 380
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private extractSpanText(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/CharSequence;
    .locals 2

    .line 394
    invoke-static {p1, p2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 396
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    .line 398
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 400
    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 401
    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-object v1
.end method

.method private static getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    .line 409
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p0, v0, v1, p1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 410
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 413
    :cond_0
    array-length v0, p1

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 414
    aget-object v3, p1, v2

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    .line 415
    aget-object p0, p1, v2

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private start(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 2

    .line 346
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x11

    .line 347
    invoke-interface {p1, p2, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private storeTableTags(ZLjava/lang/String;)V
    .locals 2

    .line 331
    iget v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableTagLevel:I

    if-gtz v0, :cond_0

    const-string v0, "table"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    .line 334
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ">"

    .line 338
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "td"

    const-string v5, "th"

    const-string v6, "tr"

    const-string v7, "table"

    const-string v8, "strike"

    const-string v9, "s"

    const-string v10, "center"

    const-string v11, "code"

    const-string v12, "HTML_TEXTVIEW_ESCAPED_A_TAG"

    const-string v13, "HTML_TEXTVIEW_ESCAPED_LI_TAG"

    const-string v14, "\n"

    const-string v15, "HTML_TEXTVIEW_ESCAPED_OL_TAG"

    move-object/from16 v16, v4

    const-string v4, "HTML_TEXTVIEW_ESCAPED_UL_TAG"

    move-object/from16 v17, v5

    const/4 v5, 0x1

    if-eqz p1, :cond_10

    .line 164
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 165
    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 166
    :cond_0
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 167
    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 169
    :cond_1
    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 170
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v2, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v6, 0xa

    if-eq v3, v6, :cond_2

    .line 171
    invoke-interface {v2, v14}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 173
    :cond_2
    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 174
    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    new-instance v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Ol;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Ol;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 177
    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 178
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 179
    new-instance v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Ul;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Ul;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 182
    :cond_4
    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    const-string v4, "href"

    .line 183
    invoke-interface {v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 184
    :goto_0
    new-instance v4, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    invoke-direct {v4, v6, v3, v12}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    const/4 v12, 0x0

    .line 185
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 186
    new-instance v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Code;

    invoke-direct {v3, v12}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Code;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 187
    :cond_7
    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 188
    new-instance v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Center;

    invoke-direct {v3, v12}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Center;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 189
    :cond_8
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    .line 191
    :cond_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 192
    new-instance v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Table;

    invoke-direct {v3, v12}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Table;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 193
    iget v3, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableTagLevel:I

    if-nez v3, :cond_a

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v3, "table placeholder"

    .line 197
    invoke-interface {v2, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 200
    :cond_a
    iget v2, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableTagLevel:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableTagLevel:I

    goto :goto_2

    .line 201
    :cond_b
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 202
    new-instance v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Tr;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Tr;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    move-object/from16 v3, v17

    const/4 v4, 0x0

    .line 203
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 204
    new-instance v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Th;

    invoke-direct {v3, v4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Th;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_d
    move-object/from16 v3, v16

    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 206
    new-instance v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Td;

    invoke-direct {v3, v4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Td;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_e
    const/4 v2, 0x0

    return v2

    :cond_f
    :goto_1
    move-object v4, v12

    .line 190
    new-instance v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Strike;

    invoke-direct {v3, v4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Strike;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;)V

    invoke-direct {v0, v2, v3}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_10
    move-object/from16 v20, v16

    move-object/from16 v3, v17

    const/16 v16, 0x0

    .line 216
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 217
    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_11
    :goto_2
    move v4, v5

    goto/16 :goto_d

    .line 218
    :cond_12
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 219
    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 220
    iget-object v2, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 221
    :cond_13
    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    const/4 v5, 0x2

    if-eqz v13, :cond_1f

    .line 222
    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 223
    sget v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->userGivenIndent:I

    const/4 v6, -0x1

    if-le v3, v6, :cond_14

    mul-int/2addr v3, v5

    goto :goto_3

    :cond_14
    const/16 v3, 0x14

    .line 224
    :goto_3
    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 225
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_15

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v2, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v7, 0xa

    if-eq v4, v7, :cond_15

    .line 226
    invoke-interface {v2, v14}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 229
    :cond_15
    sget v4, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->userGivenIndent:I

    if-le v4, v6, :cond_16

    move/from16 v18, v4

    goto :goto_4

    :cond_16
    const/16 v18, 0xa

    :goto_4
    if-le v4, v6, :cond_17

    .line 230
    new-instance v4, Landroid/text/style/BulletSpan;

    sget v6, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->userGivenIndent:I

    invoke-direct {v4, v6}, Landroid/text/style/BulletSpan;-><init>(I)V

    goto :goto_5

    :cond_17
    sget-object v4, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->defaultBullet:Landroid/text/style/BulletSpan;

    .line 231
    :goto_5
    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_18

    .line 232
    invoke-virtual {v4, v7}, Landroid/text/style/BulletSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int v18, v18, v4

    .line 233
    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-le v4, v5, :cond_18

    .line 236
    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    sub-int/2addr v4, v5

    mul-int/2addr v4, v3

    sub-int v18, v18, v4

    :cond_18
    move/from16 v4, v18

    .line 239
    new-instance v6, Landroid/text/style/BulletSpan;

    invoke-direct {v6, v4}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 240
    const-class v4, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Ul;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v7, Landroid/text/style/LeadingMarginSpan$Standard;

    iget-object v8, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 241
    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    mul-int/2addr v3, v8

    invoke-direct {v7, v3}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    const/4 v3, 0x0

    aput-object v7, v5, v3

    aput-object v6, v5, v9

    .line 240
    invoke-direct {v0, v2, v4, v3, v5}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_19
    const/4 v9, 0x1

    .line 243
    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 244
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_1a

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-interface {v2, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v7, 0xa

    if-eq v4, v7, :cond_1b

    .line 245
    invoke-interface {v2, v14}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_6

    :cond_1a
    const/16 v7, 0xa

    .line 249
    :cond_1b
    :goto_6
    sget v4, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->userGivenIndent:I

    if-le v4, v6, :cond_1c

    goto :goto_7

    :cond_1c
    move v4, v7

    .line 250
    :goto_7
    new-instance v6, Lcom/tgs/aics/thirdtool/htmltextview/NumberSpan;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-direct {v6, v4, v7}, Lcom/tgs/aics/thirdtool/htmltextview/NumberSpan;-><init>(II)V

    .line 251
    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    if-le v7, v8, :cond_1d

    .line 252
    invoke-virtual {v6, v8}, Lcom/tgs/aics/thirdtool/htmltextview/NumberSpan;->getLeadingMargin(Z)I

    move-result v6

    sub-int/2addr v4, v6

    .line 253
    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    if-le v6, v5, :cond_1d

    .line 255
    iget-object v6, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    sub-int/2addr v6, v5

    mul-int/2addr v6, v3

    sub-int/2addr v4, v6

    .line 258
    :cond_1d
    new-instance v6, Lcom/tgs/aics/thirdtool/htmltextview/NumberSpan;

    iget-object v7, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-direct {v6, v4, v7}, Lcom/tgs/aics/thirdtool/htmltextview/NumberSpan;-><init>(II)V

    .line 259
    const-class v4, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Ol;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v7, Landroid/text/style/LeadingMarginSpan$Standard;

    iget-object v9, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 260
    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    sub-int/2addr v9, v8

    mul-int/2addr v3, v9

    invoke-direct {v7, v3}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    const/4 v3, 0x0

    aput-object v7, v5, v3

    aput-object v6, v5, v8

    .line 259
    invoke-direct {v0, v2, v4, v3, v5}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    :cond_1e
    :goto_8
    const/4 v4, 0x1

    goto/16 :goto_d

    .line 264
    :cond_1f
    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 265
    const-class v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;

    invoke-static {v2, v3}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 266
    invoke-interface {v2, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 267
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v5

    .line 268
    instance-of v6, v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;

    if-eqz v6, :cond_20

    check-cast v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;

    invoke-static {v3}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;->access$1000(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_20
    move-object/from16 v3, v16

    .line 269
    :goto_9
    invoke-interface {v2, v4, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    const-class v5, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;

    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/Object;

    new-instance v7, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;

    invoke-direct {v7, v0, v3, v4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v7, v6, v4

    invoke-direct {v0, v2, v5, v4, v6}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto :goto_a

    :cond_21
    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 283
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 284
    const-class v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Code;

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Landroid/text/style/TypefaceSpan;

    const-string v7, "monospace"

    invoke-direct {v6, v7}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    :goto_a
    move v4, v12

    goto/16 :goto_d

    .line 285
    :cond_22
    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 286
    const-class v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Center;

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v6, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v6, v7}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    aput-object v6, v5, v4

    invoke-direct {v0, v2, v3, v12, v5}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto :goto_a

    .line 287
    :cond_23
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto/16 :goto_c

    .line 289
    :cond_24
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 290
    iget v3, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableTagLevel:I

    sub-int/2addr v3, v12

    iput v3, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableTagLevel:I

    if-nez v3, :cond_27

    .line 294
    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    iget-object v4, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->clickableTableSpan:Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;

    if-eqz v4, :cond_25

    .line 298
    invoke-virtual {v4}, Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;->newInstance()Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;

    move-result-object v4

    .line 299
    invoke-virtual {v4, v3}, Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;->setTableHtml(Ljava/lang/String;)V

    goto :goto_b

    :cond_25
    move-object/from16 v4, v16

    .line 303
    :goto_b
    iget-object v3, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->drawTableLinkSpan:Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;

    if-eqz v3, :cond_26

    .line 304
    invoke-virtual {v3}, Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;->newInstance()Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;

    move-result-object v3

    move-object/from16 v16, v3

    .line 307
    :cond_26
    const-class v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Table;

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v16, v5, v7

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-direct {v0, v2, v3, v7, v5}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_27
    const/4 v7, 0x0

    .line 309
    const-class v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Table;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v7, v4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_28
    const/4 v7, 0x0

    .line 311
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 312
    const-class v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Tr;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v7, v4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 313
    :cond_29
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 314
    const-class v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Th;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v7, v4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_2a
    move-object/from16 v3, v20

    .line 315
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 316
    const-class v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Td;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v7, v4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_2b
    return v7

    :cond_2c
    :goto_c
    const/4 v7, 0x0

    .line 288
    const-class v3, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$Strike;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    aput-object v6, v5, v7

    invoke-direct {v0, v2, v3, v7, v5}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 322
    :goto_d
    invoke-direct/range {p0 .. p2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->storeTableTags(ZLjava/lang/String;)V

    return v4
.end method

.method overrideTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_PLACEHOLDER></HTML_TEXTVIEW_ESCAPED_PLACEHOLDER>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<ul"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_UL_TAG"

    .line 67
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</ul>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_UL_TAG>"

    .line 68
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<ol"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_OL_TAG"

    .line 69
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</ol>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_OL_TAG>"

    .line 70
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<li"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_LI_TAG"

    .line 71
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</li>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_LI_TAG>"

    .line 72
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<a"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_A_TAG"

    .line 73
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</a>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_A_TAG>"

    .line 74
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setClickableTableSpan(Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->clickableTableSpan:Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;

    return-void
.end method

.method public setDrawTableLinkSpan(Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->drawTableLinkSpan:Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;

    return-void
.end method

.method public setListIndentPx(F)V
    .locals 0

    .line 424
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sput p1, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->userGivenIndent:I

    return-void
.end method

.method public setOnClickATagListenerProvider(Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->onClickATagListenerProvider:Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;

    return-void
.end method
