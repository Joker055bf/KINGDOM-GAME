.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.source "TableHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;,
        Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;
    }
.end annotation


# static fields
.field private static final PADDING:I = 0x5


# instance fields
.field private tableWidth:I

.field private textColor:I

.field private textSize:F

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;-><init>()V

    const/16 v0, 0x190

    .line 53
    iput v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->tableWidth:I

    .line 54
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->typeFace:Landroid/graphics/Typeface;

    const/high16 v0, 0x41800000    # 16.0f

    .line 55
    iput v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->textSize:F

    const/high16 v0, -0x1000000

    .line 56
    iput v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->textColor:I

    return-void
.end method

.method static synthetic access$100(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;Ljava/util/List;)I
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->calculateRowHeight(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->textColor:I

    return p0
.end method

.method static synthetic access$300(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->tableWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;)Landroid/text/TextPaint;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p0

    return-object p0
.end method

.method private calculateRowHeight(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/Spanned;",
            ">;)I"
        }
    .end annotation

    .line 157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 163
    iget v2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->tableWidth:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int v10, v2, v3

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/text/Spanned;

    .line 169
    new-instance v11, Landroid/text/StaticLayout;

    add-int/lit8 v5, v10, -0xa

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v11

    move-object v4, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 172
    invoke-virtual {v11}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 173
    invoke-virtual {v11}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private getTable(Lorg/htmlcleaner/TagNode;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;
    .locals 3

    const-string v0, "border"

    .line 133
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 137
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;ZLcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$1;)V

    .line 139
    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->readNode(Ljava/lang/Object;Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;)V

    return-object v1
.end method

.method private getTextPaint()Landroid/text/TextPaint;
    .locals 2

    .line 145
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 146
    iget v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->textColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 147
    iget v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->textColor:I

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 149
    iget v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->textSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 150
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0
.end method

.method private readNode(Ljava/lang/Object;Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;)V
    .locals 2

    .line 110
    instance-of v0, p1, Lorg/htmlcleaner/TagNode;

    if-eqz v0, :cond_2

    .line 112
    check-cast p1, Lorg/htmlcleaner/TagNode;

    .line 114
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "td"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fromTagNode(Lorg/htmlcleaner/TagNode;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$CancellationCallback;)Landroid/text/Spannable;

    move-result-object p1

    .line 116
    invoke-virtual {p2, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->addCell(Landroid/text/Spanned;)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->addRow()V

    .line 124
    :cond_1
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-direct {p0, v0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->readNode(Ljava/lang/Object;Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 4

    .line 184
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->getTable(Lorg/htmlcleaner/TagNode;)Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;

    move-result-object p1

    const/4 p4, 0x0

    move v0, p4

    .line 186
    :goto_0
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->getRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "\ufffc"

    if-ge v0, v1, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->getRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 189
    invoke-virtual {p2, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 191
    new-instance v2, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->isDrawBorder()Z

    move-result v3

    invoke-direct {v2, p0, v1, v3}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;Ljava/util/List;Z)V

    .line 192
    invoke-virtual {v2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 193
    invoke-virtual {v2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->getIntrinsicHeight()I

    move-result v3

    .line 192
    invoke-virtual {v2, p4, p4, v1, v3}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;->setBounds(IIII)V

    .line 195
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int v2, p3, v0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p5, v1, v2, v3}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p2, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 204
    new-instance p5, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$Table;->isDrawBorder()Z

    move-result p1

    invoke-direct {p5, p0, v0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$TableRowDrawable;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;Ljava/util/List;Z)V

    .line 205
    iget p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->tableWidth:I

    const/4 v0, 0x1

    invoke-virtual {p5, p4, p4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 206
    new-instance p1, Landroid/text/style/ImageSpan;

    invoke-direct {p1, p5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p4

    sub-int/2addr p4, v0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p5

    const/16 v0, 0x21

    invoke-virtual {p2, p1, p4, p5, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 212
    new-instance p1, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$1;

    invoke-direct {p1, p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$1;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;)V

    .line 217
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p4

    .line 212
    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string p1, "\n"

    .line 219
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public rendersContent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setTableWidth(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->tableWidth:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->textColor:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->textSize:F

    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->typeFace:Landroid/graphics/Typeface;

    return-void
.end method
