.class public abstract Lorg/jdom2/output/support/AbstractStAXStreamReader;
.super Lorg/jdom2/output/support/AbstractOutputProcessor;
.source "AbstractStAXStreamReader.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/AbstractStAXStreamReader$DocumentWalker;
    }
.end annotation


# instance fields
.field private cdata:Ljava/lang/String;

.field private clocalname:Ljava/lang/String;

.field private cprefix:Ljava/lang/String;

.field private ctarget:Ljava/lang/String;

.field private ctext:Ljava/lang/String;

.field private curi:Ljava/lang/String;

.field private currentEvt:I

.field private depth:I

.field private document:Lorg/jdom2/Document;

.field private emtstack:[Lorg/jdom2/Element;

.field private final formatstack:Lorg/jdom2/output/support/FormatStack;

.field private final nsstack:Lorg/jdom2/util/NamespaceStack;

.field private stack:[Lorg/jdom2/output/support/Walker;


# direct methods
.method public constructor <init>(Lorg/jdom2/Document;)V
    .locals 1

    .line 180
    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;-><init>(Lorg/jdom2/Document;Lorg/jdom2/output/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Document;Lorg/jdom2/output/Format;)V
    .locals 2

    .line 168
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractOutputProcessor;-><init>()V

    .line 151
    new-instance v0, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->nsstack:Lorg/jdom2/util/NamespaceStack;

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->curi:Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->clocalname:Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->cprefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctext:Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctarget:Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->cdata:Ljava/lang/String;

    const/16 v0, 0x20

    new-array v1, v0, [Lorg/jdom2/Element;

    .line 157
    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    new-array v0, v0, [Lorg/jdom2/output/support/Walker;

    .line 158
    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->stack:[Lorg/jdom2/output/support/Walker;

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    const/4 v1, 0x7

    .line 161
    iput v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    .line 169
    iput-object p1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->document:Lorg/jdom2/Document;

    .line 170
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->formatstack:Lorg/jdom2/output/support/FormatStack;

    .line 171
    iget-object p2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->stack:[Lorg/jdom2/output/support/Walker;

    new-instance v1, Lorg/jdom2/output/support/AbstractStAXStreamReader$DocumentWalker;

    invoke-direct {v1, p1}, Lorg/jdom2/output/support/AbstractStAXStreamReader$DocumentWalker;-><init>(Lorg/jdom2/Document;)V

    aput-object v1, p2, v0

    return-void
.end method

.method private final getNamespaceByIndex(I)Lorg/jdom2/Namespace;
    .locals 4

    .line 615
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->nsstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v0}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 617
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 619
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom2/Namespace;

    return-object p1

    .line 621
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No Namespace with index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " (there are only "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 464
    iput v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    .line 465
    :goto_0
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 466
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->stack:[Lorg/jdom2/output/support/Walker;

    aput-object v1, v2, v0

    .line 467
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, -0x1

    .line 468
    iput v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    goto :goto_0

    .line 470
    :cond_0
    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->cdata:Ljava/lang/String;

    .line 471
    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->clocalname:Ljava/lang/String;

    .line 472
    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->cprefix:Ljava/lang/String;

    .line 473
    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctarget:Ljava/lang/String;

    .line 474
    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctext:Ljava/lang/String;

    .line 475
    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->curi:Ljava/lang/String;

    .line 476
    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->document:Lorg/jdom2/Document;

    return-void
.end method

.method public getAttributeCount()I
    .locals 3

    .line 512
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 515
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributesSize()I

    move-result v0

    return v0

    .line 513
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAttributeCount not supported for event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 2

    .line 549
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAttributeCount not supported for event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 553
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom2/Attribute;

    .line 554
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 4

    .line 520
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAttributeCount not supported for event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 524
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom2/Attribute;

    .line 526
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 527
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 529
    :cond_2
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 534
    :cond_4
    :goto_1
    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2

    .line 539
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAttributeCount not supported for event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 543
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom2/Attribute;

    .line 544
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2

    .line 559
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 560
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAttributeCount not supported for event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 563
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom2/Attribute;

    .line 564
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 2

    .line 569
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAttributeCount not supported for event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 573
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom2/Attribute;

    .line 574
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getAttributeType()Lorg/jdom2/AttributeType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jdom2/AttributeType;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2

    .line 579
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAttributeCount not supported for event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 583
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom2/Attribute;

    .line 584
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 487
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 491
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v1

    .line 492
    invoke-virtual {v0}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    .line 497
    invoke-static {p1}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 501
    :cond_1
    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Attribute;

    .line 502
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 503
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2

    .line 488
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getAttributeCount not supported for event "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 2

    .line 778
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->document:Lorg/jdom2/Document;

    const-string v1, "ENCODING_SCHEME"

    invoke-virtual {v0, v1}, Lorg/jdom2/Document;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 782
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 418
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->next()I

    move-result v0

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/16 v3, 0xc

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    const/16 v3, 0x9

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 432
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "element text content may not contain START_ELEMENT"

    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 434
    :cond_2
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected event type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 430
    :cond_3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "unexpected end of document when reading element text content"

    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 425
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->next()I

    move-result v0

    goto :goto_0

    .line 439
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 415
    :cond_7
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "parser must be on START_ELEMENT to read next text"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .line 721
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->document:Lorg/jdom2/Document;

    const-string v1, "ENCODING"

    invoke-virtual {v0, v1}, Lorg/jdom2/Document;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 725
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .line 287
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 3

    .line 353
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getLocalName not supported for event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->clocalname:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 1

    .line 730
    new-instance v0, Lorg/jdom2/output/support/AbstractStAXStreamReader$1;

    invoke-direct {v0, p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader$1;-><init>(Lorg/jdom2/output/support/AbstractStAXStreamReader;)V

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 4

    .line 339
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 344
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    add-int/2addr v2, v1

    aget-object v0, v0, v2

    .line 345
    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getName not supported for event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_1
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v1

    .line 342
    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 2

    .line 654
    new-instance v0, Lorg/jdom2/util/JDOMNamespaceContext;

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->nsstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v1}, Lorg/jdom2/util/NamespaceStack;->getScope()[Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/util/JDOMNamespaceContext;-><init>([Lorg/jdom2/Namespace;)V

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 3

    .line 599
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNamespaceCount not supported for event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->nsstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v0}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 604
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 606
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return v1
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2

    .line 630
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getNamespacePrefix not supported for event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 633
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getNamespaceByIndex(I)Lorg/jdom2/Namespace;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 3

    .line 370
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNamespaceURI not supported for event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->curi:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 2

    .line 642
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 649
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getNamespaceURI not supported for event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 646
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getNamespaceByIndex(I)Lorg/jdom2/Namespace;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->nsstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/jdom2/util/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPIData()Ljava/lang/String;
    .locals 3

    .line 402
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->cdata:Ljava/lang/String;

    return-object v0

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPIData not supported for event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 3

    .line 392
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 394
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctarget:Ljava/lang/String;

    return-object v0

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPITarget not supported for event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    .line 381
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPrefix not supported for event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->cprefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_8

    const-string v0, "javax.xml.stream.allocator"

    .line 790
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "javax.xml.stream.isCoalescing"

    .line 793
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 794
    iget-object p1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->formatstack:Lorg/jdom2/output/support/FormatStack;

    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object p1

    sget-object v0, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "javax.xml.stream.isNamespaceAware"

    .line 796
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 797
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    const-string v0, "javax.xml.stream.isReplacingEntityReferences"

    .line 799
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 800
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_4
    const-string v0, "javax.xml.stream.isSupportingExternalEntities"

    .line 802
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 803
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_5
    const-string v0, "javax.xml.stream.isValidating"

    .line 805
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 806
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_6
    const-string v0, "javax.xml.stream.reporter"

    .line 808
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v1

    :cond_7
    const-string v0, "javax.xml.stream.resolver"

    .line 811
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-object v1

    .line 788
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is not allowed to be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 673
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getText not valid for event type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctext:Ljava/lang/String;

    return-object v0
.end method

.method public getTextCharacters(I[CII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 693
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    .line 696
    array-length v2, v0

    if-le p1, v2, :cond_0

    return v1

    .line 699
    :cond_0
    array-length v2, p2

    if-le p3, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, p3, 0x1

    add-int/lit8 v3, p1, 0x1

    .line 703
    aget-char p1, v0, p1

    aput-char p1, p2, p3

    add-int/lit8 v1, v1, 0x1

    move p3, v2

    move p1, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getTextCharacters()[C
    .locals 1

    .line 688
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    .line 716
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getTextStart()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasName()Z
    .locals 3

    .line 365
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasText()Z
    .locals 2

    .line 659
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAttributeSpecified(I)Z
    .locals 2

    .line 589
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAttributeCount not supported for event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 593
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom2/Attribute;

    .line 594
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->isSpecified()Z

    move-result p1

    return p1
.end method

.method public isCharacters()Z
    .locals 2

    .line 302
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEndElement()Z
    .locals 2

    .line 297
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStandalone()Z
    .locals 2

    .line 767
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->document:Lorg/jdom2/Document;

    const-string v1, "STANDALONE"

    invoke-virtual {v0, v1}, Lorg/jdom2/Document;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 768
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStartElement()Z
    .locals 2

    .line 292
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWhiteSpace()Z
    .locals 2

    .line 307
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 312
    :cond_1
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctext:Ljava/lang/String;

    invoke-static {v0}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 190
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    if-ltz v0, :cond_8

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->curi:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->clocalname:Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->cprefix:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctext:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctarget:Ljava/lang/String;

    .line 199
    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->cdata:Ljava/lang/String;

    .line 201
    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 202
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->nsstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v1}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 203
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->formatstack:Lorg/jdom2/output/support/FormatStack;

    invoke-virtual {v1}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 204
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v4, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    add-int/2addr v4, v3

    aput-object v0, v1, v4

    .line 208
    :cond_0
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->stack:[Lorg/jdom2/output/support/Walker;

    iget v4, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v1, v1, v4

    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->stack:[Lorg/jdom2/output/support/Walker;

    iget v4, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aput-object v0, v1, v4

    sub-int/2addr v4, v3

    .line 213
    iput v4, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    if-gez v4, :cond_1

    const/16 v2, 0x8

    .line 214
    :cond_1
    iput v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    return v2

    .line 217
    :cond_2
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->stack:[Lorg/jdom2/output/support/Walker;

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0xc

    if-nez v0, :cond_4

    .line 220
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->stack:[Lorg/jdom2/output/support/Walker;

    iget v3, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctext:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->stack:[Lorg/jdom2/output/support/Walker;

    iget v3, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    iput v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    return v1

    .line 224
    :cond_4
    sget-object v4, Lorg/jdom2/output/support/AbstractStAXStreamReader$2;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 253
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected content "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :pswitch_0
    check-cast v0, Lorg/jdom2/Element;

    .line 257
    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->clocalname:Ljava/lang/String;

    .line 258
    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->cprefix:Ljava/lang/String;

    .line 259
    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->curi:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->nsstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v1, v0}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 262
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->formatstack:Lorg/jdom2/output/support/FormatStack;

    invoke-virtual {v1}, Lorg/jdom2/output/support/FormatStack;->push()V

    const-string v1, "space"

    .line 263
    sget-object v2, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v0, v1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    .line 265
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 266
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->formatstack:Lorg/jdom2/output/support/FormatStack;

    invoke-virtual {v1}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    goto :goto_0

    :cond_5
    const-string v2, "preserve"

    .line 268
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 269
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->formatstack:Lorg/jdom2/output/support/FormatStack;

    sget-object v2, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v1, v2}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 272
    :cond_6
    :goto_0
    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    .line 273
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->stack:[Lorg/jdom2/output/support/Walker;

    array-length v4, v2

    if-lt v1, v4, :cond_7

    add-int/lit8 v1, v1, 0x20

    .line 274
    invoke-static {v2, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jdom2/output/support/Walker;

    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->stack:[Lorg/jdom2/output/support/Walker;

    .line 275
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    add-int/lit8 v2, v2, 0x20

    invoke-static {v1, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jdom2/Element;

    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    .line 278
    :cond_7
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->emtstack:[Lorg/jdom2/Element;

    iget v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->depth:I

    aput-object v0, v1, v2

    .line 279
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->stack:[Lorg/jdom2/output/support/Walker;

    iget-object v4, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->formatstack:Lorg/jdom2/output/support/FormatStack;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v0, v5}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v0

    aput-object v0, v1, v2

    .line 281
    iput v3, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    return v3

    .line 244
    :pswitch_1
    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    .line 245
    invoke-virtual {v0}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctarget:Ljava/lang/String;

    .line 246
    invoke-virtual {v0}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->cdata:Ljava/lang/String;

    const/4 v0, 0x3

    .line 247
    iput v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    return v0

    .line 240
    :pswitch_2
    check-cast v0, Lorg/jdom2/EntityRef;

    invoke-virtual {v0}, Lorg/jdom2/EntityRef;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->clocalname:Ljava/lang/String;

    const-string v0, ""

    .line 241
    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctext:Ljava/lang/String;

    const/16 v0, 0x9

    .line 242
    iput v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    return v0

    .line 236
    :pswitch_3
    new-instance v1, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    .line 237
    check-cast v0, Lorg/jdom2/DocType;

    invoke-virtual {v1, v0}, Lorg/jdom2/output/XMLOutputter;->outputString(Lorg/jdom2/DocType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctext:Ljava/lang/String;

    const/16 v0, 0xb

    .line 238
    iput v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    return v0

    .line 232
    :pswitch_4
    invoke-virtual {v0}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctext:Ljava/lang/String;

    const/4 v0, 0x5

    .line 233
    iput v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    return v0

    .line 229
    :pswitch_5
    invoke-virtual {v0}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctext:Ljava/lang/String;

    .line 230
    iput v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    return v1

    .line 226
    :pswitch_6
    invoke-virtual {v0}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->ctext:Ljava/lang/String;

    .line 227
    iput v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->currentEvt:I

    return v2

    .line 191
    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more data available."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

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

.method public nextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->next()I

    move-result v0

    :goto_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 445
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->isWhiteSpace()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 446
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->isWhiteSpace()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 457
    :cond_3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected start or end tag"

    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_4
    :goto_1
    return v0

    .line 453
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->next()I

    move-result v0

    goto :goto_0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_4

    if-eqz p3, :cond_1

    .line 325
    iget-object p1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->clocalname:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "required name "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " but got name "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->clocalname:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 331
    iget-object p1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->curi:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 332
    :cond_2
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "required namespace "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " but got namespace "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader;->curi:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 321
    :cond_4
    new-instance p2, Ljavax/xml/stream/XMLStreamException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "required event "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " but got event "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXStreamReader;->getEventType()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public standaloneSet()Z
    .locals 2

    .line 773
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
