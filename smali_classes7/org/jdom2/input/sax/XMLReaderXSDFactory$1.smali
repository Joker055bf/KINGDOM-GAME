.class final Lorg/jdom2/input/sax/XMLReaderXSDFactory$1;
.super Ljava/lang/Object;
.source "XMLReaderXSDFactory.java"

# interfaces
.implements Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/input/sax/XMLReaderXSDFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final schemafactl:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/xml/validation/SchemaFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/jdom2/input/sax/XMLReaderXSDFactory$1;->schemafactl:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public getSchemaFactory()Ljavax/xml/validation/SchemaFactory;
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/jdom2/input/sax/XMLReaderXSDFactory$1;->schemafactl:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/validation/SchemaFactory;

    if-nez v0, :cond_0

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    .line 103
    invoke-static {v0}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lorg/jdom2/input/sax/XMLReaderXSDFactory$1;->schemafactl:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
