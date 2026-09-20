.class Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNameMatcher;
.super Ljava/lang/Object;
.source "CSSCompiler.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNodeMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagNameMatcher"
.end annotation


# instance fields
.field private tagName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNameMatcher;->tagName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$1;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNameMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(Lorg/htmlcleaner/TagNode;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$TagNameMatcher;->tagName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
