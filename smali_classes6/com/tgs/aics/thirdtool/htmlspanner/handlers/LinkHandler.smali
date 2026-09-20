.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/LinkHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.source "LinkHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 0

    const-string p2, "href"

    .line 39
    invoke-virtual {p1, p2}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    new-instance p2, Landroid/text/style/URLSpan;

    invoke-direct {p2, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2, p3, p4}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    return-void
.end method
