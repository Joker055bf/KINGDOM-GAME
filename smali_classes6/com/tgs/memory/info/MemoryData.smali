.class public Lcom/tgs/memory/info/MemoryData;
.super Ljava/lang/Object;
.source "MemoryData.java"


# instance fields
.field public availableMemory:J

.field public totalMemory:J

.field public usedMemory:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/tgs/memory/info/MemoryData;->totalMemory:J

    .line 10
    iput-wide p3, p0, Lcom/tgs/memory/info/MemoryData;->availableMemory:J

    .line 11
    iput-wide p5, p0, Lcom/tgs/memory/info/MemoryData;->usedMemory:J

    return-void
.end method
