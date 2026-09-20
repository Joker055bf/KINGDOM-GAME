.class Lorg/htmlcleaner/NestingState;
.super Ljava/lang/Object;
.source "NestingState.java"


# instance fields
.field private childBreaks:Lorg/htmlcleaner/ChildBreaks;

.field private openTags:Lorg/htmlcleaner/OpenTags;


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/OpenTags;Lorg/htmlcleaner/ChildBreaks;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/htmlcleaner/NestingState;->openTags:Lorg/htmlcleaner/OpenTags;

    .line 17
    iput-object p2, p0, Lorg/htmlcleaner/NestingState;->childBreaks:Lorg/htmlcleaner/ChildBreaks;

    return-void
.end method


# virtual methods
.method public getChildBreaks()Lorg/htmlcleaner/ChildBreaks;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/htmlcleaner/NestingState;->childBreaks:Lorg/htmlcleaner/ChildBreaks;

    return-object v0
.end method

.method public getOpenTags()Lorg/htmlcleaner/OpenTags;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/htmlcleaner/NestingState;->openTags:Lorg/htmlcleaner/OpenTags;

    return-object v0
.end method
