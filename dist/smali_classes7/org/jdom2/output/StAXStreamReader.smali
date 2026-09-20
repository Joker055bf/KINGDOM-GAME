.class public final Lorg/jdom2/output/StAXStreamReader;
.super Ljava/lang/Object;
.source "StAXStreamReader.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/StAXStreamReader$DefaultStAXAsStreamProcessor;
    }
.end annotation


# static fields
.field private static final DEFAULTPROCESSOR:Lorg/jdom2/output/StAXStreamReader$DefaultStAXAsStreamProcessor;


# instance fields
.field private myFormat:Lorg/jdom2/output/Format;

.field private myProcessor:Lorg/jdom2/output/support/StAXStreamReaderProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 120
    new-instance v0, Lorg/jdom2/output/StAXStreamReader$DefaultStAXAsStreamProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/output/StAXStreamReader$DefaultStAXAsStreamProcessor;-><init>(Lorg/jdom2/output/StAXStreamReader$1;)V

    sput-object v0, Lorg/jdom2/output/StAXStreamReader;->DEFAULTPROCESSOR:Lorg/jdom2/output/StAXStreamReader$DefaultStAXAsStreamProcessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, v0, v0}, Lorg/jdom2/output/StAXStreamReader;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXStreamReaderProcessor;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;)V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, v0}, Lorg/jdom2/output/StAXStreamReader;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXStreamReaderProcessor;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXStreamReaderProcessor;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    .line 133
    iput-object v0, p0, Lorg/jdom2/output/StAXStreamReader;->myProcessor:Lorg/jdom2/output/support/StAXStreamReaderProcessor;

    if-nez p1, :cond_0

    .line 160
    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    if-nez p2, :cond_1

    .line 161
    sget-object p2, Lorg/jdom2/output/StAXStreamReader;->DEFAULTPROCESSOR:Lorg/jdom2/output/StAXStreamReader$DefaultStAXAsStreamProcessor;

    :cond_1
    iput-object p2, p0, Lorg/jdom2/output/StAXStreamReader;->myProcessor:Lorg/jdom2/output/support/StAXStreamReaderProcessor;

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/StAXStreamReader;)V
    .locals 1

    .line 182
    iget-object p1, p1, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/output/StAXStreamReader;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXStreamReaderProcessor;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/support/StAXStreamReaderProcessor;)V
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, v0, p1}, Lorg/jdom2/output/StAXStreamReader;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXStreamReaderProcessor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/jdom2/output/StAXStreamReader;->clone()Lorg/jdom2/output/StAXStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/output/StAXStreamReader;
    .locals 3

    .line 302
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/output/StAXStreamReader;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected CloneNotSupportedException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFormat()Lorg/jdom2/output/Format;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    return-object v0
.end method

.method public getStAXAsStreamProcessor()Lorg/jdom2/output/support/StAXStreamReaderProcessor;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamReader;->myProcessor:Lorg/jdom2/output/support/StAXStreamReaderProcessor;

    return-object v0
.end method

.method public final output(Lorg/jdom2/Document;)Ljavax/xml/stream/XMLStreamReader;
    .locals 2

    .line 282
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamReader;->myProcessor:Lorg/jdom2/output/support/StAXStreamReaderProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    invoke-virtual {v1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/jdom2/output/support/StAXStreamReaderProcessor;->buildReader(Lorg/jdom2/Document;Lorg/jdom2/output/Format;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    return-object p1
.end method

.method public setFormat(Lorg/jdom2/output/Format;)V
    .locals 0

    .line 229
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    return-void
.end method

.method public setStAXAsStreamProcessor(Lorg/jdom2/output/support/StAXStreamReaderProcessor;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lorg/jdom2/output/StAXStreamReader;->myProcessor:Lorg/jdom2/output/support/StAXStreamReaderProcessor;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StAXStreamReader[omitDeclaration = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v1, v1, Lorg/jdom2/output/Format;->omitDeclaration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encoding = "

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v1, p0, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    iget-object v1, v1, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", omitEncoding = "

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v1, p0, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v1, v1, Lorg/jdom2/output/Format;->omitEncoding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", indent = \'"

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v1, p0, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    iget-object v1, v1, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', expandEmptyElements = "

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object v1, p0, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v1, v1, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lineSeparator = \'"

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v1, p0, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    iget-object v1, v1, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, "]"

    if-ge v3, v2, :cond_3

    aget-char v5, v1, v3

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    const/16 v6, 0xd

    if-eq v5, v6, :cond_0

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v4, "\\r"

    .line 340
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v4, "\\n"

    .line 343
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v4, "\\t"

    .line 346
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "\', textMode = "

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jdom2/output/StAXStreamReader;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, v2, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
