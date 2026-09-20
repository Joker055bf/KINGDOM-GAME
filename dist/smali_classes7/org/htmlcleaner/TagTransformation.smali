.class public Lorg/htmlcleaner/TagTransformation;
.super Ljava/lang/Object;
.source "TagTransformation.java"


# static fields
.field public static VAR_END:Ljava/lang/String; = "}"

.field public static VAR_START:Ljava/lang/String; = "${"


# instance fields
.field private attributePatternTransformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/htmlcleaner/AttributeTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private attributeTransformations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private destTag:Ljava/lang/String;

.field private preserveSourceAttributes:Z

.field private sourceTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributeTransformations:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributePatternTransformations:Ljava/util/List;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lorg/htmlcleaner/TagTransformation;->preserveSourceAttributes:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/TagTransformation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lorg/htmlcleaner/TagTransformation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributeTransformations:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributePatternTransformations:Ljava/util/List;

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/TagTransformation;->sourceTag:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lorg/htmlcleaner/TagTransformation;->destTag:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p2}, Lorg/htmlcleaner/Utils;->isValidXmlIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lorg/htmlcleaner/TagTransformation;->destTag:Ljava/lang/String;

    .line 75
    :goto_0
    iput-boolean p3, p0, Lorg/htmlcleaner/TagTransformation;->preserveSourceAttributes:Z

    return-void
.end method


# virtual methods
.method public addAttributePatternTransformation(Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributePatternTransformations:Ljava/util/List;

    new-instance v1, Lorg/htmlcleaner/AttributeTransformationPatternImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lorg/htmlcleaner/AttributeTransformationPatternImpl;-><init>(Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAttributePatternTransformation(Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1

    .line 113
    new-instance v0, Lorg/htmlcleaner/AttributeTransformationPatternImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/htmlcleaner/AttributeTransformationPatternImpl;-><init>(Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/htmlcleaner/TagTransformation;->addAttributePatternTransformation(Lorg/htmlcleaner/AttributeTransformation;)V

    return-void
.end method

.method public addAttributePatternTransformation(Lorg/htmlcleaner/AttributeTransformation;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributePatternTransformations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributePatternTransformations:Ljava/util/List;

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributePatternTransformations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAttributeTransformation(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/TagTransformation;->addAttributeTransformation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addAttributeTransformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributeTransformations:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public applyTagTransformations(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 156
    invoke-virtual {p0}, Lorg/htmlcleaner/TagTransformation;->isPreserveSourceAttributes()Z

    move-result v0

    .line 157
    invoke-virtual {p0}, Lorg/htmlcleaner/TagTransformation;->hasAttributeTransformations()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 159
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_1
    if-eqz v1, :cond_8

    .line 161
    invoke-virtual {p0}, Lorg/htmlcleaner/TagTransformation;->getAttributeTransformations()Ljava/util/Map;

    move-result-object v1

    .line 162
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 166
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 168
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 170
    :cond_3
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/TagTransformation;->evaluateTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 175
    :cond_4
    iget-object v1, p0, Lorg/htmlcleaner/TagTransformation;->attributePatternTransformations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlcleaner/AttributeTransformation;

    .line 176
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 178
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Lorg/htmlcleaner/AttributeTransformation;->satisfy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 179
    invoke-interface {v2}, Lorg/htmlcleaner/AttributeTransformation;->getTemplate()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    .line 181
    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 183
    :cond_7
    invoke-virtual {p0, v4, p1}, Lorg/htmlcleaner/TagTransformation;->evaluateTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    return-object v0
.end method

.method public evaluateTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    sget-object v1, Lorg/htmlcleaner/TagTransformation;->VAR_START:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 215
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    sget-object v2, Lorg/htmlcleaner/TagTransformation;->VAR_END:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v1, :cond_3

    .line 219
    sget-object v3, Lorg/htmlcleaner/TagTransformation;->VAR_START:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz p2, :cond_1

    .line 220
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    .line 221
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :cond_3
    sget-object v3, Lorg/htmlcleaner/TagTransformation;->VAR_START:Ljava/lang/String;

    sget-object v4, Lorg/htmlcleaner/TagTransformation;->VAR_END:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 227
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getAttributeTransformations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributeTransformations:Ljava/util/Map;

    return-object v0
.end method

.method getDestTag()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->destTag:Ljava/lang/String;

    return-object v0
.end method

.method getSourceTag()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->sourceTag:Ljava/lang/String;

    return-object v0
.end method

.method hasAttributeTransformations()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributeTransformations:Ljava/util/Map;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/htmlcleaner/TagTransformation;->attributePatternTransformations:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isPreserveSourceAttributes()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lorg/htmlcleaner/TagTransformation;->preserveSourceAttributes:Z

    return v0
.end method
