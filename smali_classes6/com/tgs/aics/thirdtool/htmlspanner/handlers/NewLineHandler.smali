.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/NewLineHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/handlers/WrappingHandler;
.source "NewLineHandler.java"


# instance fields
.field private numberOfNewLines:I


# direct methods
.method public constructor <init>(ILcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V
    .locals 0

    .line 43
    invoke-direct {p0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/WrappingHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V

    .line 44
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/NewLineHandler;->numberOfNewLines:I

    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 0

    .line 50
    invoke-super/range {p0 .. p5}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/WrappingHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    const/4 p1, 0x0

    .line 52
    :goto_0
    iget p3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/NewLineHandler;->numberOfNewLines:I

    if-ge p1, p3, :cond_0

    .line 53
    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/NewLineHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
