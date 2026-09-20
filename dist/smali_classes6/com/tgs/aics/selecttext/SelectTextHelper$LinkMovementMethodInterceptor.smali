.class Lcom/tgs/aics/selecttext/SelectTextHelper$LinkMovementMethodInterceptor;
.super Landroid/text/method/LinkMovementMethod;
.source "SelectTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/selecttext/SelectTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkMovementMethodInterceptor"
.end annotation


# instance fields
.field private downLinkTime:J

.field final synthetic this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;


# direct methods
.method private constructor <init>(Lcom/tgs/aics/selecttext/SelectTextHelper;)V
    .locals 2

    .line 1077
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$LinkMovementMethodInterceptor;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    const-wide/16 v0, 0x0

    .line 1078
    iput-wide v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$LinkMovementMethodInterceptor;->downLinkTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/tgs/aics/selecttext/SelectTextHelper;Lcom/tgs/aics/selecttext/SelectTextHelper$1;)V
    .locals 0

    .line 1077
    invoke-direct {p0, p1}, Lcom/tgs/aics/selecttext/SelectTextHelper$LinkMovementMethodInterceptor;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1082
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_7

    .line 1084
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 1085
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 1086
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 1087
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1088
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 1089
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 1090
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1091
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    int-to-float v2, v2

    .line 1092
    invoke-virtual {v4, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 1093
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 1094
    array-length v3, v2

    if-lez v3, :cond_6

    const/4 p3, 0x0

    if-ne v0, v1, :cond_4

    .line 1096
    iget-wide v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$LinkMovementMethodInterceptor;->downLinkTime:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    int-to-long v5, p2

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-gez p2, :cond_1

    return p3

    .line 1099
    :cond_1
    aget-object p2, v2, p3

    instance-of v0, p2, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_5

    .line 1100
    check-cast p2, Landroid/text/style/URLSpan;

    .line 1101
    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1102
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$LinkMovementMethodInterceptor;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3300(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1103
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$LinkMovementMethodInterceptor;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$5502(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)Z

    .line 1104
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$LinkMovementMethodInterceptor;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3300(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;->onClickUrl(Ljava/lang/String;)V

    :cond_2
    return v1

    .line 1108
    :cond_3
    aget-object p2, v2, p3

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    .line 1112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$LinkMovementMethodInterceptor;->downLinkTime:J

    .line 1113
    aget-object p1, v2, p3

    .line 1114
    invoke-interface {p2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    aget-object p3, v2, p3

    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    .line 1113
    invoke-static {p2, p1, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_5
    :goto_0
    return v1

    .line 1119
    :cond_6
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 1122
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
