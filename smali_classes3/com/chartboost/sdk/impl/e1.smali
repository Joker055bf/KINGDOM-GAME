.class public Lcom/chartboost/sdk/impl/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/chartboost/sdk/internal/Model/CBError;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/chartboost/sdk/internal/Model/CBError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/chartboost/sdk/internal/Model/CBError;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e1;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/e1;->b:Lcom/chartboost/sdk/internal/Model/CBError;

    return-void
.end method

.method public static a(Lcom/chartboost/sdk/internal/Model/CBError;)Lcom/chartboost/sdk/impl/e1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/chartboost/sdk/internal/Model/CBError;",
            ")",
            "Lcom/chartboost/sdk/impl/e1<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/chartboost/sdk/impl/e1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/chartboost/sdk/impl/e1;-><init>(Ljava/lang/Object;Lcom/chartboost/sdk/internal/Model/CBError;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/e1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/chartboost/sdk/impl/e1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/e1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/e1;-><init>(Ljava/lang/Object;Lcom/chartboost/sdk/internal/Model/CBError;)V

    return-object v0
.end method
