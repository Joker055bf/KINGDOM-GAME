.class Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$ClassMatcher;
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
    name = "ClassMatcher"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private tagName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\\."

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 152
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 153
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$ClassMatcher;->tagName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 154
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$ClassMatcher;->className:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$1;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$ClassMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(Lorg/htmlcleaner/TagNode;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$ClassMatcher;->tagName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$ClassMatcher;->tagName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v1, "class"

    .line 170
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$ClassMatcher;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
