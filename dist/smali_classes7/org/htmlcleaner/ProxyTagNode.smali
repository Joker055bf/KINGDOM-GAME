.class Lorg/htmlcleaner/ProxyTagNode;
.super Lorg/htmlcleaner/TagNode;
.source "ProxyTagNode.java"


# instance fields
.field private bodyNode:Lorg/htmlcleaner/TagNode;

.field private comment:Lorg/htmlcleaner/CommentNode;

.field private token:Lorg/htmlcleaner/ContentNode;


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/CommentNode;Lorg/htmlcleaner/TagNode;)V
    .locals 1

    const-string v0, ""

    .line 25
    invoke-direct {p0, v0}, Lorg/htmlcleaner/TagNode;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lorg/htmlcleaner/ProxyTagNode;->comment:Lorg/htmlcleaner/CommentNode;

    .line 27
    iput-object p2, p0, Lorg/htmlcleaner/ProxyTagNode;->bodyNode:Lorg/htmlcleaner/TagNode;

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/ContentNode;Lorg/htmlcleaner/TagNode;)V
    .locals 1

    const-string v0, ""

    .line 19
    invoke-direct {p0, v0}, Lorg/htmlcleaner/TagNode;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lorg/htmlcleaner/ProxyTagNode;->token:Lorg/htmlcleaner/ContentNode;

    .line 21
    iput-object p2, p0, Lorg/htmlcleaner/ProxyTagNode;->bodyNode:Lorg/htmlcleaner/TagNode;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/htmlcleaner/ProxyTagNode;->token:Lorg/htmlcleaner/ContentNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/ProxyTagNode;->comment:Lorg/htmlcleaner/CommentNode;

    invoke-virtual {v0}, Lorg/htmlcleaner/CommentNode;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getParent()Lorg/htmlcleaner/TagNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken()Lorg/htmlcleaner/BaseToken;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/htmlcleaner/ProxyTagNode;->token:Lorg/htmlcleaner/ContentNode;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/ProxyTagNode;->comment:Lorg/htmlcleaner/CommentNode;

    :goto_0
    return-object v0
.end method

.method public removeFromTree()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/htmlcleaner/ProxyTagNode;->bodyNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {p0}, Lorg/htmlcleaner/ProxyTagNode;->getToken()Lorg/htmlcleaner/BaseToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagNode;->removeChild(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method
