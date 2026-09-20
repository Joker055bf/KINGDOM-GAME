.class public Lorg/htmlcleaner/conditional/TagNodeAttNameValueRegexCondition;
.super Ljava/lang/Object;
.source "TagNodeAttNameValueRegexCondition.java"

# interfaces
.implements Lorg/htmlcleaner/conditional/ITagNodeCondition;


# instance fields
.field private attNameRegex:Ljava/util/regex/Pattern;

.field private attValueRegex:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/htmlcleaner/conditional/TagNodeAttNameValueRegexCondition;->attNameRegex:Ljava/util/regex/Pattern;

    .line 17
    iput-object p2, p0, Lorg/htmlcleaner/conditional/TagNodeAttNameValueRegexCondition;->attValueRegex:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public satisfy(Lorg/htmlcleaner/TagNode;)Z
    .locals 3

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    iget-object v1, p0, Lorg/htmlcleaner/conditional/TagNodeAttNameValueRegexCondition;->attNameRegex:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    iget-object v1, p0, Lorg/htmlcleaner/conditional/TagNodeAttNameValueRegexCondition;->attValueRegex:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
