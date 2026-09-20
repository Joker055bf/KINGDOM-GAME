.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StrikeThroughHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.source "StrikeThroughHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 0

    .line 16
    new-instance p1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/16 p5, 0x21

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
