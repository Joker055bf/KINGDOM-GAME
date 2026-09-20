.class public abstract Lorg/htmlcleaner/BaseTokenImpl;
.super Ljava/lang/Object;
.source "BaseTokenImpl.java"

# interfaces
.implements Lorg/htmlcleaner/BaseToken;


# instance fields
.field private col:I

.field private row:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lorg/htmlcleaner/BaseTokenImpl;->row:I

    .line 20
    iput p2, p0, Lorg/htmlcleaner/BaseTokenImpl;->col:I

    return-void
.end method


# virtual methods
.method public getCol()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/htmlcleaner/BaseTokenImpl;->col:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 23
    iget v0, p0, Lorg/htmlcleaner/BaseTokenImpl;->row:I

    return v0
.end method

.method public setCol(I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/htmlcleaner/BaseTokenImpl;->col:I

    return-void
.end method

.method public setRow(I)V
    .locals 0

    .line 26
    iput p1, p0, Lorg/htmlcleaner/BaseTokenImpl;->row:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(line="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/htmlcleaner/BaseTokenImpl;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", col="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlcleaner/BaseTokenImpl;->getCol()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
