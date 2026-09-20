.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/SubScriptHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.source "SubScriptHandler.java"


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

    .line 38
    new-instance p1, Landroid/text/style/SubscriptSpan;

    invoke-direct {p1}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-virtual {p5, p1, p3, p4}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    return-void
.end method
