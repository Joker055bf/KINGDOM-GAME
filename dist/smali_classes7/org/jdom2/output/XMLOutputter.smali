.class public final Lorg/jdom2/output/XMLOutputter;
.super Ljava/lang/Object;
.source "XMLOutputter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;
    }
.end annotation


# static fields
.field private static final DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;


# instance fields
.field private myFormat:Lorg/jdom2/output/Format;

.field private myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 229
    new-instance v0, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;-><init>(Lorg/jdom2/output/XMLOutputter$1;)V

    sput-object v0, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    invoke-direct {p0, v0, v0}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;)V
    .locals 1

    const/4 v0, 0x0

    .line 308
    invoke-direct {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V
    .locals 1

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 242
    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    if-nez p1, :cond_0

    .line 269
    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    if-nez p2, :cond_1

    .line 270
    sget-object p2, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    :cond_1
    iput-object p2, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/XMLOutputter;)V
    .locals 1

    .line 291
    iget-object p1, p1, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/support/XMLOutputProcessor;)V
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-direct {p0, v0, p1}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    return-void
.end method

.method private static final makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 172
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getEncoding()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lorg/jdom2/output/XMLOutputter;->clone()Lorg/jdom2/output/XMLOutputter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/output/XMLOutputter;
    .locals 2

    .line 1077
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/output/XMLOutputter;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1083
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1045
    sget-object v0, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-virtual {v0, p1, v1}, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;->escapeAttributeEntities(Ljava/lang/String;Lorg/jdom2/output/Format;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1057
    sget-object v0, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-virtual {v0, p1, v1}, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;->escapeElementEntities(Ljava/lang/String;Lorg/jdom2/output/Format;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormat()Lorg/jdom2/output/Format;
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    return-object v0
.end method

.method public getXMLOutputProcessor()Lorg/jdom2/output/support/XMLOutputProcessor;
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    return-object v0
.end method

.method public final output(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V

    return-void
.end method

.method public final output(Ljava/util/List;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Ljava/util/List;)V

    .line 920
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final output(Lorg/jdom2/CDATA;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/CDATA;Ljava/io/Writer;)V

    return-void
.end method

.method public final output(Lorg/jdom2/CDATA;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 940
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)V

    .line 941
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final output(Lorg/jdom2/Comment;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Comment;Ljava/io/Writer;)V

    return-void
.end method

.method public final output(Lorg/jdom2/Comment;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V

    .line 984
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final output(Lorg/jdom2/DocType;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/DocType;Ljava/io/Writer;)V

    return-void
.end method

.method public final output(Lorg/jdom2/DocType;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/DocType;)V

    .line 846
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final output(Lorg/jdom2/Document;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Document;Ljava/io/Writer;)V

    return-void
.end method

.method public final output(Lorg/jdom2/Document;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)V

    .line 825
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final output(Lorg/jdom2/Element;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Element;Ljava/io/Writer;)V

    return-void
.end method

.method public final output(Lorg/jdom2/Element;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V

    .line 870
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom2/EntityRef;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/EntityRef;Ljava/io/Writer;)V

    return-void
.end method

.method public final output(Lorg/jdom2/EntityRef;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)V

    .line 1027
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final output(Lorg/jdom2/ProcessingInstruction;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/ProcessingInstruction;Ljava/io/Writer;)V

    return-void
.end method

.method public final output(Lorg/jdom2/ProcessingInstruction;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V

    .line 1006
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final output(Lorg/jdom2/Text;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Text;Ljava/io/Writer;)V

    return-void
.end method

.method public final output(Lorg/jdom2/Text;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)V

    .line 963
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final outputElementContent(Lorg/jdom2/Element;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/XMLOutputter;->outputElementContent(Lorg/jdom2/Element;Ljava/io/Writer;)V

    return-void
.end method

.method public final outputElementContent(Lorg/jdom2/Element;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-virtual {p1}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Ljava/util/List;)V

    .line 896
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final outputElementContentString(Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 1

    .line 790
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 792
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->outputElementContent(Lorg/jdom2/Element;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 654
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 656
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Lorg/jdom2/CDATA;)Ljava/lang/String;
    .locals 1

    .line 676
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 678
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/CDATA;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Lorg/jdom2/Comment;)Ljava/lang/String;
    .locals 1

    .line 720
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 722
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Comment;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Lorg/jdom2/DocType;)Ljava/lang/String;
    .locals 1

    .line 605
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 607
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/DocType;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Lorg/jdom2/Document;)Ljava/lang/String;
    .locals 1

    .line 583
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 585
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Document;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 1

    .line 627
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 629
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Element;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Lorg/jdom2/EntityRef;)Ljava/lang/String;
    .locals 1

    .line 764
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 766
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/EntityRef;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Lorg/jdom2/ProcessingInstruction;)Ljava/lang/String;
    .locals 1

    .line 742
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 744
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/ProcessingInstruction;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final outputString(Lorg/jdom2/Text;)Ljava/lang/String;
    .locals 1

    .line 698
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 700
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Text;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setFormat(Lorg/jdom2/output/Format;)V
    .locals 0

    .line 338
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    return-void
.end method

.method public setXMLOutputProcessor(Lorg/jdom2/output/support/XMLOutputProcessor;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XMLOutputter[omitDeclaration = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1096
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v1, v1, Lorg/jdom2/output/Format;->omitDeclaration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encoding = "

    .line 1097
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v1, v1, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", omitEncoding = "

    .line 1100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v1, v1, Lorg/jdom2/output/Format;->omitEncoding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", indent = \'"

    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v1, v1, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', expandEmptyElements = "

    .line 1106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v1, v1, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lineSeparator = \'"

    .line 1110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

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

    .line 1124
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

    .line 1115
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v4, "\\n"

    .line 1118
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v4, "\\t"

    .line 1121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "\', textMode = "

    .line 1128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, v2, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
