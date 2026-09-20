.class public Lorg/htmlcleaner/CData;
.super Lorg/htmlcleaner/ContentNode;
.source "CData.java"

# interfaces
.implements Lorg/htmlcleaner/HtmlNode;


# static fields
.field public static final BEGIN_CDATA:Ljava/lang/String; = "<![CDATA["

.field public static final END_CDATA:Ljava/lang/String; = "]]>"

.field public static final SAFE_BEGIN_CDATA:Ljava/lang/String; = "/*<![CDATA[*/"

.field public static final SAFE_BEGIN_CDATA_ALT:Ljava/lang/String; = "//<![CDATA["

.field public static final SAFE_END_CDATA:Ljava/lang/String; = "/*]]>*/"

.field public static final SAFE_END_CDATA_ALT:Ljava/lang/String; = "//]]>"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/htmlcleaner/ContentNode;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/htmlcleaner/CData;->getContentWithoutStartAndEndTokens()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentWithStartAndEndTokens()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/*<![CDATA[*/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/htmlcleaner/CData;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/*]]>*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentWithoutStartAndEndTokens()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/htmlcleaner/CData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/htmlcleaner/CData;->getContentWithStartAndEndTokens()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
