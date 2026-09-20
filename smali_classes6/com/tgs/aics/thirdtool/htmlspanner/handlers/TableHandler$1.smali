.class Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$1;
.super Ljava/lang/Object;
.source "TableHandler.java"

# interfaces
.implements Landroid/text/style/AlignmentSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;


# direct methods
.method constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler$1;->this$0:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/TableHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 215
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method
