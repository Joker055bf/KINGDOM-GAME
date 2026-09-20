.class public abstract Lorg/jdom2/output/support/AbstractStAXStreamProcessor;
.super Lorg/jdom2/output/support/AbstractOutputProcessor;
.source "AbstractStAXStreamProcessor.java"

# interfaces
.implements Lorg/jdom2/output/support/StAXStreamProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractOutputProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected printAttribute(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 798
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->isSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 802
    :cond_0
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object p2

    .line 803
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne p2, v0, :cond_1

    .line 804
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_1
    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object p2

    .line 807
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object p3

    .line 806
    invoke-interface {p1, v0, p2, v1, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 521
    invoke-virtual {p3}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    return-void
.end method

.method protected printComment(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 486
    invoke-virtual {p3}, Lorg/jdom2/Comment;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    return-void
.end method

.method protected printContent(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 718
    :goto_0
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    if-nez v0, :cond_1

    .line 722
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    new-instance v0, Lorg/jdom2/CDATA;

    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    goto :goto_0

    .line 725
    :cond_0
    new-instance v0, Lorg/jdom2/Text;

    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_0

    .line 728
    :cond_1
    sget-object v1, Lorg/jdom2/output/support/AbstractStAXStreamProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 752
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected Content "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 739
    :pswitch_0
    check-cast v0, Lorg/jdom2/EntityRef;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printEntityRef(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V

    goto :goto_0

    .line 730
    :pswitch_1
    check-cast v0, Lorg/jdom2/CDATA;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    goto :goto_0

    .line 746
    :pswitch_2
    check-cast v0, Lorg/jdom2/Text;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_0

    .line 742
    :pswitch_3
    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printProcessingInstruction(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    goto :goto_0

    .line 736
    :pswitch_4
    check-cast v0, Lorg/jdom2/Element;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printElement(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    goto :goto_0

    .line 749
    :pswitch_5
    check-cast v0, Lorg/jdom2/DocType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printDocType(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    goto :goto_0

    .line 733
    :pswitch_6
    check-cast v0, Lorg/jdom2/Comment;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printComment(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    goto :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected printDocType(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 407
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    .line 415
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    const-string v4, "<!DOCTYPE "

    .line 417
    invoke-virtual {v3, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v4, "\""

    if-eqz v0, :cond_0

    const-string v5, " PUBLIC \""

    .line 420
    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v3, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v3, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const-string v0, " SYSTEM"

    .line 427
    invoke-virtual {v3, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    :cond_1
    const-string v0, " \""

    .line 429
    invoke-virtual {v3, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v3, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v3, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_3

    const-string v0, ""

    .line 433
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " ["

    .line 434
    invoke-virtual {v3, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string p2, "]"

    .line 437
    invoke-virtual {v3, p2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    :cond_3
    const-string p2, ">"

    .line 439
    invoke-virtual {v3, p2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    return-void
.end method

.method protected printDocument(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 305
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitDeclaration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    .line 308
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitEncoding()Z

    move-result v0

    const-string v1, "1.0"

    if-eqz v0, :cond_1

    .line 312
    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 328
    :cond_2
    :goto_0
    invoke-virtual {p4}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Lorg/jdom2/Document;->getContent()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 329
    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 331
    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v1

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_4

    .line 333
    invoke-virtual {p4, v3}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 336
    :cond_4
    invoke-virtual {p0, p2, v0, v2}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object p4

    .line 337
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 338
    :cond_5
    :goto_3
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 340
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    if-nez v0, :cond_6

    .line 345
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 346
    invoke-static {v0}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 347
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v1

    if-nez v1, :cond_5

    .line 351
    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_3

    .line 354
    :cond_6
    sget-object v1, Lorg/jdom2/output/support/AbstractStAXStreamProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    goto :goto_3

    .line 369
    :cond_7
    check-cast v0, Lorg/jdom2/Text;

    invoke-virtual {v0}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 370
    invoke-static {v0}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 374
    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_3

    .line 365
    :cond_8
    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printProcessingInstruction(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    goto :goto_3

    .line 362
    :cond_9
    check-cast v0, Lorg/jdom2/Element;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printElement(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    goto :goto_3

    .line 359
    :cond_a
    check-cast v0, Lorg/jdom2/DocType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printDocType(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    goto :goto_3

    .line 356
    :cond_b
    check-cast v0, Lorg/jdom2/Comment;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printComment(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    goto :goto_3

    .line 383
    :cond_c
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_d

    .line 384
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 388
    :cond_d
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    return-void
.end method

.method protected printElement(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v0, ""

    .line 558
    invoke-virtual {p3, p4}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 560
    :try_start_0
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Namespace;

    .line 561
    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :cond_1
    invoke-virtual {p4}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v1

    .line 570
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getTextMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v2

    .line 582
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_5

    const-string v3, "space"

    .line 585
    sget-object v6, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p4, v3, v6}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "default"

    .line 588
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 589
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v6, "preserve"

    .line 591
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 592
    sget-object v2, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    .line 595
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 597
    :try_start_1
    invoke-virtual {p2, v2}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 598
    invoke-virtual {p0, p2, v1, v4}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v1

    .line 599
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v1

    .line 604
    :goto_2
    :try_start_2
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    goto :goto_3

    :catchall_0
    move-exception p4

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    throw p4

    :cond_5
    :goto_3
    if-nez v5, :cond_6

    .line 612
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isExpandEmptyElements()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v4, 0x1

    .line 614
    :cond_7
    invoke-virtual {p4}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    if-eqz v4, :cond_d

    .line 616
    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 620
    invoke-virtual {p0, p1, p2, v3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printNamespace(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V

    goto :goto_4

    .line 624
    :cond_8
    invoke-virtual {p4}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 625
    invoke-virtual {p4}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_5
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Attribute;

    .line 626
    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printAttribute(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V

    goto :goto_5

    .line 633
    :cond_9
    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    if-eqz v5, :cond_c

    .line 638
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 640
    :try_start_3
    invoke-virtual {p2, v2}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 641
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result p4

    if-nez p4, :cond_a

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_a

    .line 643
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object p4

    .line 644
    new-instance v1, Lorg/jdom2/Text;

    invoke-direct {v1, p4}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    .line 647
    :cond_a
    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printContent(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 649
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result p4

    if-nez p4, :cond_b

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_b

    .line 651
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object p4

    .line 652
    new-instance v1, Lorg/jdom2/Text;

    invoke-direct {v1, p4}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 655
    :cond_b
    :try_start_4
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    goto :goto_6

    :catchall_1
    move-exception p4

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    throw p4

    .line 659
    :cond_c
    :goto_6
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    goto :goto_9

    .line 669
    :cond_d
    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Namespace;

    .line 673
    invoke-virtual {p0, p1, p2, v2}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printNamespace(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V

    goto :goto_7

    .line 677
    :cond_e
    invoke-virtual {p4}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_8
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Attribute;

    .line 678
    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printAttribute(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V

    goto :goto_8

    .line 681
    :cond_f
    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 685
    :goto_9
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/jdom2/Namespace;

    .line 686
    invoke-virtual {p4}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/jdom2/util/NamespaceStack;->getRebound(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p4

    if-eqz p4, :cond_10

    .line 688
    invoke-virtual {p4}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 689
    invoke-virtual {p4}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    goto :goto_a

    .line 691
    :cond_11
    invoke-virtual {p4}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, v1, p4}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 695
    :cond_12
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    return-void

    :catchall_2
    move-exception p2

    .line 685
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_13
    :goto_b
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Namespace;

    .line 686
    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/jdom2/util/NamespaceStack;->getRebound(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 688
    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 689
    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    goto :goto_b

    .line 691
    :cond_14
    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 695
    :cond_15
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    throw p2
.end method

.method protected printEntityRef(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 503
    invoke-virtual {p3}, Lorg/jdom2/EntityRef;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    return-void
.end method

.method protected printNamespace(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 777
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p2

    .line 778
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object p3

    .line 780
    invoke-interface {p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected printProcessingInstruction(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 463
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object p2

    .line 464
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 465
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 466
    invoke-interface {p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_0
    invoke-interface {p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 538
    invoke-virtual {p3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/stream/XMLStreamWriter;",
            "Lorg/jdom2/output/Format;",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 186
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    const/4 p2, 0x0

    .line 187
    invoke-virtual {p0, v0, p3, p2}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object p2

    .line 188
    new-instance p3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {p3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, p3, p2}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printContent(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 189
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 201
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 202
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    const/4 p2, 0x0

    .line 203
    invoke-virtual {p0, v0, p3, p2}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object p2

    .line 204
    invoke-interface {p2}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 205
    invoke-interface {p2}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object p3

    if-nez p3, :cond_0

    .line 207
    new-instance p3, Lorg/jdom2/CDATA;

    invoke-interface {p2}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p3}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object p2

    sget-object v1, Lorg/jdom2/Content$CType;->CDATA:Lorg/jdom2/Content$CType;

    if-ne p2, v1, :cond_1

    .line 209
    check-cast p3, Lorg/jdom2/CDATA;

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    .line 212
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 247
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printComment(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    .line 248
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/DocType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 156
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printDocType(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 157
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 143
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance p2, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {p2}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printDocument(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V

    .line 144
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 171
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance p2, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {p2}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printElement(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 173
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 276
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printEntityRef(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V

    .line 277
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 260
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    const/4 p2, 0x1

    .line 262
    invoke-virtual {v0, p2}, Lorg/jdom2/output/support/FormatStack;->setIgnoreTrAXEscapingPIs(Z)V

    .line 263
    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printProcessingInstruction(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    .line 264
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 224
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 225
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    const/4 p2, 0x0

    .line 226
    invoke-virtual {p0, v0, p3, p2}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object p2

    .line 227
    invoke-interface {p2}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 228
    invoke-interface {p2}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object p3

    if-nez p3, :cond_0

    .line 230
    new-instance p3, Lorg/jdom2/Text;

    invoke-interface {p2}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p3}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object p2

    sget-object v1, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    if-ne p2, v1, :cond_1

    .line 232
    check-cast p3, Lorg/jdom2/Text;

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    .line 235
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method
