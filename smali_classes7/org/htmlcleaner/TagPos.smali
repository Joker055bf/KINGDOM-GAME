.class Lorg/htmlcleaner/TagPos;
.super Ljava/lang/Object;
.source "TagPos.java"


# instance fields
.field info:Lorg/htmlcleaner/TagInfo;

.field name:Ljava/lang/String;

.field position:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/CleanTimeValues;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lorg/htmlcleaner/TagPos;->position:I

    .line 15
    iput-object p2, p0, Lorg/htmlcleaner/TagPos;->name:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lorg/htmlcleaner/TagPos;->info:Lorg/htmlcleaner/TagInfo;

    return-void
.end method
