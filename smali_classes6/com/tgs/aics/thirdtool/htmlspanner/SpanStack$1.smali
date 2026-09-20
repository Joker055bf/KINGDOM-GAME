.class Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack$1;
.super Ljava/lang/Object;
.source "SpanStack.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/htmlspanner/SpanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;

.field final synthetic val$end:I

.field final synthetic val$span:Ljava/lang/Object;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack$1;->this$0:Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;

    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack$1;->val$span:Ljava/lang/Object;

    iput p3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack$1;->val$start:I

    iput p4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack$1;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applySpan(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;Landroid/text/SpannableStringBuilder;)V
    .locals 3

    .line 82
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack$1;->val$span:Ljava/lang/Object;

    iget v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack$1;->val$start:I

    iget v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack$1;->val$end:I

    const/16 v2, 0x21

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
