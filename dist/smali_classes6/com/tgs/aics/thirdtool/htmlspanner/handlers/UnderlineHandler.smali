.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/UnderlineHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.source "UnderlineHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 0

    .line 15
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p5, p1, p3, p4}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    return-void
.end method
