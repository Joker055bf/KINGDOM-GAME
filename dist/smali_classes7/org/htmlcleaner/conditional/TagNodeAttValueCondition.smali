.class public Lorg/htmlcleaner/conditional/TagNodeAttValueCondition;
.super Ljava/lang/Object;
.source "TagNodeAttValueCondition.java"

# interfaces
.implements Lorg/htmlcleaner/conditional/ITagNodeCondition;


# instance fields
.field private attName:Ljava/lang/String;

.field private attValue:Ljava/lang/String;

.field private isCaseSensitive:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/htmlcleaner/conditional/TagNodeAttValueCondition;->attName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lorg/htmlcleaner/conditional/TagNodeAttValueCondition;->attValue:Ljava/lang/String;

    .line 16
    iput-boolean p3, p0, Lorg/htmlcleaner/conditional/TagNodeAttValueCondition;->isCaseSensitive:Z

    return-void
.end method


# virtual methods
.method public satisfy(Lorg/htmlcleaner/TagNode;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 20
    iget-object v0, p0, Lorg/htmlcleaner/conditional/TagNodeAttValueCondition;->attName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/htmlcleaner/conditional/TagNodeAttValueCondition;->attValue:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    iget-boolean v2, p0, Lorg/htmlcleaner/conditional/TagNodeAttValueCondition;->isCaseSensitive:Z

    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
