.class public Lorg/htmlcleaner/SpecialEntity;
.super Ljava/lang/Object;
.source "SpecialEntity.java"


# instance fields
.field private final escapedXmlString:Ljava/lang/String;

.field private htmlSpecialEntity:Z

.field private final htmlString:Ljava/lang/String;

.field private final intCode:I

.field private final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/htmlcleaner/SpecialEntity;->key:Ljava/lang/String;

    .line 58
    iput p2, p0, Lorg/htmlcleaner/SpecialEntity;->intCode:I

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 61
    iput-object p3, p0, Lorg/htmlcleaner/SpecialEntity;->htmlString:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_0
    iput-object p1, p0, Lorg/htmlcleaner/SpecialEntity;->htmlString:Ljava/lang/String;

    :goto_0
    if-eqz p4, :cond_1

    int-to-char p1, p2

    .line 66
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/htmlcleaner/SpecialEntity;->escapedXmlString:Ljava/lang/String;

    goto :goto_1

    .line 68
    :cond_1
    iput-object p1, p0, Lorg/htmlcleaner/SpecialEntity;->escapedXmlString:Ljava/lang/String;

    .line 70
    :goto_1
    iput-boolean p4, p0, Lorg/htmlcleaner/SpecialEntity;->htmlSpecialEntity:Z

    return-void
.end method


# virtual methods
.method public charValue()C
    .locals 1

    .line 113
    invoke-virtual {p0}, Lorg/htmlcleaner/SpecialEntity;->intValue()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public getDecimalNCR()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/htmlcleaner/SpecialEntity;->intCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEscaped(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/htmlcleaner/SpecialEntity;->getHtmlString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/htmlcleaner/SpecialEntity;->getEscapedXmlString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getEscapedValue()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/htmlcleaner/SpecialEntity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEscapedXmlString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/htmlcleaner/SpecialEntity;->escapedXmlString:Ljava/lang/String;

    return-object v0
.end method

.method public getHexNCR()Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&#x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/htmlcleaner/SpecialEntity;->intCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/htmlcleaner/SpecialEntity;->htmlString:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/htmlcleaner/SpecialEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public intValue()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/htmlcleaner/SpecialEntity;->intCode:I

    return v0
.end method

.method public isHtmlSpecialEntity()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lorg/htmlcleaner/SpecialEntity;->htmlSpecialEntity:Z

    return v0
.end method
