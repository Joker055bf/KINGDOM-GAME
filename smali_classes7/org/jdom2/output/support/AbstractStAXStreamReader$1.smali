.class Lorg/jdom2/output/support/AbstractStAXStreamReader$1;
.super Ljava/lang/Object;
.source "AbstractStAXStreamReader.java"

# interfaces
.implements Ljavax/xml/stream/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jdom2/output/support/AbstractStAXStreamReader;->getLocation()Ljavax/xml/stream/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jdom2/output/support/AbstractStAXStreamReader;


# direct methods
.method constructor <init>(Lorg/jdom2/output/support/AbstractStAXStreamReader;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader$1;->this$0:Lorg/jdom2/output/support/AbstractStAXStreamReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
