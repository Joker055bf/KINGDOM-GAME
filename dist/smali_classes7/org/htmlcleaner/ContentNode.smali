.class public Lorg/htmlcleaner/ContentNode;
.super Lorg/htmlcleaner/BaseHtmlNode;
.source "ContentNode.java"

# interfaces
.implements Lorg/htmlcleaner/HtmlNode;


# instance fields
.field protected final blank:Z

.field protected final content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/htmlcleaner/BaseHtmlNode;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/htmlcleaner/ContentNode;->content:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/htmlcleaner/ContentNode;->blank:Z

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/htmlcleaner/ContentNode;->content:Ljava/lang/String;

    return-object v0
.end method

.method public isBlank()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lorg/htmlcleaner/ContentNode;->blank:Z

    return v0
.end method

.method public serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/htmlcleaner/ContentNode;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
