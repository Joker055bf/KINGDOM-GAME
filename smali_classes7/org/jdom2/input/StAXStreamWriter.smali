.class public Lorg/jdom2/input/StAXStreamWriter;
.super Ljava/lang/Object;
.source "StAXStreamWriter.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamWriter;


# static fields
.field private static final DEFFAC:Lorg/jdom2/DefaultJDOMFactory;


# instance fields
.field private activeelement:Lorg/jdom2/Element;

.field private activetext:Lorg/jdom2/Text;

.field private boundstack:Lorg/jdom2/util/NamespaceStack;

.field private document:Lorg/jdom2/Document;

.field private done:Z

.field private final factory:Lorg/jdom2/JDOMFactory;

.field private genprefix:I

.field private globalcontext:Ljavax/xml/namespace/NamespaceContext;

.field private isempty:Z

.field private parent:Lorg/jdom2/Parent;

.field private pendingns:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field private final repairnamespace:Z

.field private usednsstack:Lorg/jdom2/util/NamespaceStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    sput-object v0, Lorg/jdom2/input/StAXStreamWriter;->DEFFAC:Lorg/jdom2/DefaultJDOMFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 124
    sget-object v0, Lorg/jdom2/input/StAXStreamWriter;->DEFFAC:Lorg/jdom2/DefaultJDOMFactory;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jdom2/input/StAXStreamWriter;-><init>(Lorg/jdom2/JDOMFactory;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom2/JDOMFactory;Z)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->globalcontext:Ljavax/xml/namespace/NamespaceContext;

    .line 98
    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    iput-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->usednsstack:Lorg/jdom2/util/NamespaceStack;

    .line 100
    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    iput-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    .line 103
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->pendingns:Ljava/util/LinkedList;

    .line 108
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    const/4 v1, 0x0

    .line 109
    iput-boolean v1, p0, Lorg/jdom2/input/StAXStreamWriter;->done:Z

    .line 110
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    .line 111
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    .line 112
    iput-boolean v1, p0, Lorg/jdom2/input/StAXStreamWriter;->isempty:Z

    .line 113
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activetext:Lorg/jdom2/Text;

    .line 115
    iput v1, p0, Lorg/jdom2/input/StAXStreamWriter;->genprefix:I

    .line 137
    iput-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->factory:Lorg/jdom2/JDOMFactory;

    .line 138
    iput-boolean p2, p0, Lorg/jdom2/input/StAXStreamWriter;->repairnamespace:Z

    .line 140
    iget-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    new-array p2, v1, [Lorg/jdom2/Namespace;

    invoke-virtual {p1, p2}, Lorg/jdom2/util/NamespaceStack;->push([Lorg/jdom2/Namespace;)V

    return-void
.end method

.method private final buildAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    instance-of v0, v0, Lorg/jdom2/Element;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    .line 704
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    if-eqz v0, :cond_0

    .line 708
    invoke-direct {p0, p1, p2, p5}, Lorg/jdom2/input/StAXStreamWriter;->resolveAttributeNamespace(Ljava/lang/String;Ljava/lang/String;Z)Lorg/jdom2/Namespace;

    move-result-object p1

    .line 710
    iget-object p2, p0, Lorg/jdom2/input/StAXStreamWriter;->factory:Lorg/jdom2/JDOMFactory;

    iget-object p5, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    invoke-interface {p2, p3, p4, p1}, Lorg/jdom2/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object p1

    invoke-interface {p2, p5, p1}, Lorg/jdom2/JDOMFactory;->setAttribute(Lorg/jdom2/Element;Lorg/jdom2/Attribute;)V

    return-void

    .line 705
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add Attributes to an Element after other content was added."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 702
    :cond_1
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "value is not allowed to be null"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 699
    :cond_2
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "localName is not allowed to be null"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 695
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot write attribute unless inside an Element."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final buildElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lorg/jdom2/input/StAXStreamWriter;->done:Z

    if-nez v1, :cond_3

    .line 553
    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    if-ne v1, v0, :cond_1

    invoke-virtual {v0}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "Document can have only one root Element."

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 559
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveElement()V

    .line 560
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveText()V

    .line 563
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/jdom2/Namespace;

    invoke-virtual {v0, v2}, Lorg/jdom2/util/NamespaceStack;->push([Lorg/jdom2/Namespace;)V

    .line 565
    invoke-direct {p0, p1, p3, p4}, Lorg/jdom2/input/StAXStreamWriter;->resolveElementNamespace(Ljava/lang/String;Ljava/lang/String;Z)Lorg/jdom2/Namespace;

    move-result-object p1

    .line 567
    iget-object p3, p0, Lorg/jdom2/input/StAXStreamWriter;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p3, p2, p1}, Lorg/jdom2/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    .line 569
    iget-object p2, p0, Lorg/jdom2/input/StAXStreamWriter;->factory:Lorg/jdom2/JDOMFactory;

    iget-object p3, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    invoke-interface {p2, p3, p1}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 570
    iput-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    if-eqz p5, :cond_2

    const/4 p1, 0x1

    .line 572
    iput-boolean p1, p0, Lorg/jdom2/input/StAXStreamWriter;->isempty:Z

    goto :goto_1

    .line 574
    :cond_2
    iput-boolean v1, p0, Lorg/jdom2/input/StAXStreamWriter;->isempty:Z

    .line 575
    iput-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    :goto_1
    return-void

    .line 549
    :cond_3
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "Cannot write new element when in current state."

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final flushActiveElement()V
    .locals 5

    .line 714
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    if-eqz v0, :cond_5

    .line 724
    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->usednsstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v1, v0}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 725
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->pendingns:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 726
    iget-object v4, p0, Lorg/jdom2/input/StAXStreamWriter;->usednsstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v4, v3}, Lorg/jdom2/util/NamespaceStack;->isInScope(Lorg/jdom2/Namespace;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 727
    iget-object v2, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    invoke-virtual {v2, v3}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    const/4 v2, 0x1

    goto :goto_0

    .line 731
    :cond_1
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->pendingns:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    .line 734
    iget-object v2, p0, Lorg/jdom2/input/StAXStreamWriter;->usednsstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v2}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 735
    iget-boolean v2, p0, Lorg/jdom2/input/StAXStreamWriter;->isempty:Z

    if-eqz v2, :cond_2

    .line 736
    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v1}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 737
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    return-void

    .line 741
    :cond_2
    iget-object v2, p0, Lorg/jdom2/input/StAXStreamWriter;->usednsstack:Lorg/jdom2/util/NamespaceStack;

    iget-object v3, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    invoke-virtual {v2, v3}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 743
    :cond_3
    iget-boolean v2, p0, Lorg/jdom2/input/StAXStreamWriter;->isempty:Z

    if-eqz v2, :cond_4

    .line 744
    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v1}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 745
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    return-void

    .line 748
    :cond_4
    iget-object v2, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    iget-object v3, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    invoke-virtual {v2, v3}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 749
    iget-object v2, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    new-array v1, v1, [Lorg/jdom2/Namespace;

    invoke-virtual {v2, v1}, Lorg/jdom2/util/NamespaceStack;->push([Lorg/jdom2/Namespace;)V

    .line 751
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    :cond_5
    return-void
.end method

.method private final flushActiveText()V
    .locals 1

    const/4 v0, 0x0

    .line 756
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activetext:Lorg/jdom2/Text;

    return-void
.end method

.method private generatePrefix()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 684
    iget v2, p0, Lorg/jdom2/input/StAXStreamWriter;->genprefix:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jdom2/input/StAXStreamWriter;->genprefix:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ns%03d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 685
    :goto_0
    iget-object v4, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v4, v1}, Lorg/jdom2/util/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v4

    if-eqz v4, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    .line 686
    iget v4, p0, Lorg/jdom2/input/StAXStreamWriter;->genprefix:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/jdom2/input/StAXStreamWriter;->genprefix:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private resolveAttributeNamespace(Ljava/lang/String;Ljava/lang/String;Z)Lorg/jdom2/Namespace;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 643
    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    .line 644
    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, ""

    if-eqz p3, :cond_4

    .line 647
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 649
    iget-object p3, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {p3, p1}, Lorg/jdom2/util/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p3

    if-eqz p3, :cond_3

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 656
    :cond_1
    iget-boolean v0, p0, Lorg/jdom2/input/StAXStreamWriter;->repairnamespace:Z

    if-eqz v0, :cond_2

    .line 657
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->generatePrefix()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p1

    .line 658
    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/jdom2/input/StAXStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 661
    :cond_2
    new-instance p2, Ljavax/xml/stream/XMLStreamException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Namespace prefix "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in this scope is bound to a different URI \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 662
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' (repairing not set for this XMLStreamWriter)."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-object v0

    .line 667
    :cond_4
    iget-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {p1, p2}, Lorg/jdom2/util/NamespaceStack;->getAllNamespacesForURI(Ljava/lang/String;)[Lorg/jdom2/Namespace;

    move-result-object p1

    .line 668
    array-length p3, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_6

    aget-object v2, p1, v0

    .line 669
    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return-object v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 676
    :cond_6
    iget-boolean p3, p0, Lorg/jdom2/input/StAXStreamWriter;->repairnamespace:Z

    if-nez p3, :cond_8

    array-length p1, p1

    if-lez p1, :cond_7

    goto :goto_2

    .line 679
    :cond_7
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Namespace URI "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is not bound in this attribute scope (repairing not set for this XMLStreamWriter)."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 677
    :cond_8
    :goto_2
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->generatePrefix()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p1

    return-object p1
.end method

.method private resolveElementNamespace(Ljava/lang/String;Ljava/lang/String;Z)Lorg/jdom2/Namespace;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v0, ""

    .line 582
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v1, v0}, Lorg/jdom2/util/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v1

    .line 584
    sget-object v2, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-eq v2, v1, :cond_1

    .line 598
    iget-boolean p1, p0, Lorg/jdom2/input/StAXStreamWriter;->repairnamespace:Z

    if-eqz p1, :cond_0

    .line 599
    sget-object p1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    return-object p1

    .line 601
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "This attempt to use the empty URI \"\" as an Element Namespace is illegal because the default Namespace is already bound to the URI \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\'. You must call setPrefix(\"\", \"\") prior to this call."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 608
    :cond_1
    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v1

    if-eqz p3, :cond_5

    .line 611
    iget-object p3, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {p3, p1}, Lorg/jdom2/util/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p3

    if-eqz p3, :cond_4

    if-ne p3, v1, :cond_2

    goto :goto_0

    .line 617
    :cond_2
    iget-boolean v0, p0, Lorg/jdom2/input/StAXStreamWriter;->repairnamespace:Z

    if-eqz v0, :cond_3

    .line 618
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->generatePrefix()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p1

    return-object p1

    .line 620
    :cond_3
    new-instance p2, Ljavax/xml/stream/XMLStreamException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Namespace prefix "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in this scope is bound to a different URI \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 621
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' (repairing not set for this XMLStreamWriter)."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    return-object v1

    .line 625
    :cond_5
    iget-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {p1, v0}, Lorg/jdom2/util/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 629
    :cond_6
    iget-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {p1, p2}, Lorg/jdom2/util/NamespaceStack;->getFirstNamespaceForURI(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 634
    :cond_7
    iget-boolean p1, p0, Lorg/jdom2/input/StAXStreamWriter;->repairnamespace:Z

    if-eqz p1, :cond_8

    .line 635
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->generatePrefix()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p1

    return-object p1

    .line 637
    :cond_8
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Namespace URI "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is not bound in this scope (repairing not set for this XMLStreamWriter)."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    .line 505
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    .line 506
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    .line 507
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activetext:Lorg/jdom2/Text;

    .line 508
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    .line 509
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->usednsstack:Lorg/jdom2/util/NamespaceStack;

    const/4 v0, 0x1

    .line 510
    iput-boolean v0, p0, Lorg/jdom2/input/StAXStreamWriter;->done:Z

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    return-void
.end method

.method public getDocument()Lorg/jdom2/Document;
    .locals 2

    .line 151
    iget-boolean v0, p0, Lorg/jdom2/input/StAXStreamWriter;->done:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-eqz v0, :cond_1

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Writer is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get Document until writer has ended the document"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 2

    .line 520
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Lorg/jdom2/util/JDOMNamespaceContext;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/jdom2/Namespace;

    invoke-direct {v0, v1}, Lorg/jdom2/util/JDOMNamespaceContext;-><init>([Lorg/jdom2/Namespace;)V

    return-object v0

    .line 523
    :cond_0
    new-instance v0, Lorg/jdom2/util/JDOMNamespaceContext;

    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v1}, Lorg/jdom2/util/NamespaceStack;->getScope()[Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/util/JDOMNamespaceContext;-><init>([Lorg/jdom2/Namespace;)V

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/jdom2/util/NamespaceStack;->getFirstNamespaceForURI(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 213
    :cond_1
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->globalcontext:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v0, :cond_2

    .line 214
    invoke-interface {v0, p1}, Ljavax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 528
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported yet."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v0, ""

    .line 263
    invoke-virtual {p0, v0, p1}, Lorg/jdom2/input/StAXStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iput-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->globalcontext:Ljavax/xml/namespace/NamespaceContext;

    return-void

    .line 199
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string v0, "Can only set the NamespaceContext at the Document start"

    invoke-direct {p1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const-string v0, "xmlns"

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/jdom2/input/StAXStreamWriter;->done:Z

    if-nez v0, :cond_4

    .line 242
    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p2

    .line 243
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v0, p2}, Lorg/jdom2/util/NamespaceStack;->isInScope(Lorg/jdom2/Namespace;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v1}, Lorg/jdom2/util/NamespaceStack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Namespace;

    .line 246
    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {p1}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 257
    iget-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {p1, v0}, Lorg/jdom2/util/NamespaceStack;->push(Ljava/lang/Iterable;)V

    :cond_3
    return-void

    .line 229
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempt to set prefix at an illegal stream state."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "prefix may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v1, ""

    const-string v2, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 382
    invoke-direct/range {v0 .. v5}, Lorg/jdom2/input/StAXStreamWriter;->buildAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v1, ""

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v2, p1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .line 389
    invoke-direct/range {v0 .. v5}, Lorg/jdom2/input/StAXStreamWriter;->buildAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-nez p2, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    .line 396
    invoke-direct/range {v1 .. v6}, Lorg/jdom2/input/StAXStreamWriter;->buildAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    instance-of v0, v0, Lorg/jdom2/Element;

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveElement()V

    .line 437
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveText()V

    .line 438
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    invoke-interface {v0, p1}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    return-void

    .line 434
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string v0, "Can only writeCDATA() inside an Element."

    invoke-direct {p1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/jdom2/input/StAXStreamWriter;->done:Z

    if-nez v0, :cond_3

    .line 456
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveElement()V

    if-nez p1, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    instance-of v0, v0, Lorg/jdom2/Element;

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activetext:Lorg/jdom2/Text;

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {v0, p1}, Lorg/jdom2/Text;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 464
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0, p1}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->activetext:Lorg/jdom2/Text;

    .line 465
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    invoke-interface {v0, v1, p1}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    :cond_2
    :goto_0
    return-void

    .line 454
    :cond_3
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string v0, "Unable to add Characters at this point in the stream."

    invoke-direct {p1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeCharacters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/jdom2/input/StAXStreamWriter;->writeCharacters(Ljava/lang/String;)V

    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/jdom2/input/StAXStreamWriter;->done:Z

    if-nez v0, :cond_0

    .line 404
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveElement()V

    .line 405
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveText()V

    .line 406
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    invoke-interface {v0, p1}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    return-void

    .line 402
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string v0, "Can only add a Comment to the Document or an Element."

    invoke-direct {p1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 269
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not supported yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v0, ""

    .line 353
    invoke-virtual {p0, v0, p1}, Lorg/jdom2/input/StAXStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v1, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    .line 320
    invoke-direct/range {v0 .. v5}, Lorg/jdom2/input/StAXStreamWriter;->buildElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 318
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string v0, "Cannot have a null localname"

    invoke-direct {p1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v1, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    .line 332
    invoke-direct/range {v0 .. v5}, Lorg/jdom2/input/StAXStreamWriter;->buildElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 330
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "Cannot have a null localname"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_1
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "Cannot have a null namespaceURI"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 347
    invoke-direct/range {v0 .. v5}, Lorg/jdom2/input/StAXStreamWriter;->buildElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 345
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "Cannot have a null namespaceURI"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_1
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "Cannot have a null localname"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 339
    :cond_2
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "Cannot have a null prefix"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeEndDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/jdom2/input/StAXStreamWriter;->done:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    instance-of v0, v0, Lorg/jdom2/Element;

    if-nez v0, :cond_0

    .line 498
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveElement()V

    const/4 v0, 0x1

    .line 499
    iput-boolean v0, p0, Lorg/jdom2/input/StAXStreamWriter;->done:Z

    return-void

    .line 495
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write end document before writing the end of root element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    instance-of v0, v0, Lorg/jdom2/Element;

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveElement()V

    .line 483
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveText()V

    .line 484
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->usednsstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v0}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 485
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v0}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 486
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v0}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 487
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->boundstack:Lorg/jdom2/util/NamespaceStack;

    invoke-virtual {v0}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 488
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    invoke-interface {v0}, Lorg/jdom2/Parent;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    return-void

    .line 480
    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Cannot end an Element unless you are in an Element."

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    instance-of v0, v0, Lorg/jdom2/Element;

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveElement()V

    .line 447
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveText()V

    .line 448
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    invoke-interface {v0, p1}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    return-void

    .line 444
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string v0, "Can only writeEntityRef() inside an Element."

    invoke-direct {p1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    const-string v0, "xmlns"

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->pendingns:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 370
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    invoke-virtual {p1}, Lorg/jdom2/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 371
    iget-object p1, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    invoke-static {v0, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->setNamespace(Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    .line 373
    :cond_2
    invoke-virtual {p0, v0, p2}, Lorg/jdom2/input/StAXStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 360
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can only write a Namespace after starting an Element and before adding content to that Element."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeProcessingInstruction(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/jdom2/input/StAXStreamWriter;->done:Z

    if-nez v0, :cond_0

    .line 415
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveElement()V

    .line 416
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveText()V

    .line 417
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    invoke-interface {v0, p1}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    return-void

    .line 413
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string v0, "Can only add a ProcessingInstruction to the Document or an Element."

    invoke-direct {p1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/jdom2/input/StAXStreamWriter;->done:Z

    if-nez v0, :cond_0

    .line 426
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveElement()V

    .line 427
    invoke-direct {p0}, Lorg/jdom2/input/StAXStreamWriter;->flushActiveText()V

    .line 428
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v1, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    invoke-interface {v0, p1, p2}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    return-void

    .line 424
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "Can only add a ProcessingInstruction to the Document or an Element."

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeStartDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0, v0}, Lorg/jdom2/input/StAXStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0, p1}, Lorg/jdom2/input/StAXStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 182
    iget-boolean p2, p0, Lorg/jdom2/input/StAXStreamWriter;->done:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    if-nez p2, :cond_1

    .line 187
    iget-object p2, p0, Lorg/jdom2/input/StAXStreamWriter;->factory:Lorg/jdom2/JDOMFactory;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/jdom2/JDOMFactory;->document(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object p2

    iput-object p2, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    .line 188
    iput-object p2, p0, Lorg/jdom2/input/StAXStreamWriter;->parent:Lorg/jdom2/Parent;

    if-eqz p1, :cond_0

    const-string p2, ""

    .line 189
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 190
    iget-object p2, p0, Lorg/jdom2/input/StAXStreamWriter;->document:Lorg/jdom2/Document;

    const-string v1, "ENCODING"

    invoke-virtual {p2, v1, p1}, Lorg/jdom2/Document;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    :cond_0
    iput-object v0, p0, Lorg/jdom2/input/StAXStreamWriter;->activeelement:Lorg/jdom2/Element;

    return-void

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot write start document twice."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/16 v0, 0x3a

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 276
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/jdom2/input/StAXStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 278
    invoke-virtual {p0, v0, p1}, Lorg/jdom2/input/StAXStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/16 v0, 0x3a

    .line 291
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 293
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/jdom2/input/StAXStreamWriter;->buildElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    const-string v1, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    .line 295
    invoke-direct/range {v0 .. v5}, Lorg/jdom2/input/StAXStreamWriter;->buildElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_0
    return-void

    .line 289
    :cond_1
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Cannot have a null localname"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_2
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Cannot have a null namespaceURI"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 311
    invoke-direct/range {v0 .. v5}, Lorg/jdom2/input/StAXStreamWriter;->buildElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 309
    :cond_0
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "Cannot have a null namespaceURI"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :cond_1
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "Cannot have a null localName"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_2
    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    const-string p2, "Cannot have a null prefix"

    invoke-direct {p1, p2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
