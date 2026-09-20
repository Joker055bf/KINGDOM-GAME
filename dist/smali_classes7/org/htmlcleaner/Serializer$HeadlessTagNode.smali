.class Lorg/htmlcleaner/Serializer$HeadlessTagNode;
.super Lorg/htmlcleaner/TagNode;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlcleaner/Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadlessTagNode"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/htmlcleaner/Serializer;


# direct methods
.method private constructor <init>(Lorg/htmlcleaner/Serializer;Lorg/htmlcleaner/TagNode;)V
    .locals 1

    .line 53
    iput-object p1, p0, Lorg/htmlcleaner/Serializer$HeadlessTagNode;->this$0:Lorg/htmlcleaner/Serializer;

    const-string p1, ""

    .line 54
    invoke-direct {p0, p1}, Lorg/htmlcleaner/TagNode;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lorg/htmlcleaner/Serializer$HeadlessTagNode;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 56
    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/htmlcleaner/Serializer$HeadlessTagNode;->addChildren(Ljava/util/List;)V

    .line 57
    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/htmlcleaner/Serializer$HeadlessTagNode;->setDocType(Lorg/htmlcleaner/DoctypeToken;)V

    .line 58
    invoke-virtual {p0}, Lorg/htmlcleaner/Serializer$HeadlessTagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getNamespaceDeclarations()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 62
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/htmlcleaner/Serializer;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/Serializer$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/htmlcleaner/Serializer$HeadlessTagNode;-><init>(Lorg/htmlcleaner/Serializer;Lorg/htmlcleaner/TagNode;)V

    return-void
.end method
