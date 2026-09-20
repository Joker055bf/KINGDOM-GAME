.class public interface abstract Lorg/htmlcleaner/BaseToken;
.super Ljava/lang/Object;
.source "BaseToken.java"


# virtual methods
.method public abstract getCol()I
.end method

.method public abstract getRow()I
.end method

.method public abstract serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setCol(I)V
.end method

.method public abstract setRow(I)V
.end method
