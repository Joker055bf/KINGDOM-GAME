.class Lorg/htmlcleaner/CleanTimeValues;
.super Ljava/lang/Object;
.source "CleanTimeValues.java"


# instance fields
.field _bodyOpened:Z

.field _headOpened:Z

.field _headTags:Ljava/util/Set;

.field allTags:Ljava/util/Set;

.field allowTagSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/htmlcleaner/conditional/ITagNodeCondition;",
            ">;"
        }
    .end annotation
.end field

.field bodyNode:Lorg/htmlcleaner/TagNode;

.field headNode:Lorg/htmlcleaner/TagNode;

.field htmlNode:Lorg/htmlcleaner/TagNode;

.field transient namespace:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field transient namespaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field transient nestingStates:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/htmlcleaner/NestingState;",
            ">;"
        }
    .end annotation
.end field

.field pruneNodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/htmlcleaner/TagNode;",
            ">;"
        }
    .end annotation
.end field

.field pruneTagSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/htmlcleaner/conditional/ITagNodeCondition;",
            ">;"
        }
    .end annotation
.end field

.field rootNode:Lorg/htmlcleaner/TagNode;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanTimeValues;->_headOpened:Z

    .line 51
    iput-boolean v0, p0, Lorg/htmlcleaner/CleanTimeValues;->_bodyOpened:Z

    .line 52
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanTimeValues;->_headTags:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanTimeValues;->allTags:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanTimeValues;->nestingStates:Ljava/util/Stack;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanTimeValues;->pruneTagSet:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanTimeValues;->pruneNodeSet:Ljava/util/Set;

    .line 73
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/CleanTimeValues;->namespaceMap:Ljava/util/HashMap;

    return-void
.end method
