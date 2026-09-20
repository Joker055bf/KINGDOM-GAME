.class Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$IdMatcher;
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
    name = "IdMatcher"
.end annotation


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$IdMatcher;->id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$1;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$IdMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(Lorg/htmlcleaner/TagNode;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "id"

    .line 202
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$IdMatcher;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
