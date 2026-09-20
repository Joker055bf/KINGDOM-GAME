.class public Lorg/jdom2/output/support/AbstractStAXStreamReaderProcessor;
.super Ljava/lang/Object;
.source "AbstractStAXStreamReaderProcessor.java"

# interfaces
.implements Lorg/jdom2/output/support/StAXStreamReaderProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/AbstractStAXStreamReaderProcessor$DefaultXMLStreamReader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildReader(Lorg/jdom2/Document;Lorg/jdom2/output/Format;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1

    .line 84
    new-instance v0, Lorg/jdom2/output/support/AbstractStAXStreamReaderProcessor$DefaultXMLStreamReader;

    invoke-direct {v0, p1, p2}, Lorg/jdom2/output/support/AbstractStAXStreamReaderProcessor$DefaultXMLStreamReader;-><init>(Lorg/jdom2/Document;Lorg/jdom2/output/Format;)V

    return-object v0
.end method
