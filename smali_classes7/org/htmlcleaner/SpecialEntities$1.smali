.class final Lorg/htmlcleaner/SpecialEntities$1;
.super Lorg/htmlcleaner/SpecialEntities;
.source "SpecialEntities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlcleaner/SpecialEntities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/htmlcleaner/SpecialEntities;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public put(Lorg/htmlcleaner/SpecialEntity;)V
    .locals 1

    .line 55
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "cannot add to this instance"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
