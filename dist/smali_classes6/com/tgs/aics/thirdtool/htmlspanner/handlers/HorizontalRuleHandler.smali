.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HorizontalRuleHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.source "HorizontalRuleHandler.java"


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
    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HorizontalRuleHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)Z

    .line 17
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    const-string p3, "\ufffc"

    .line 18
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 19
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    .line 20
    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HorizontalRuleHandler;->appendNewLine(Landroid/text/SpannableStringBuilder;)Z

    .line 22
    new-instance p4, Lcom/tgs/aics/thirdtool/htmlspanner/spans/HrSpan;

    invoke-direct {p4}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/HrSpan;-><init>()V

    const/16 p5, 0x21

    invoke-virtual {p2, p4, p1, p3, p5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
