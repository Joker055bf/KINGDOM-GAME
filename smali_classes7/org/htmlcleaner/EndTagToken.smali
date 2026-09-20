.class public Lorg/htmlcleaner/EndTagToken;
.super Lorg/htmlcleaner/TagToken;
.source "EndTagToken.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/htmlcleaner/TagToken;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lorg/htmlcleaner/TagToken;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endtoken"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/htmlcleaner/TagToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
