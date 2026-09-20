.class public Lcom/tgs/aics/utils/InputStreamUtils$OomException;
.super Ljava/io/IOException;
.source "InputStreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/utils/InputStreamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OomException"
.end annotation


# instance fields
.field public final bytesRead:J


# direct methods
.method public constructor <init>(JLjava/lang/OutOfMemoryError;)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OOM reading stream, bytesRead="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    iput-wide p1, p0, Lcom/tgs/aics/utils/InputStreamUtils$OomException;->bytesRead:J

    return-void
.end method
