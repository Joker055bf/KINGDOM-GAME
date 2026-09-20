.class public Lcom/chartboost/sdk/impl/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[B

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;[BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/d1;->a:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/d1;->b:[B

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/d1;->c:Ljava/lang/String;

    return-void
.end method
