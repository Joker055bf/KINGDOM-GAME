.class public final Lcom/chartboost/sdk/impl/z5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\n\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\u0006J\u0006\u0010\u000c\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/z5;",
        "",
        "Ljava/io/RandomAccessFile;",
        "accessFile",
        "",
        "expectedFileSize",
        "",
        "a",
        "",
        "isComingFromBackground",
        "c",
        "b",
        "d",
        "",
        "w",
        "h",
        "Lcom/chartboost/sdk/impl/x;",
        "mediaPlayer",
        "<init>",
        "(Lcom/chartboost/sdk/impl/x;)V",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/x;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/x;)V
    .locals 1

    const-string v0, "mediaPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/z5;->a:Lcom/chartboost/sdk/impl/x;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z5;->a:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/x;->m()V

    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z5;->a:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/impl/x;->b(II)V

    return-void
.end method

.method public final a(Ljava/io/RandomAccessFile;J)V
    .locals 1

    const-string v0, "accessFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z5;->a:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0, p1, p2, p3}, Lcom/chartboost/sdk/impl/x;->a(Ljava/io/RandomAccessFile;J)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z5;->a:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/x;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z5;->a:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/x;->d()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z5;->a:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/x;->e()V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z5;->a:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/x;->o()V

    return-void
.end method
