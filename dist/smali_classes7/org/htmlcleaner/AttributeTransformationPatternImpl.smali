.class public Lorg/htmlcleaner/AttributeTransformationPatternImpl;
.super Ljava/lang/Object;
.source "AttributeTransformationPatternImpl.java"

# interfaces
.implements Lorg/htmlcleaner/AttributeTransformation;


# instance fields
.field private final attNamePattern:Ljava/util/regex/Pattern;

.field private final attValuePattern:Ljava/util/regex/Pattern;

.field private final template:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/htmlcleaner/AttributeTransformationPatternImpl;->attNamePattern:Ljava/util/regex/Pattern;

    if-nez p2, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/htmlcleaner/AttributeTransformationPatternImpl;->attValuePattern:Ljava/util/regex/Pattern;

    .line 55
    iput-object p3, p0, Lorg/htmlcleaner/AttributeTransformationPatternImpl;->template:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/htmlcleaner/AttributeTransformationPatternImpl;->attNamePattern:Ljava/util/regex/Pattern;

    .line 49
    iput-object p2, p0, Lorg/htmlcleaner/AttributeTransformationPatternImpl;->attValuePattern:Ljava/util/regex/Pattern;

    .line 50
    iput-object p3, p0, Lorg/htmlcleaner/AttributeTransformationPatternImpl;->template:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTemplate()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/htmlcleaner/AttributeTransformationPatternImpl;->template:Ljava/lang/String;

    return-object v0
.end method

.method public satisfy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/htmlcleaner/AttributeTransformationPatternImpl;->attNamePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/htmlcleaner/AttributeTransformationPatternImpl;->attValuePattern:Ljava/util/regex/Pattern;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
