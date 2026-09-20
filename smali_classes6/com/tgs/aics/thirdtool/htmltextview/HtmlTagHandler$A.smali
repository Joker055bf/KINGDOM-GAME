.class Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;
.super Ljava/lang/Object;
.source "HtmlTagHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "A"
.end annotation


# instance fields
.field private href:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;->text:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;->href:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;)Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$A;->href:Ljava/lang/String;

    return-object p0
.end method
