.class public Lorg/htmlcleaner/CleanerTransformations;
.super Ljava/lang/Object;
.source "CleanerTransformations.java"


# instance fields
.field private globalTransformations:Lorg/htmlcleaner/TagTransformation;

.field private mappings:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->mappings:Ljava/util/Map;

    .line 50
    new-instance v0, Lorg/htmlcleaner/TagTransformation;

    invoke-direct {v0}, Lorg/htmlcleaner/TagTransformation;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->globalTransformations:Lorg/htmlcleaner/TagTransformation;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->mappings:Ljava/util/Map;

    .line 50
    new-instance v0, Lorg/htmlcleaner/TagTransformation;

    invoke-direct {v0}, Lorg/htmlcleaner/TagTransformation;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->globalTransformations:Lorg/htmlcleaner/TagTransformation;

    .line 59
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CleanerTransformations;->updateTagTransformations(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public addGlobalTransformation(Lorg/htmlcleaner/AttributeTransformation;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->globalTransformations:Lorg/htmlcleaner/TagTransformation;

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/TagTransformation;->addAttributePatternTransformation(Lorg/htmlcleaner/AttributeTransformation;)V

    return-void
.end method

.method public addTransformation(Lorg/htmlcleaner/TagTransformation;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->mappings:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagTransformation;->getSourceTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->mappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 135
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CleanerTransformations;->hasTransformationForTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CleanerTransformations;->getTransformation(Ljava/lang/String;)Lorg/htmlcleaner/TagTransformation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lorg/htmlcleaner/TagTransformation;->getDestTag()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getTransformation(Ljava/lang/String;)Lorg/htmlcleaner/TagTransformation;
    .locals 1

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->mappings:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/TagTransformation;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hasTransformationForTag(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lorg/htmlcleaner/CleanerTransformations;->mappings:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public transformAttributes(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Lorg/htmlcleaner/CleanerTransformations;->getTransformation(Ljava/lang/String;)Lorg/htmlcleaner/TagTransformation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1, p2}, Lorg/htmlcleaner/TagTransformation;->applyTagTransformations(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 130
    :cond_0
    iget-object p1, p0, Lorg/htmlcleaner/CleanerTransformations;->globalTransformations:Lorg/htmlcleaner/TagTransformation;

    invoke-virtual {p1, p2}, Lorg/htmlcleaner/TagTransformation;->applyTagTransformations(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public updateTagTransformations(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x2e

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const-string v3, ",;"

    .line 92
    invoke-static {p2, v3}, Lorg/htmlcleaner/Utils;->tokenize(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 93
    array-length v3, p2

    if-lez v3, :cond_0

    .line 94
    aget-object v0, p2, v1

    .line 96
    :cond_0
    array-length v3, p2

    if-le v3, v2, :cond_3

    const-string v3, "true"

    .line 97
    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "yes"

    aget-object v4, p2, v2

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "1"

    aget-object p2, p2, v2

    .line 99
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    move v2, v1

    .line 102
    :cond_3
    new-instance p2, Lorg/htmlcleaner/TagTransformation;

    invoke-direct {p2, p1, v0, v2}, Lorg/htmlcleaner/TagTransformation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    invoke-virtual {p0, p2}, Lorg/htmlcleaner/CleanerTransformations;->addTransformation(Lorg/htmlcleaner/TagTransformation;)V

    goto :goto_0

    :cond_4
    const-string v0, "."

    .line 105
    invoke-static {p1, v0}, Lorg/htmlcleaner/Utils;->tokenize(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 106
    aget-object v0, p1, v1

    .line 107
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/CleanerTransformations;->getTransformation(Ljava/lang/String;)Lorg/htmlcleaner/TagTransformation;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 109
    aget-object p1, p1, v2

    invoke-virtual {v0, p1, p2}, Lorg/htmlcleaner/TagTransformation;->addAttributeTransformation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public updateTagTransformations(Ljava/util/Map;)V
    .locals 2

    .line 114
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 115
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    invoke-virtual {p0, v1, v0}, Lorg/htmlcleaner/CleanerTransformations;->updateTagTransformations(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
